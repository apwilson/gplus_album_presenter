import urllib2
import re
import json
from joblib import Parallel, delayed
import multiprocessing

# put newest album first
albums = [
    'https://photos.app.goo.gl/gUC1XnCXusBvgMMC7',
    'https://goo.gl/photos/mHWconethbgYw2qs9',
    'https://photos.app.goo.gl/FMxB9QATBTqng4eU8',
    'https://photos.app.goo.gl/N3zG7D2G7NDEkNjd9'
]


def processPhoto(photo, album_id, album_key):
    photo_id = photo[0]
    photo_url = photo[1][0]
    photo_width = photo[1][1]
    photo_height = photo[1][2]
    photo_description_url = 'https://photos.google.com/u/2/share/' + album_id + '/photo/' + photo_id + '?key=' + album_key
    photo_contents = urllib2.urlopen(photo_description_url).read()
    last = photo_contents.rfind('return ')
    photo_contents = photo_contents[:last]
    first = photo_contents.rfind('return ') + len('return ')
    last = photo_contents.rfind('}}')
    json_photo_contents = photo_contents[first:last]
    photo_parsed = json.loads(json_photo_contents)
    result = {'url': photo_url, 'width': photo_width, 'height': photo_height}
    photo_description = None
    if len(photo_parsed) > 10:
        photo_description = photo_parsed[10]
    if photo_description:
        result['description'] = photo_description
    print('.')
    return result


def withWidthAndHeight(url, width, height):
    return url + '=w' + str(1920) + '-h' + str(height)


num_cores = multiprocessing.cpu_count()

collected_results = []

for album in albums:
    contents = urllib2.urlopen(album).read()

    first = contents.rfind('return ') + len('return ')
    last = contents.rfind('}}')
    json_contents = contents[first:last]
    parsed = json.loads(json_contents)
    album_title = parsed[3][1]
    download_link = parsed[3][3]
    album_id = parsed[3][0]
    album_key = parsed[3][19]
    album_url = parsed[3][4][0]
    album_width = parsed[3][4][1]
    album_height = parsed[3][4][2]
    print(album_title)

    photos = parsed[1]
    photo_results = Parallel(n_jobs=4 * num_cores)(
        delayed(processPhoto)(photo, album_id, album_key) for photo in photos)
    album_results = {
        'photos': photo_results,
        'title': album_title,
        'url': album_url,
        'width': album_width,
        'height': album_height
    }
    collected_results.append(album_results)

print(json.dumps(collected_results, indent=4, sort_keys=True))

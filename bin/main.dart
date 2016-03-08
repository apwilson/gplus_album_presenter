/// Author: luthien256@gmail.com

import 'dart:convert';
import 'dart:html';
import 'package:animation/animation.dart';
import 'package:animation/effect.dart';

const String kGooglePlusUserId = "111992636055420475371";
const String kProfilePhotosAlbumId = "5986578878807970705";
const int kGalleryImageDivWidth = 202;

typedef void OnAlbumSelected(String albumId);

void main() {
  //document.onReadyStateChange.listen((_) {
  //if (document.readyState == "complete") {
  _loadGooglePlusAlbumList();
  //}
  //});
}

String createGooglePlusAlbumListUrl({String googlePlusUserId}) =>
    "https://picasaweb.google.com/data/feed/api/user/" +
    googlePlusUserId +
    "?alt=json";

String createGooglePlusPhotoListUrl(
        {String googlePlusUserId, String googlePlusAlbumId}) =>
    "https://picasaweb.google.com/data/feed/api/user/" +
    googlePlusUserId +
    "/albumid/" +
    googlePlusAlbumId +
    "?alt=json";

void _loadGooglePlusAlbumList() {
  HttpRequest
      .getString(
          createGooglePlusAlbumListUrl(googlePlusUserId: kGooglePlusUserId))
      .then((String response) => new AlbumEntryPoints(response).attach());
}

void _loadAlbumPhotos(String albumId, AlbumEntryPoints albumEntryPoints) {
  HttpRequest
      .getString(createGooglePlusPhotoListUrl(
          googlePlusUserId: kGooglePlusUserId, googlePlusAlbumId: albumId))
      .then((String response) =>
          new AlbumPhotos(response, () => albumEntryPoints.attach()).attach());
}

class AlbumEntryPoints {
  final _albumEntryPoints = new Element.div();

  AlbumEntryPoints(String json) {
    Map parsedJson = JSON.decode(json);

    _albumEntryPoints.children.add(new Header(title: "Albums").element);

    _albumEntryPoints.children.addAll(parsedJson['feed']['entry']
        .where((Map entry) =>
            (entry['gphoto\$id']['\$t'] != kProfilePhotosAlbumId))
        .map((Map entry) => new AlbumEntryPoint(
                src: entry['media\$group']['media\$thumbnail'][0]['url'],
                title: entry['title']['\$t'], listener: (_) {
              detach();
              // TODO: Load album photos in background then attach!
              _loadAlbumPhotos(entry['gphoto\$id']['\$t'], this);
            }).element)
        .toList());
  }

  Element get element => _albumEntryPoints;

  void attach() {
    querySelector('#gallery').children.add(_albumEntryPoints);
    fadeIn(_albumEntryPoints,
        duration: 175, easing: Easing.QUADRATIC_EASY_IN_OUT);
  }

  void detach() {
    fadeOut(_albumEntryPoints,
            duration: 175, easing: Easing.QUADRATIC_EASY_IN_OUT)
        .onComplete
        .listen((_) {
      querySelector('#gallery').children.remove(_albumEntryPoints);
    }); //, {duration: 500, Easing easing});
  }
}

class Header {
  final EventListener onBack;
  final String title;
  final String backText;
  final Element _header = new Element.div();
  final Element _title = new HeadingElement.h2();
  final Element _backButton = new HeadingElement.h3();

  Header({this.title, this.backText, this.onBack}) {
    _title.text = title;

    _backButton.text = backText;
    _backButton.style.cursor = 'pointer';
    _backButton.onClick.listen((_) => onBack?.call(_));

    _header.style.top = '0';
    _header.style.left = '0';
    _header.style.margin = '4px';
    _header.style.display = 'flex';
    _header.style.justifyContent = 'space-between';
    _header.children.add(_title);
    _header.children.add(_backButton);
  }

  Element get element => _header;

  void attach() {
    querySelector('#gallery').children.add(element);
    fadeIn(element, duration: 175, easing: Easing.QUADRATIC_EASY_IN_OUT);
  }

  void detach() {
    fadeOut(element, duration: 175, easing: Easing.QUADRATIC_EASY_IN_OUT)
        .onComplete
        .listen((_) {
      querySelector('#gallery').children.remove(element);
    });
  }
}

class AlbumPhotos {
  final Element _albumPhotos = new Element.div();
  final Function onDetached;

  AlbumPhotos(String json, this.onDetached) {
    Map parsedJson = JSON.decode(json);

    _albumPhotos.children.add(new Header(
        title: parsedJson['feed']['title']['\$t'],
        backText: "← Back to Albums", onBack: (_) {
      detach();
    }).element);

    _albumPhotos.children.addAll(parsedJson['feed']['entry']
        .map((Map entry) => new AlbumPhoto(
                src: entry['content']['src'], title: entry['summary']['\$t'])
            .element)
        .toList());
  }

  Element get element => _albumPhotos;

  void attach() {
    querySelector('#gallery').children.add(element);
    fadeIn(element, duration: 175, easing: Easing.QUADRATIC_EASY_IN_OUT);
  }

  void detach() {
    fadeOut(element, duration: 175, easing: Easing.QUADRATIC_EASY_IN_OUT)
        .onComplete
        .listen((_) {
      querySelector('#gallery').children.remove(element);
      onDetached();
    });
  }
}

class Photo {
  final Element _img = new Element.img();
  final Element _span = new Element.span();
  final Element _div = new Element.div();

  Photo({String src, String title, EventListener listener}) {
    int fileNameIndex = src.lastIndexOf("/");
    String srcPrefix = src.substring(0, fileNameIndex);
    String srcSuffix = src.substring(fileNameIndex + 1);
    String photoUrl = "$srcPrefix/s1280/$srcSuffix";
    String thumbnailUrl = "$srcPrefix/s$kGalleryImageDivWidth/$srcSuffix";

    _img.attributes['src'] = thumbnailUrl;
    _img.attributes['alt'] = title;
    _img.style.margin = '0px auto';
    _img.style.display = 'block';
    _img.style.cursor = 'pointer';
    _img.style.verticalAlign = 'middle';

    _span.text = title;
    _span.style.width = '202px';
    _span.style.cursor = 'pointer';
    _span.style.marginTop = '4px';
    _span.style.marginBottom = '4px';
    _span.style.display = 'block';
    _span.style.textAlign = 'center';
    _span.style.fontSize = '12px';

    _div.style.float = 'left';
    _div.style.margin = '4px';
    _div.style.height = '220px';
    _div.children.add(_img);
    _div.children.add(_span);
    _div.onClick.listen(listener ??
        (_) {
          new Overlay(photoUrl).attach();
        });
  }

  Element get element => _div;
}

class AlbumEntryPoint extends Photo {
  AlbumEntryPoint({String src, String title, EventListener listener})
      : super(src: src, title: title, listener: listener) {
    _img.style.width = '202px';
    _img.attributes['src'] = src;
  }
}

class AlbumPhoto extends Photo {
  AlbumPhoto({String src, String title}) : super(src: src, title: title) {
    _img.style.width = 'auto';
    _img.style.maxHeight = '152px';
  }
}

class Overlay {
  final Element _overlay = new Element.div();
  final Element _img = new Element.img();
  final Element _span = new Element.span();

  Overlay(String photoUrl) {
    _span.attributes['class'] = 'helper';
    _span.style.position = 'inline-block';
    _span.style.height = '100%';
    _span.style.verticalAlign = 'middle';

    _img.attributes['src'] = photoUrl;
    _img.style.opacity = '0.0';
    _img.style.zIndex = '11';
    _img.style.verticalAlign = 'middle';
    _img.style.maxWidth = '95%';
    _img.style.maxHeight = '95%';
    _img.style.margin = '2.5%';

    _overlay.style.opacity = '0.0';
    _overlay.style.backgroundColor = 'rgba(0,0,0,0.5)';
    _overlay.style.position = 'fixed';
    _overlay.style.top = '0';
    _overlay.style.left = '0';
    _overlay.style.width = '100%';
    _overlay.style.height = '100%';
    _overlay.style.zIndex = '10';
    _overlay.style.textAlign = 'center';
    _overlay.children.add(_span);
    _overlay.children.add(_img);

    _overlay.onClick.listen((_) {
      detach();
    });
  }

  void attach() {
    querySelector('body').children.add(_overlay);
    fadeIn(_overlay, duration: 350, easing: Easing.QUADRATIC_EASY_IN_OUT);
    fadeIn(_img, duration: 350, easing: Easing.QUADRATIC_EASY_IN_OUT);
  }

  void detach() {
    fadeOut(_img, duration: 350, easing: Easing.QUADRATIC_EASY_IN_OUT);
    fadeOut(_overlay, duration: 350, easing: Easing.QUADRATIC_EASY_IN_OUT)
        .onComplete
        .listen((_) {
      querySelector('body').children.remove(_overlay);
    });
  }
}

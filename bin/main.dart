/// Author: luthien256@gmail.com

import 'dart:convert' as convert;
import 'dart:html' as html;
import 'dart:math' as math;
import 'package:animation/animation.dart';
import 'package:animation/effect.dart';

const String kGooglePlusUserId = "111992636055420475371";
const String kProfilePhotosAlbumId = "5986578878807970705";
const int kGalleryImageDivWidth = 202;

typedef void OnAlbumSelected(String albumId);

void main() {
  //document.onReadyStateChange.listen((_) {
  //if (document.readyState == "complete") {
  AlbumEntryPoints.load(googlePlusUserId: kGooglePlusUserId);
  //}
  //});
}

class AlbumEntryPoints {
  static String createGooglePlusAlbumListUrl({String googlePlusUserId}) =>
      "https://picasaweb.google.com/data/feed/api/user/" +
      googlePlusUserId +
      "?alt=json";

  static load({googlePlusUserId}) {
    html.HttpRequest
        .getString(
            createGooglePlusAlbumListUrl(googlePlusUserId: googlePlusUserId))
        .then((String response) => new AlbumEntryPoints(response).attach());
  }

  final _albumEntryPoints = new html.Element.div();

  AlbumEntryPoints(String json) {
    Map parsedJson = convert.JSON.decode(json);

    _albumEntryPoints.children.add(new Header(title: "Albums").element);

    _albumEntryPoints.children.addAll(parsedJson['feed']['entry']
        .where((Map entry) =>
            (entry['gphoto\$id']['\$t'] != kProfilePhotosAlbumId))
        .map((Map entry) => new AlbumEntryPoint(
                src: entry['media\$group']['media\$thumbnail'][0]['url'],
                title: entry['title']['\$t'], listener: (_) {
              detach();
              // TODO: Load album photos in background then attach!
              AlbumPhotos.load(
                  albumId: entry['gphoto\$id']['\$t'], albumEntryPoints: this);
            }).element)
        .toList());
  }

  html.Element get element => _albumEntryPoints;

  void attach() {
    html.querySelector('#gallery').children.add(_albumEntryPoints);
    fadeIn(_albumEntryPoints,
        duration: 175, easing: Easing.QUADRATIC_EASY_IN_OUT);
  }

  void detach() {
    fadeOut(_albumEntryPoints,
            duration: 175, easing: Easing.QUADRATIC_EASY_IN_OUT)
        .onComplete
        .listen((_) {
      html.querySelector('#gallery').children.remove(_albumEntryPoints);
    }); //, {duration: 500, Easing easing});
  }
}

abstract class HtmlWidget {
  final Function onDetached;

  HtmlWidget({this.onDetached});

  html.Element get element;
  html.Element get attachPoint => html.querySelector('#gallery');

  void attach() {
    attachPoint.children.add(element);
    fadeIn(element, duration: 175, easing: Easing.QUADRATIC_EASY_IN_OUT);
  }

  void detach() {
    fadeOut(element, duration: 175, easing: Easing.QUADRATIC_EASY_IN_OUT)
        .onComplete
        .listen((_) {
      attachPoint.children.remove(element);
      onDetached?.call();
    });
  }
}

class Header extends HtmlWidget {
  final html.EventListener onBack;
  final String title;
  final String backText;
  final html.Element _header = new html.Element.div();
  final html.Element _title = new html.HeadingElement.h2();
  final html.Element _backButton = new html.HeadingElement.h3();

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

  @override
  html.Element get element => _header;
}

class AlbumPhotos extends HtmlWidget {
  static String createGooglePlusPhotoListUrl(
          {String googlePlusUserId, String googlePlusAlbumId}) =>
      "https://picasaweb.google.com/data/feed/api/user/" +
      googlePlusUserId +
      "/albumid/" +
      googlePlusAlbumId +
      "?alt=json";

  static load({String albumId, AlbumEntryPoints albumEntryPoints}) {
    html.HttpRequest
        .getString(createGooglePlusPhotoListUrl(
            googlePlusUserId: kGooglePlusUserId, googlePlusAlbumId: albumId))
        .then((String response) =>
            new AlbumPhotos(response, () => albumEntryPoints.attach())
                .attach());
  }

  final html.Element _albumPhotos = new html.Element.div();

  AlbumPhotos(String json, Function onDetached)
      : super(onDetached: onDetached) {
    Map parsedJson = convert.JSON.decode(json);

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

  @override
  html.Element get element => _albumPhotos;
}

class Photo {
  final html.Element _img = new html.Element.img();
  final html.Element _span = new html.Element.span();
  final html.Element _div = new html.Element.div();

  Photo({String src, String title, html.EventListener listener}) {
    int fileNameIndex = src.lastIndexOf("/");
    String srcPrefix = src.substring(0, fileNameIndex);
    String srcSuffix = src.substring(fileNameIndex + 1);
    int imageSize =
        (math.max(html.window.innerHeight, html.window.innerWidth) * 0.95)
            .round();
    String photoUrl = "$srcPrefix/s$imageSize/$srcSuffix";
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

  html.Element get element => _div;
}

class AlbumEntryPoint extends Photo {
  AlbumEntryPoint({String src, String title, html.EventListener listener})
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
  final html.Element _overlay = new html.Element.div();
  final html.Element _img = new html.Element.img();
  final html.Element _span = new html.Element.span();

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
    html.querySelector('body').children.add(_overlay);
    fadeIn(_overlay, duration: 350, easing: Easing.QUADRATIC_EASY_IN_OUT);
    fadeIn(_img, duration: 350, easing: Easing.QUADRATIC_EASY_IN_OUT);
  }

  void detach() {
    fadeOut(_img, duration: 350, easing: Easing.QUADRATIC_EASY_IN_OUT);
    fadeOut(_overlay, duration: 350, easing: Easing.QUADRATIC_EASY_IN_OUT)
        .onComplete
        .listen((_) {
      html.querySelector('body').children.remove(_overlay);
    });
  }
}

// To parse this JSON data, do
//
//     final artistModel = artistModelFromMap(jsonString);

import 'dart:convert';

class ArtistModel {
  ArtistModel({
    required this.id,
    required this.name,
    required this.link,
    required this.share,
    required this.picture,
    required this.pictureSmall,
    required this.pictureMedium,
    required this.pictureBig,
    required this.pictureXl,
    required this.nbAlbum,
    required this.nbFan,
    required this.radio,
    required this.tracklist,
    required this.type,
  });

  String id;
  String name;
  String link;
  String share;
  String picture;
  String pictureSmall;
  String pictureMedium;
  String pictureBig;
  String pictureXl;
  int nbAlbum;
  int nbFan;
  bool radio;
  String tracklist;
  String type;

  factory ArtistModel.fromJson(String str) =>
      ArtistModel.fromMap(json.decode(str));

  factory ArtistModel.fromMap(Map<String, dynamic> json) => ArtistModel(
        id: json["id"],
        name: json["name"],
        link: json["link"],
        share: json["share"],
        picture: json["picture"],
        pictureSmall: json["picture_small"],
        pictureMedium: json["picture_medium"],
        pictureBig: json["picture_big"],
        pictureXl: json["picture_xl"],
        nbAlbum: json["nb_album"],
        nbFan: json["nb_fan"],
        radio: json["radio"],
        tracklist: json["tracklist"],
        type: json["type"],
      );
}

// To parse this JSON data, do
//
//     final genresModel = genresModelFromMap(jsonString);

import 'dart:convert';

class GenresModel {
  GenresModel({
    required this.id,
    required this.name,
    required this.picture,
    required this.pictureSmall,
    required this.pictureMedium,
    required this.pictureBig,
    required this.pictureXl,
    required this.type,
  });

  int id;
  String name;
  String picture;
  String pictureSmall;
  String pictureMedium;
  String pictureBig;
  String pictureXl;
  String type;

  factory GenresModel.fromJson(String str) =>
      GenresModel.fromMap(json.decode(str));

  factory GenresModel.fromMap(Map<String, dynamic> json) => GenresModel(
        id: json["id"],
        name: json["name"],
        picture: json["picture"],
        pictureSmall: json["picture_small"],
        pictureMedium: json["picture_medium"],
        pictureBig: json["picture_big"],
        pictureXl: json["picture_xl"],
        type: json["type"],
      );
}

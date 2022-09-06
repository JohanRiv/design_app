// To parse this JSON data, do
//
//     final trackModel = trackModelFromMap(jsonString);

import 'dart:convert';

import 'package:design_app/models/models.dart';

class TrackModel {
  TrackModel({
    required this.id,
    required this.readable,
    required this.title,
    required this.titleShort,
    required this.titleVersion,
    required this.isrc,
    required this.link,
    required this.share,
    required this.duration,
    required this.trackPosition,
    required this.diskNumber,
    required this.rank,
    required this.releaseDate,
    required this.explicitLyrics,
    required this.explicitContentLyrics,
    required this.explicitContentCover,
    required this.preview,
    required this.bpm,
    required this.gain,
    required this.availableCountries,
    required this.contributors,
    required this.md5Image,
    required this.artist,
    required this.album,
    required this.type,
  });

  int id;
  bool readable;
  String title;
  String titleShort;
  String titleVersion;
  String isrc;
  String link;
  String share;
  int duration;
  int trackPosition;
  int diskNumber;
  int rank;
  DateTime releaseDate;
  bool explicitLyrics;
  int explicitContentLyrics;
  int explicitContentCover;
  String preview;
  double bpm;
  double gain;
  List<String> availableCountries;
  List<ArtistModel> contributors;
  String md5Image;
  ArtistModel artist;
  AlbumModel album;
  String type;

  factory TrackModel.fromJson(String str) =>
      TrackModel.fromMap(json.decode(str));

  factory TrackModel.fromMap(Map<String, dynamic> json) => TrackModel(
        id: json["id"],
        readable: json["readable"],
        title: json["title"],
        titleShort: json["title_short"],
        titleVersion: json["title_version"],
        isrc: json["isrc"],
        link: json["link"],
        share: json["share"],
        duration: json["duration"],
        trackPosition: json["track_position"],
        diskNumber: json["disk_number"],
        rank: json["rank"],
        releaseDate: DateTime.parse(json["release_date"]),
        explicitLyrics: json["explicit_lyrics"],
        explicitContentLyrics: json["explicit_content_lyrics"],
        explicitContentCover: json["explicit_content_cover"],
        preview: json["preview"],
        bpm: json["bpm"].toDouble(),
        gain: json["gain"].toDouble(),
        availableCountries:
            List<String>.from(json["available_countries"].map((x) => x)),
        contributors: List<ArtistModel>.from(
            json["contributors"].map((x) => ArtistModel.fromMap(x))),
        md5Image: json["md5_image"],
        artist: ArtistModel.fromMap(json["artist"]),
        album: AlbumModel.fromMap(json["album"]),
        type: json["type"],
      );
}

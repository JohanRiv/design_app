// To parse this JSON data, do
//
//     final albumModel = albumModelFromMap(jsonString);

import 'dart:convert';

import 'package:design_app/models/models.dart';

class AlbumModel {
  AlbumModel({
    required this.id,
    required this.title,
    required this.upc,
    required this.link,
    required this.share,
    required this.cover,
    required this.coverSmall,
    required this.coverMedium,
    required this.coverBig,
    required this.coverXl,
    required this.md5Image,
    required this.genreId,
    required this.genres,
    required this.label,
    required this.nbTracks,
    required this.duration,
    required this.fans,
    required this.releaseDate,
    required this.recordType,
    required this.available,
    required this.tracklist,
    required this.explicitLyrics,
    required this.explicitContentLyrics,
    required this.explicitContentCover,
    required this.contributors,
    required this.artist,
    required this.type,
    required this.tracks,
  });

  int id;
  String title;
  String upc;
  String link;
  String share;
  String cover;
  String coverSmall;
  String coverMedium;
  String coverBig;
  String coverXl;
  String md5Image;
  int genreId;
  GenresModel genres;
  String label;
  int nbTracks;
  int duration;
  int fans;
  DateTime releaseDate;
  String recordType;
  bool available;
  String tracklist;
  bool explicitLyrics;
  int explicitContentLyrics;
  int explicitContentCover;
  List<ContributorModel> contributors;
  ArtistModel artist;
  String type;
  TrackModel tracks;

  factory AlbumModel.fromJson(String str) =>
      AlbumModel.fromMap(json.decode(str));

  factory AlbumModel.fromMap(Map<String, dynamic> json) => AlbumModel(
        id: json["id"],
        title: json["title"],
        upc: json["upc"],
        link: json["link"],
        share: json["share"],
        cover: json["cover"],
        coverSmall: json["cover_small"],
        coverMedium: json["cover_medium"],
        coverBig: json["cover_big"],
        coverXl: json["cover_xl"],
        md5Image: json["md5_image"],
        genreId: json["genre_id"],
        genres: GenresModel.fromMap(json["genres"]),
        label: json["label"],
        nbTracks: json["nb_tracks"],
        duration: json["duration"],
        fans: json["fans"],
        releaseDate: DateTime.parse(json["release_date"]),
        recordType: json["record_type"],
        available: json["available"],
        tracklist: json["tracklist"],
        explicitLyrics: json["explicit_lyrics"],
        explicitContentLyrics: json["explicit_content_lyrics"],
        explicitContentCover: json["explicit_content_cover"],
        contributors: List<ContributorModel>.from(
            json["contributors"].map((x) => ContributorModel.fromMap(x))),
        artist: ArtistModel.fromMap(json["artist"]),
        type: json["type"],
        tracks: TrackModel.fromMap(json["tracks"]),
      );
}

class ArtistElement {
  ArtistElement({
    required this.id,
    required this.name,
    required this.picture,
    required this.type,
    required this.tracklist,
  });

  int id;
  String name;
  String picture;
  String type;
  String tracklist;

  factory ArtistElement.fromJson(String str) =>
      ArtistElement.fromMap(json.decode(str));

  factory ArtistElement.fromMap(Map<String, dynamic> json) => ArtistElement(
        id: json["id"],
        name: json["name"],
        picture: json["picture"] == null ? null : json["picture"],
        type: json["type"],
        tracklist: json["tracklist"] == null ? null : json["tracklist"],
      );
}

class TracksDatum {
  TracksDatum({
    required this.id,
    required this.readable,
    required this.title,
    required this.titleShort,
    required this.titleVersion,
    required this.link,
    required this.duration,
    required this.rank,
    required this.explicitLyrics,
    required this.explicitContentLyrics,
    required this.explicitContentCover,
    required this.preview,
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
  String link;
  int duration;
  int rank;
  bool explicitLyrics;
  int explicitContentLyrics;
  int explicitContentCover;
  String preview;
  String md5Image;
  ArtistElement artist;
  AlbumModel album;
  String type;

  factory TracksDatum.fromJson(String str) =>
      TracksDatum.fromMap(json.decode(str));

  factory TracksDatum.fromMap(Map<String, dynamic> json) => TracksDatum(
        id: json["id"],
        readable: json["readable"],
        title: json["title"],
        titleShort: json["title_short"],
        titleVersion: json["title_version"],
        link: json["link"],
        duration: json["duration"],
        rank: json["rank"],
        explicitLyrics: json["explicit_lyrics"],
        explicitContentLyrics: json["explicit_content_lyrics"],
        explicitContentCover: json["explicit_content_cover"],
        preview: json["preview"],
        md5Image: json["md5_image"],
        artist: ArtistElement.fromMap(json["artist"]),
        album: AlbumModel.fromMap(json["album"]),
        type: json["type"],
      );
}

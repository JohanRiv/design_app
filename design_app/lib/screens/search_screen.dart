import 'dart:io';

import 'package:design_app/themes/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends SearchDelegate {
  @override
  String get searchFieldLabel => 'Search...';
  @override
  TextStyle? get searchFieldStyle =>
      const TextStyle(color: PrimaryTheme.secondaryDark, fontSize: 16);

  bool resultClean = true;
  List<dynamic> results = [];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: const Icon(
            Icons.close,
            color: PrimaryTheme.primary,
          ),
          iconSize: 16,
          onPressed: () {
            query = '';
            results = [];
          },
        ),
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: TextButton(
            onPressed: () {
              query = '';
              resultClean = true;
              close(context, null);
            },
            child: const Text(
              "Cancel",
              style: TextStyle(color: PrimaryTheme.secondary),
            )),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return const Icon(
      Icons.search,
      color: PrimaryTheme.primary,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return Container(
        width: double.infinity,
        child: Center(
          child: Stack(children: const [
            Icon(
              Icons.music_video,
              size: 100,
              color: PrimaryTheme.secondaryDark,
            )
          ]),
        ),
      );
    } else {
      if (results.isEmpty && query.isEmpty) {
        return Container(
          width: double.infinity,
          child: Center(
            child: Stack(children: const [Text('No results match')]),
          ),
        );
      } else if (results.isEmpty && query.isNotEmpty) {
        return Container(
          width: double.infinity,
          child: Center(
            child: Stack(children: const [Text('No results match')]),
          ),
        );
      } else if (results.isEmpty) {
        return Container(
          width: double.infinity,
          child: Center(
            child: Stack(children: [
              if (Platform.isAndroid)
                const CircularProgressIndicator()
              else
                const CupertinoActivityIndicator()
            ]),
          ),
        );
      } else {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
              //   child: ListView.builder(
              //       itemCount: results.length,
              //       itemBuilder: (BuildContext context, int index) {
              //         return GestureDetector(
              //           onTap: (() => Navigator.pushNamed(context, 'details',
              //               arguments: movies[index])),
              //           child: Card(
              //             elevation: 3,
              //             child: ListTile(
              //                 title: Text(
              //                   movies[index].title,
              //                   overflow: TextOverflow.ellipsis,
              //                 ),
              //                 subtitle: Text(
              //                     "Release Date: " +
              //                         movies[index].releaseDate.toString(),
              //                     overflow: TextOverflow.ellipsis),
              //                 leading: Card(
              //                   clipBehavior: Clip.antiAlias,
              //                   shape: RoundedRectangleBorder(
              //                       borderRadius: BorderRadius.circular(5)),
              //                   child: FadeInImage(
              //                       width: 50,
              //                       height: 50,
              //                       fadeInDuration:
              //                           const Duration(milliseconds: 300),
              //                       fit: BoxFit.fill,
              //                       placeholder: const AssetImage(
              //                           'assets/images/gray_background.jpg'),
              //                       image: NetworkImage(movies[index].fullPathImg)),
              //                 ),
              //                 trailing: Column(
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: [
              //                     const Icon(Icons.star, color: Colors.amber),
              //                     const SizedBox(
              //                       height: 3,
              //                     ),
              //                     Text(movies[index].voteAverage.toString())
              //                   ],
              //                 )),
              //             margin: const EdgeInsets.only(bottom: 20),
              //           ),
              //         );
              //       }),
              ),
        );
      }
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // MoviesProvider moviesProvider =
    //     Provider.of<MoviesProvider>(context, listen: false);
    // moviesProvider.getSearchSuggestionByQuery(query);

    if (query.isEmpty) {
      return Container(
        width: double.infinity,
        child: Center(
          child: Stack(children: const [
            Icon(
              Icons.music_video,
              size: 100,
              color: PrimaryTheme.secondaryDark,
            )
          ]),
        ),
      );
    } else {
      return Container();
      // StreamBuilder(
      //     stream: moviesProvider.searchSuggestionStream,
      //     builder: (BuildContext context, AsyncSnapshot<List<Movie>> snapshot) {
      //       if (!snapshot.hasData) {
      //         return Container(
      //           width: double.infinity,
      //           child: Center(
      //             child: Stack(children: [
      //               if (Platform.isAndroid)
      //                 const CircularProgressIndicator()
      //               else
      //                 const CupertinoActivityIndicator()
      //             ]),
      //           ),
      //         );
      //       } else {
      //         movies = snapshot.data!;
      //         return Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20),
      //           child: SizedBox(
      //             child: ListView.builder(
      //                 itemCount: movies.length,
      //                 itemBuilder: (BuildContext context, int index) {
      //                   return GestureDetector(
      //                     onTap: (() => Navigator.pushNamed(context, 'details',
      //                         arguments: movies[index])),
      //                     child: Card(
      //                       elevation: 3,
      //                       child: ListTile(
      //                           title: Text(
      //                             movies[index].title,
      //                             overflow: TextOverflow.ellipsis,
      //                           ),
      //                           subtitle: Text(
      //                               "Release Date: " +
      //                                   movies[index].releaseDate.toString(),
      //                               overflow: TextOverflow.ellipsis),
      //                           leading: Card(
      //                             clipBehavior: Clip.antiAlias,
      //                             shape: RoundedRectangleBorder(
      //                                 borderRadius: BorderRadius.circular(5)),
      //                             child: FadeInImage(
      //                                 width: 50,
      //                                 height: 50,
      //                                 fadeInDuration:
      //                                     const Duration(milliseconds: 300),
      //                                 fit: BoxFit.fill,
      //                                 placeholder: const AssetImage(
      //                                     'assets/images/gray_background.jpg'),
      //                                 image: NetworkImage(
      //                                     movies[index].fullPathImg)),
      //                           ),
      //                           trailing: Column(
      //                             mainAxisAlignment: MainAxisAlignment.center,
      //                             children: [
      //                               const Icon(Icons.star, color: Colors.amber),
      //                               const SizedBox(
      //                                 height: 3,
      //                               ),
      //                               Text(movies[index].voteAverage.toString())
      //                             ],
      //                           )),
      //                       margin: const EdgeInsets.only(bottom: 20),
      //                     ),
      //                   );
      //                 }),
      //           ),
      //         );
      //       }
      //     });
    }
  }
}

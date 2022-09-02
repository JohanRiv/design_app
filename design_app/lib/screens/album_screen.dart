import 'package:design_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../themes/themes.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryTheme.primary,
      body: Container(
        child: ListView(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 8, right: 0, top: 20, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back,
                          color: PrimaryTheme.primaryLight),
                    ),
                    const Text(
                      'Album',
                      style: TextStyle(
                          color: PrimaryTheme.primaryLight,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pushNamed(context, 'settings'),
                      icon: const Icon(Icons.more_vert,
                          color: PrimaryTheme.primaryLight),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 80),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: PrimaryTheme.secondaryLight,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 130, left: 20, right: 20),
                          height: 650,
                          child: SongListWidget(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Center(
                      child: Stack(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * .9,
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: PrimaryTheme.secondaryDark),
                              clipBehavior: Clip.antiAlias,
                              child: const FadeInImage(
                                  fit: BoxFit.cover,
                                  placeholder: AssetImage(
                                      'assets/images/gray_background.jpg'),
                                  image: NetworkImage(
                                      'https://images.pexels.com/photos/1389429/pexels-photo-1389429.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'))),
                          Container(
                            width: MediaQuery.of(context).size.width * .9,
                            height: 180,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(92, 234, 234, 234),
                                    Color.fromARGB(172, 0, 0, 0),
                                  ],
                                  begin: FractionalOffset(0, 0.3),
                                  end: FractionalOffset(0, 1),
                                  stops: [0, 0.6],
                                  tileMode: TileMode.clamp),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    'Artist',
                                    style: TextStyle(
                                        color: PrimaryTheme.secondaryDark,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'Album Name',
                                    style: TextStyle(
                                        color: PrimaryTheme.secondaryDark,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

import 'package:design_app/screens/screens.dart';
import 'package:design_app/themes/themes.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryTheme.primary,
      body: Stack(
        children: [
          const HomeScreen(),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: PrimaryTheme.primaryLight,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () => Navigator.defaultRouteName,
                      icon: const Icon(
                        Icons.house_outlined,
                        color: PrimaryTheme.primary,
                      )),
                  IconButton(
                      onPressed: () => Navigator.pushNamed(context, 'trends'),
                      icon: const Icon(
                        Icons.music_note_outlined,
                        color: PrimaryTheme.secondaryDark,
                      )),
                  IconButton(
                      onPressed: () => Navigator.pushNamed(context, 'search'),
                      icon: const Icon(
                        Icons.search_outlined,
                        color: PrimaryTheme.secondaryDark,
                      )),
                  IconButton(
                      onPressed: () => Navigator.pushNamed(context, 'settings'),
                      icon: const Icon(
                        Icons.person_outline,
                        color: PrimaryTheme.secondaryDark,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

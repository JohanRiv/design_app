import 'package:design_app/screens/screens.dart';
import 'package:design_app/themes/themes.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: PrimaryTheme.primaryLigth,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () => Navigator.pushNamed(context, 'tab'),
                icon: const Icon(
                  Icons.house_outlined,
                  color: PrimaryTheme.secondaryDark,
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
    );
  }
}

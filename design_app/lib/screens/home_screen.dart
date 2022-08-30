import 'package:design_app/themes/themes.dart';
import 'package:design_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 23, top: 20, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => {},
                    icon: const Icon(Icons.menu,
                        color: PrimaryTheme.primaryLight),
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(
                        color: PrimaryTheme.primaryLight,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                    clipBehavior: Clip.antiAlias,
                    child: const FadeInImage(
                        fit: BoxFit.cover,
                        placeholder:
                            AssetImage('assets/images/gray_background.jpg'),
                        image: NetworkImage(
                            'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-774909.jpg&fm=jpg')),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 23, right: 23, top: 20, bottom: 30),
              child: Container(
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Good Evening, Elon',
                        style: TextStyle(
                            color: PrimaryTheme.primaryLight,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text(
                        'Music according to your mood',
                        style: TextStyle(
                            color: PrimaryTheme.primaryLight, fontSize: 12),
                      )
                    ]),
              ),
            ),
            Container(
              width: double.infinity,
              // height: 900,
              decoration: const BoxDecoration(
                  color: PrimaryTheme.secondaryLight,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
                    child: Text(
                      'Albums',
                      style: TextStyle(
                          color: PrimaryTheme.primaryDark,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  SongCardWidget()
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

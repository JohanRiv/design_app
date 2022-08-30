import 'package:design_app/themes/themes.dart';
import 'package:flutter/material.dart';

class SongCardWidget extends StatelessWidget {
  const SongCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Card(
            elevation: 0,
            color: PrimaryTheme.secondaryLight,
            margin: const EdgeInsets.only(left: 20, top: 10),
            child: Stack(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  height: 200,
                  width: 230,
                  child: const FadeInImage(
                      image: NetworkImage(
                          'https://image.api.playstation.com/cdn/UP0006/CUSA03284_00/NlFDoAZWGF6WRyv5EJfKHHd1HfFkWMxj.png'),
                      placeholder:
                          AssetImage('assets/images/gray_background.jpg'),
                      fit: BoxFit.cover),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 115),
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Song Title",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Song Artist",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w200, fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: PrimaryTheme.primary,
                            borderRadius: BorderRadius.circular(100)),
                        child: IconButton(
                            padding: const EdgeInsets.all(0),
                            color: PrimaryTheme.primaryLight,
                            alignment: Alignment.center,
                            onPressed: () => {},
                            icon: const Icon(
                              Icons.play_arrow,
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            elevation: 0,
            color: PrimaryTheme.secondaryLight,
            margin: const EdgeInsets.only(left: 20, top: 10),
            child: Stack(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  height: 200,
                  width: 230,
                  child: const FadeInImage(
                      image: NetworkImage(
                          'https://image.api.playstation.com/cdn/UP0006/CUSA03284_00/NlFDoAZWGF6WRyv5EJfKHHd1HfFkWMxj.png'),
                      placeholder:
                          AssetImage('assets/images/gray_background.jpg'),
                      fit: BoxFit.cover),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 115),
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Song Title",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Song Artist",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w200, fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: PrimaryTheme.primary,
                            borderRadius: BorderRadius.circular(100)),
                        child: IconButton(
                            padding: const EdgeInsets.all(0),
                            color: PrimaryTheme.primaryLight,
                            alignment: Alignment.center,
                            onPressed: () => {},
                            icon: const Icon(
                              Icons.play_arrow,
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

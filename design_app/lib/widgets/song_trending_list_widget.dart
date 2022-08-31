import 'package:design_app/themes/themes.dart';
import 'package:flutter/material.dart';

class SongTrendingListWidget extends StatelessWidget {
  const SongTrendingListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      child: ListView(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            elevation: 0,
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Song Artist",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: PrimaryTheme.secondaryDark,
                        fontSize: 13),
                  ),
                  Text(
                    "Song Title",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  )
                ],
              ),
              subtitle: const Text(
                "Song Played Num",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 12),
              ),
              leading: Container(
                height: 60,
                width: 60,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: const FadeInImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://image.api.playstation.com/cdn/UP0006/CUSA03284_00/NlFDoAZWGF6WRyv5EJfKHHd1HfFkWMxj.png'),
                  placeholder: AssetImage('assets/images/gray_background.jpg'),
                ),
              ),
              trailing: const Icon(
                Icons.favorite,
                color: true ? PrimaryTheme.primary : PrimaryTheme.secondaryDark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

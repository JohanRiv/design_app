import 'package:flutter/material.dart';

class SongListWidget extends StatelessWidget {
  const SongListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      child: ListView(
        children: [
          ListTile(
            title: const Text(
              "Song Title",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              "Song Artist",
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
            trailing: const Text(
              "mm:ss",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

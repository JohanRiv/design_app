import 'package:design_app/themes/themes.dart';
import 'package:flutter/material.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({Key? key}) : super(key: key);

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  double _sliderValue = 60;
  bool _enableCheck = true;
  final GlobalKey<FormState> sliderKey = GlobalKey<FormState>();

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
                      'Now Playing',
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
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 250, left: 20, right: 20),
                          child: Column(
                            children: const [
                              Text(
                                'Song Name',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Song Name',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: PrimaryTheme.secondaryDark),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 320,
                          width: double.infinity,
                          margin: const EdgeInsets.only(top: 30),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                              color: PrimaryTheme.secondary),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'mm:ss',
                                        style: TextStyle(
                                            color: PrimaryTheme.primaryLight),
                                      ),
                                      Text(
                                        'mm:ss',
                                        style: TextStyle(
                                            color: PrimaryTheme.primaryLight),
                                      ),
                                    ],
                                  ),
                                ),
                                Slider.adaptive(
                                  key: sliderKey,
                                  value: _sliderValue,
                                  inactiveColor: Colors.grey,
                                  activeColor: PrimaryTheme.primary,
                                  onChanged: (value) {
                                    _enableCheck == true
                                        ? setState(() {
                                            _sliderValue = value;
                                          })
                                        : null;
                                  },
                                  max: 100,
                                  min: 0,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                          Icons.repeat,
                                          color: PrimaryTheme.primaryLight,
                                          size: 30,
                                        ),
                                        onPressed: () => {},
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                          Icons.skip_previous,
                                          color: PrimaryTheme.primaryLight,
                                          size: 30,
                                        ),
                                        onPressed: () => {},
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: PrimaryTheme.primary),
                                        clipBehavior: Clip.antiAlias,
                                        child: Center(
                                          child: IconButton(
                                            icon: const Icon(
                                              Icons.pause,
                                              color: PrimaryTheme.primaryLight,
                                              size: 30,
                                            ),
                                            onPressed: () => {},
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                          Icons.skip_next,
                                          color: PrimaryTheme.primaryLight,
                                          size: 30,
                                        ),
                                        onPressed: () => {},
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                          Icons.shuffle_rounded,
                                          color: PrimaryTheme.primaryLight,
                                          size: 30,
                                        ),
                                        onPressed: () => {},
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                          Icons.volume_up_outlined,
                                          color: PrimaryTheme.primaryLight,
                                        ),
                                        onPressed: () => {},
                                      ),
                                      IconButton(
                                        icon: const Icon(
                                          Icons.favorite,
                                          color: PrimaryTheme.primaryLight,
                                        ),
                                        onPressed: () => {},
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Center(
                      child: Container(
                          width: MediaQuery.of(context).size.width * .9,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: PrimaryTheme.secondaryDark),
                          clipBehavior: Clip.antiAlias,
                          child: const FadeInImage(
                              fit: BoxFit.cover,
                              placeholder: AssetImage(
                                  'assets/images/gray_background.jpg'),
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/2272854/pexels-photo-2272854.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'))),
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

import 'package:flutter/material.dart';

import '../themes/themes.dart';
import '../widgets/widgets.dart';

const List<String> genderList = <String>[
  'Jazz & Blues',
  'R&B',
  'EDM',
  'Rock',
  'Pop'
];

const List<String> yearList = <String>[
  '2016',
  '2017',
  '2018',
  '2019',
  '2020',
  '2021',
];

class TrendsScreen extends StatelessWidget {
  const TrendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryTheme.primary,
      body: Container(
          child: ListView(
        children: [
          Column(
            children: [
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
                      'Trending',
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 23, right: 23, top: 20, bottom: 30),
                child: Container(
                  width: double.infinity,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [DropdownButtonGender(), DropdownButtonYear()]),
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
                        'Trending Songs',
                        style: TextStyle(
                            color: PrimaryTheme.primaryDark,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    SongTrendingListWidget(),
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}

class DropdownButtonGender extends StatefulWidget {
  const DropdownButtonGender({Key? key}) : super(key: key);

  @override
  State<DropdownButtonGender> createState() => _DropdownButtonGenderState();
}

class _DropdownButtonGenderState extends State<DropdownButtonGender> {
  String dropdownGenderValue = genderList.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: PrimaryTheme.primaryLight,
      ),
      width: MediaQuery.of(context).size.width * 0.4,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: DropdownButton<String>(
        value: dropdownGenderValue,
        icon: const Icon(Icons.keyboard_arrow_down),
        isExpanded: true,
        elevation: 0,
        style: const TextStyle(color: PrimaryTheme.primaryDark),
        borderRadius: BorderRadius.circular(10),
        underline: Container(
          height: 0,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownGenderValue = value!;
          });
        },
        items: genderList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class DropdownButtonYear extends StatefulWidget {
  const DropdownButtonYear({Key? key}) : super(key: key);

  @override
  State<DropdownButtonYear> createState() => _DropdownButtonYearState();
}

class _DropdownButtonYearState extends State<DropdownButtonYear> {
  String dropdownYearValue = yearList.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: PrimaryTheme.primaryLight,
      ),
      width: MediaQuery.of(context).size.width * 0.4,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: DropdownButton<String>(
        isExpanded: true,
        value: dropdownYearValue,
        icon: const Icon(Icons.keyboard_arrow_down),
        elevation: 0,
        style: const TextStyle(color: PrimaryTheme.primaryDark),
        borderRadius: BorderRadius.circular(10),
        underline: Container(
          height: 0,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownYearValue = value!;
          });
        },
        items: yearList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

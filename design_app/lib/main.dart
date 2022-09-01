import 'package:flutter/material.dart';
import 'package:design_app/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design App Demo 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'tab',
      routes: {
        'tab': (context) => const TabScreen(),
        'home': (context) => const HomeScreen(),
        'settings': (context) => const SettingsScreen(),
        'trends': (context) => const TrendsScreen()
      },
    );
  }
}

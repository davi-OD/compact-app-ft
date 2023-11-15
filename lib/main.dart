import 'package:compact/Screens/first_screen.dart';
import 'package:compact/Screens/second_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';
import 'Screens/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   backgroundColor: Colors.deepPurple[200],
      //   body: Center(
      //     child: Container(
      //       height: 300,
      //       width: 300,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(25),
      //         color: Colors.deepPurple,
      //       ),
      //       padding: const EdgeInsets.all(25),
      //       child: const Text(
      //         "Dasdo",
      //         style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 20,
      //             fontWeight: FontWeight.bold),
      //       ),
      //     ),
      //   ),
      // ),
      home: FirstScreen(),
      routes: {
        '/firstscreen': (context) => FirstScreen(),
        '/secondscreen': (context) => SecondScreen(),
        '/home': (context) => HomeScreen(),
        '/settings': (context) => SettingScreen(),
      },
    );
  }
}

class HomeSreen {}

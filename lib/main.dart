import 'package:chess_game_app/views/test.dart';
import 'package:flutter/material.dart';

import 'views/home_view.dart';
import 'views/game_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chess Game App',
      theme: ThemeData(
        fontFamily: 'IndieFlower',
        primarySwatch: Colors.blue,
      ),
      routes: {
        // '/':(context) =>  Test(),
        '/':(context) => const HomeView(),
        GameView.routeName: (context) => GameView(),
      },
    );
  }
}


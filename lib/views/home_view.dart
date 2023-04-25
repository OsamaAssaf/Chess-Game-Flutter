import 'package:flutter/material.dart';

import 'game_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, GameView.routeName);
          },
          icon: const Icon(Icons.play_arrow),
          label: const Text('Start Game'),
        ),
      ),
    );
  }
}

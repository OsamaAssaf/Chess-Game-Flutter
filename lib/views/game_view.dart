import 'package:flutter/material.dart';

import '../view_models/game_view_model.dart';
import '../components/chess_pieces.dart';

class GameView extends StatelessWidget {
  GameView({super.key});
  static const String routeName = '/game_view';
  final GameViewModel _viewModel = GameViewModel();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text('Player 2'),
          ),
          Container(
            width: width * 0.125 * 8,
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
            ),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Wrap(
                  children: [
                    for (int i = 0; i < 8; i++)
                      for (int j = 0; j < 8; j++)
                        Container(
                          width: constraints.maxWidth * 0.125,
                          height: constraints.maxWidth * 0.125,
                          alignment: Alignment.center,
                          color: i % 2 == 0
                              ? j % 2 == 0
                                  ? _viewModel.boardColorTow
                                  : _viewModel.boardColorOne
                              : j % 2 == 0
                                  ? _viewModel.boardColorOne
                                  : _viewModel.boardColorTow,
                          child: ChessPieces(
                              width: constraints.maxWidth, rowNumber: i, columnNumber: j),
                        ),
                  ],
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text('Player 1'),
          ),
        ],
      ),
    );
  }
}

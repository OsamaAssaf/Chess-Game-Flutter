import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class Test extends StatelessWidget {
  Test({super.key});
  static const String routeName = '/test';

  final ChessBoardController _controller = ChessBoardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: ChessBoard(controller: _controller),
        ));
  }
}

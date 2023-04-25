import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class Test extends StatelessWidget {
  Test({Key? key}) : super(key: key);
  static const String routeName = '/test';

  final ChessBoardController _controller = ChessBoardController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:Center(
        child: ChessBoard(controller: _controller),
      )
    );
  }
}



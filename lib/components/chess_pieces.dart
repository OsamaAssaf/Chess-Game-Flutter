import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chess_piece_icon.dart';

class ChessPieces extends StatelessWidget {
  const ChessPieces({Key? key, required this.width, required this.rowNumber, required this.columnNumber})
      : super(key: key);

  final double width;
  final int rowNumber;
  final int columnNumber;

  Widget buildIcon(){
    // black Pawns
    if(rowNumber == 1){
      return ChessPieceIcon(rowNumber: rowNumber,columnNumber: columnNumber,icon: FontAwesomeIcons.solidChessPawn, width: width, color: Colors.black);
    }
    // white Pawns
    if(rowNumber == 6){
      return ChessPieceIcon(rowNumber: rowNumber,columnNumber: columnNumber,icon: FontAwesomeIcons.solidChessPawn, width: width, color: Colors.white);
    }
    // black Rooks
    if((rowNumber == 0 && columnNumber == 0) || rowNumber == 0 && columnNumber == 7){
      return ChessPieceIcon(rowNumber: rowNumber,columnNumber: columnNumber,icon: FontAwesomeIcons.solidChessRook, width: width, color: Colors.black);
    }
    // white Rooks
    if((rowNumber == 7 && columnNumber == 0) || rowNumber == 7 && columnNumber == 7){
      return ChessPieceIcon(rowNumber: rowNumber,columnNumber: columnNumber,icon: FontAwesomeIcons.solidChessRook, width: width, color: Colors.white);
    }
    // black Knights
    if((rowNumber == 0 && columnNumber == 1) || rowNumber == 0 && columnNumber == 6){
      return ChessPieceIcon(rowNumber: rowNumber,columnNumber: columnNumber,icon: FontAwesomeIcons.solidChessKnight, width: width, color: Colors.black);
    }
    // white Knights
    if((rowNumber == 7 && columnNumber == 1) || rowNumber == 7 && columnNumber == 6){
      return ChessPieceIcon(rowNumber: rowNumber,columnNumber: columnNumber,icon: FontAwesomeIcons.solidChessKnight, width: width, color: Colors.white);
    }
    // black Bishops
    if((rowNumber == 0 && columnNumber == 2) || rowNumber == 0 && columnNumber == 5){
      return ChessPieceIcon(rowNumber: rowNumber,columnNumber: columnNumber,icon: FontAwesomeIcons.solidChessBishop, width: width, color: Colors.black);
    }
    // white Bishops
    if((rowNumber == 7 && columnNumber == 2) || rowNumber == 7 && columnNumber == 5){
      return ChessPieceIcon(rowNumber: rowNumber,columnNumber: columnNumber,icon: FontAwesomeIcons.solidChessBishop, width: width, color: Colors.white);
    }
    // black King
    if(rowNumber == 0 && columnNumber == 3){
      return ChessPieceIcon(rowNumber: rowNumber,columnNumber: columnNumber,icon: FontAwesomeIcons.solidChessKing, width: width, color: Colors.black);
    }
    // white King
    if(rowNumber == 7 && columnNumber == 4){
      return ChessPieceIcon(rowNumber: rowNumber,columnNumber: columnNumber,icon: FontAwesomeIcons.solidChessKing, width: width, color: Colors.white);
    }
    // black Queen
    if(rowNumber == 0 && columnNumber == 4){
      return ChessPieceIcon(rowNumber: rowNumber,columnNumber: columnNumber,icon: FontAwesomeIcons.solidChessQueen, width: width, color: Colors.black);
    }
    // white Queen
    if(rowNumber == 7 && columnNumber == 3){
      return ChessPieceIcon(rowNumber: rowNumber,columnNumber: columnNumber,icon: FontAwesomeIcons.solidChessQueen, width: width, color: Colors.white);
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return buildIcon();
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChessPieceIcon extends StatelessWidget {
  const ChessPieceIcon({
    super.key,
    required this.icon,
    required this.width,
    required this.color,
    required this.rowNumber,
    required this.columnNumber,
  });

  final IconData icon;
  final double width;
  final Color color;
  final int rowNumber;
  final int columnNumber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Row: $rowNumber');
        print('Column: $columnNumber');
        if (icon == FontAwesomeIcons.solidChessPawn) {
          print('solidChessPawn');
        }
      },
      child: Container(
        width: width,
        height: width,
        alignment: Alignment.center,
        child: FaIcon(
          icon,
          size: width * 0.07,
          color: color,
        ),
      ),
    );
  }
}

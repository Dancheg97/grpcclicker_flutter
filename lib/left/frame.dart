import 'package:flutter/material.dart';
import 'package:grpcclicker/left/move_area.dart';
import 'package:grpcclicker/style/palette.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.black,
      child: Column(
        children: const [
          MoveAreaLeft(),
        ],
      ),
    );
  }
}

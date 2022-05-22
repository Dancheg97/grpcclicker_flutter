import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:grpcclicker/logic/palette.dart';

class RightSide extends StatelessWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.veryDark,
      child: WindowTitleBarBox(
        child: MoveWindow(),
      ),
    );
  }
}

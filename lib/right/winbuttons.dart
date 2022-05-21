import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:grpcclicker/style/palette.dart';

class WindowButtons extends StatelessWidget {
  WindowButtons({Key? key}) : super(key: key);

  final buttonColors = WindowButtonColors(
    normal: Palette.veryDark,
    iconNormal: Palette.white,
    mouseOver: Palette.veryDark,
    mouseDown: Palette.veryDark,
    iconMouseOver: Palette.white,
    iconMouseDown: Palette.white,
  );

  final closeButtonColors = WindowButtonColors(
    normal: Palette.veryDark,
    mouseOver: const Color(0xFFB71C1C),
    mouseDown: Palette.veryDark,
    iconNormal: Palette.white,
    iconMouseOver: Palette.white,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';


class MoveAreaLeft extends StatelessWidget {
  const MoveAreaLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WindowTitleBarBox(
      child: MoveWindow(
        child: Row(
          children: [],
        ),
      ),
    );
  }
}

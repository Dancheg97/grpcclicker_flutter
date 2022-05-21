import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:grpcclicker/style/palette.dart';

class MoveAreaLeft extends StatelessWidget {
  const MoveAreaLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isMacOS || Platform.isLinux) {
      return WindowTitleBarBox(
        child: MoveWindow(
          child: const Center(
            child: Text(
              'gRPC Clicker',
              style: TextStyle(
                color: Palette.white,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      );
    }
    return WindowTitleBarBox(
      child: MoveWindow(
        child: const Center(
          child: Text(
            'gRPC Clicker',
            style: TextStyle(
              color: Palette.white,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}

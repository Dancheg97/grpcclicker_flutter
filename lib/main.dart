import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:grpcclicker/logic/providers.dart';
import 'package:grpcclicker/style/palette.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) {
        return RequestProvider();
      }),
      ChangeNotifierProvider(create: (context) {
        return ResponseProvider();
      }),
      ChangeNotifierProvider(create: (context) {
        return ProtoProvider();
      }),
    ],
    child: const MyApp(),
  ));

  doWhenWindowReady(() {
    const initialSize = Size(1100, 700);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WindowBorder(
          color: Palette.black,
          width: 1,
          child: Row(
            children: [
              Container(
                child: Text(
                  '',
                  style: TextStyle(
                    color: Palette.black,
                  ),
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}

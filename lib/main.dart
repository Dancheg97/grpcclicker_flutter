import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:grpcclicker/left/frame.dart';
import 'package:grpcclicker/logic/providers.dart';
import 'package:grpcclicker/right/frame.dart';
import 'package:grpcclicker/style/palette.dart';
import 'package:provider/provider.dart';
import 'package:multi_split_view/multi_split_view.dart';

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

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: WindowBorder(
          color: Colors.black,
          width: 1,
          child: MultiSplitViewTheme(
            data: MultiSplitViewThemeData(
              dividerPainter: DividerPainters.background(
                color: Palette.black,
                highlightedColor: Palette.darkGrey,
              ),
              dividerThickness: 5.62,
            ),
            child: MultiSplitView(
              initialAreas: [
                Area(weight: 0.25, minimalWeight: 0.15),
                Area(minimalWeight: 0.60),
              ],
              children: const [
                LeftSide(),
                RightSide(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './layout/layout.dart';
import './top/top.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  PageController pageController = PageController();

  void scrollDown(double scrollDown) {
    debugPrint('movePage');
    pageController.animateTo(
      scrollDown,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutQuart,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (ctx, constraints) {
            debugPrint('maxHeight: ${constraints.maxHeight}');
            return Stack(
              children: [
                Layout(
                  constraints: constraints,
                  pageController: pageController,
                ),
                Top(
                  scrollDown: scrollDown,
                  constraints: constraints,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

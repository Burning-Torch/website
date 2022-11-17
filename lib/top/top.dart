import '../layout/inner_box.dart';
import 'package:flutter/material.dart';

import './logo.dart';
import './menu.dart';
import '../layout/box.dart';
import '../layout/utils.dart';

class Top extends StatelessWidget {
  final void Function(double) scrollDown;
  final BoxConstraints constraints;

  const Top({
    super.key,
    required this.scrollDown,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    var innerWidth = calculateWidh(
      constraints: constraints,
      factor: 80,
    );
    return Box(
      size: 0.1,
      constraints: constraints,
      backgroundColor: const Color(0xFFaaaaaa),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InnerBox(
            backgroundColor: const Color(0xFFffed9e),
            width: innerWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 1,
                  child: Logo(),
                ),
                Expanded(
                  flex: 4,
                  child: Menu(
                    scrollDown: scrollDown,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

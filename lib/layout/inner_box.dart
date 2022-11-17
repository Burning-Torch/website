import 'package:flutter/material.dart';

import './utils.dart';

class InnerBox extends StatelessWidget {
  final double? width;
  final BoxConstraints? constraints;
  final Widget? child;
  final Color? backgroundColor;

  const InnerBox({
    super.key,
    this.width,
    this.constraints,
    this.child,
    this.backgroundColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    var innerWidth = constraints != null
        ? calculateWidh(
            constraints: constraints!,
            factor: 80,
          )
        : width!;
    return Container(
      width: innerWidth,
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: child,
    );
  }
}

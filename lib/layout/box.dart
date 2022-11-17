import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final double size;
  final BoxConstraints constraints;
  final Color? borderColor;
  final Color? backgroundColor;
  final Widget? child;

  const Box({
    super.key,
    required this.size,
    required this.constraints,
    this.borderColor = Colors.white,
    this.backgroundColor = Colors.white,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size * constraints.maxHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor!,
        ),
        color: backgroundColor!,
      ),
      child: child,
    );
  }
}

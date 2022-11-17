import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        'assets/images/burningtorchlogosmall2.png',
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        height: 70,
      ),
    );
  }
}

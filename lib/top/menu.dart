import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final void Function(double) scrollDown;

  const Menu({
    super.key,
    required this.scrollDown,
  });

  @override
  Widget build(BuildContext context) {
    var pageHeight = MediaQuery.of(context).size.height;
    var buttonStyle = ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(5, 0, 5, 0)),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () => scrollDown(0.8 * pageHeight),
          style: buttonStyle,
          child: const Text('About Us'),
        ),
        TextButton(
          onPressed: () => scrollDown(1.5 * pageHeight),
          style: buttonStyle,
          child: const Text('Services'),
        ),
        TextButton(
          onPressed: () => scrollDown(2.6 * pageHeight),
          style: buttonStyle,
          child: const Text('Why Choose Us'),
        ),
        TextButton(
          onPressed: () => scrollDown(3.5 * pageHeight),
          style: buttonStyle,
          child: const Text('Portafolio'),
        ),
      ],
    );
  }
}

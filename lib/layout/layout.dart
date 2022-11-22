import 'package:flutter/material.dart';

import './box.dart';
import '../layout/utils.dart';

import './sections//about_us.dart';
import './sections/cover.dart';

class Layout extends StatelessWidget {
  final BoxConstraints constraints;
  final PageController pageController;

  const Layout({
    super.key,
    required this.constraints,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: pageController,
      child: Column(
        children: [
          // Top menu
          Box(
            size: 0.1,
            constraints: constraints,
            child: const Text('Top'),
          ),
          // Portada
          Cover(
            constraints: constraints,
          ),
          AboutUs(
            constraints: constraints,
          ),
          Box(
            size: 1.1,
            constraints: constraints,
            child: const Text('Services'),
          ),
          Box(
            size: 0.9,
            constraints: constraints,
            child: const Text('Why Choose Us'),
          ),
          Box(
            size: 0.9,
            constraints: constraints,
            child: const Text('Portafolio'),
          ),
          Box(
            size: 0.5,
            constraints: constraints,
            child: const Text('Footer'),
          ),
        ],
      ),
    );
  }
}

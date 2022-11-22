import 'package:flutter/material.dart';

import 'dart:math';

double calculateWidh({
  required BoxConstraints constraints,
  required double factor,
  double maxFactor = 0.95,
  double minFactor = 0.7,
}) {
  var newFactor = 10000 * factor;
  var width = newFactor / constraints.maxWidth;
  var maxWidth = maxFactor * constraints.maxWidth;
  var minWidth = minFactor * constraints.maxWidth;
  return max(min(width, maxWidth), minWidth);
}

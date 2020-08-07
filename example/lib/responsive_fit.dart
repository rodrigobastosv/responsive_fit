import 'dart:math' as math;

import 'package:flutter/material.dart';

extension ResponsiveFitExtension on BuildContext {
  Size get size => MediaQuery.of(this).size;

  double get totalWidth => MediaQuery.of(this).size.width;
  double pw(double percent) => (totalWidth * percent) / 100;

  double get totalHeight => MediaQuery.of(this).size.height;
  double ph(double percent) => (totalHeight * percent) / 100;

  double get inch =>
      math.sqrt((math.pow(totalWidth, 2) + math.pow(totalHeight, 2)));
  double ip(double percent) => (inch * percent) / 100;
}

extension ResponsiveFitIntExtension on int {
  double pw(BuildContext context) =>
      (MediaQuery.of(context).size.width * this) / 100;
  double ph(BuildContext context) =>
      (MediaQuery.of(context).size.height * this) / 100;
  double ip(BuildContext context) => (getInch(context) * this) / 100;
}

extension ResponsiveFitDoubleExtension on double {
  double pw(BuildContext context) =>
      (MediaQuery.of(context).size.width * this) / 100;
  double ph(BuildContext context) =>
      (MediaQuery.of(context).size.height * this) / 100;
  double ip(BuildContext context) => (getInch(context) * this) / 100;
}

double getInch(BuildContext context) {
  final size = MediaQuery.of(context).size;
  final totalWidth = size.width;
  final totalHeight = size.height;
  return math.sqrt((math.pow(totalWidth, 2) + math.pow(totalHeight, 2)));
}

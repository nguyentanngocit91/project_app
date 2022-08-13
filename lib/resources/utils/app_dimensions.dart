import 'package:flutter/material.dart';

class Dimensions {
  double _defaultPadding = 0;
  double get defaultPadding => _defaultPadding;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isTable(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 768;

  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  static String getDevice(BuildContext context) {
    if (isMobile(context)) {
      return 'mobile';
    } else if (isTable(context)) {
      return 'tablet';
    } else {
      return 'web';
    }
  }

}
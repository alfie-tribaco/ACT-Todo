import 'package:flutter/material.dart';

class AppMeasures {
  double defaultPadding = 16.0;

  double getScreenWidth(context) {
    return MediaQuery.of(context).size.width;
  }
}

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.desktop,
      required this.mobile,
      required this.tablet});

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobile;
      } else if (constraints.minWidth >= 600 && constraints.maxWidth < 1100) {
        return tablet;
      } else {
        return desktop;
      }
    }));
  }
}

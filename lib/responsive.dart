import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveLayar extends StatelessWidget {
  ResponsiveLayar({required this.mobileBody, required this.desktopBody});
  final Widget mobileBody;
  final Widget desktopBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileBody;
      } else {
        return desktopBody;
      }
    });
  }
}

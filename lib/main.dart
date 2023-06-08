import 'package:flutter/material.dart';
import 'package:portofolio/Desktop/desktop_body.dart';
import 'package:portofolio/Mobile/mobile_body.dart';
import 'package:portofolio/responsive.dart';

void main() => runApp(Portofolio());

class Portofolio extends StatelessWidget {
  const Portofolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayar(
        mobileBody: MobileLayout(),
        desktopBody: DesktopLayout(),
      ),
    );
  }
}

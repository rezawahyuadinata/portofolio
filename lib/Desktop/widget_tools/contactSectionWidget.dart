import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const.dart';
import 'gambar.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 300,
              height: 100,
              child: CustomPaint(
                size: Size(200, 200),
                painter: SubtittleContainer("Contact"),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: mainPadding * 1.5),
              child: Row(
                children: <Widget>[
                  Expanded(child: Placeholder()),
                  Placeholder(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

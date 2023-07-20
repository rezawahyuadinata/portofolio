import 'package:flutter/material.dart';

class TittleHeader extends StatelessWidget {
  final String textHeader;
  final TextStyle styleHeader;
  TittleHeader({
    super.key,
    required this.textHeader,
    required this.styleHeader,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          textHeader,
          style: styleHeader,
        ),
      ),
    );
  }
}

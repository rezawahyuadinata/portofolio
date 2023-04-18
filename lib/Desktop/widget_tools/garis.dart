import 'package:flutter/material.dart';

class GarisVertical extends StatelessWidget {
  const GarisVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.black,
            width: 10,
            height: 100,
          );
        },
      ),
    );
  }
}

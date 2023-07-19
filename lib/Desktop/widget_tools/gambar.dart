import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubtittleContainer extends CustomPainter {
  final String textCaption;
  SubtittleContainer(this.textCaption);
  @override
  void paint(Canvas canvas, Size size) {
    // definisikan style pada gambar
    final paint = Paint()
      ..color = Color.fromRGBO(30, 39, 73, 100)
      ..style = PaintingStyle.fill;
    // definisikan bentuk gambar dengan koordinat
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width * 1.5, 0) // Garis ke titik kanan atas
      ..lineTo(size.width * 1.25, size.height) // Garis ke titik kanan bawah
      ..lineTo(0, size.height) // Garis ke titik kiri bawah
      ..close();
    canvas.drawPath(path, paint);
    // definisikan isi content yang terdapat di dalam
    final textSpan = TextSpan(
      text: textCaption,
      style: TextStyle(
        color: Colors.white,
        fontSize: 36,
        fontWeight: FontWeight.bold,
      ),
    );
    // penggunaan text painter dalam mendesain suatu text secara terpaket
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    // pendefinisan luas text yang akan digunakan
    textPainter.layout(
      minWidth: 0,
      maxWidth: size.width,
    );
    // mendeklarasikan posisi text yang akan digunakan
    // dengan mendifinisikan luas text diberikan dengan luas gambar
    final xCenter = (size.width - textPainter.width) / 3;
    final yCenter = (size.height - textPainter.height) / 2;
    // gambar yang dibuat akan di print
    final offset = Offset(xCenter, yCenter);
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

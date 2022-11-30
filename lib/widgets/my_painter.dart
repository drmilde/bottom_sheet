import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xff698c49);
    path = Path();
    path.lineTo(size.width * 1.28, size.height * 0.13);
    path.cubicTo(size.width * 1.28, size.height * 0.13, size.width,
        size.height * 0.22, size.width * 0.92, size.height * 0.34);
    path.cubicTo(size.width * 0.79, size.height * 0.51, size.width * 1.09,
        size.height * 0.64, size.width * 1.03, size.height * 0.74);
    path.cubicTo(size.width * 0.98, size.height * 0.82, size.width * 0.86,
        size.height * 0.89, size.width * 0.73, size.height * 0.91);
    path.cubicTo(size.width * 0.61, size.height * 0.92, size.width * 0.42,
        size.height * 0.91, size.width * 0.34, size.height * 0.97);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.28,
        size.height * 1.13, size.width * 0.28, size.height * 1.13);
    path.cubicTo(size.width * 0.28, size.height * 1.13, size.width * 1.28,
        size.height * 1.13, size.width * 1.28, size.height * 1.13);
    path.cubicTo(size.width * 1.28, size.height * 1.13, size.width * 1.28,
        size.height * 0.13, size.width * 1.28, size.height * 0.13);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

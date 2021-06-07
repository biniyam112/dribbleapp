import 'package:flutter/material.dart';
import 'dart:math' as math;

class HexagonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..strokeWidth = 15
      ..color = Colors.amber[800];
    var path = Path();

    path.lineTo(size.width / 2, size.height / 2);
    path.lineTo(
      math.cos(300 * (math.pi / 180)) * size.width / 2,
      math.sin(300 * (math.pi / 180)) * size.height / 2 + size.height / 2,
    );
    path.lineTo(
      math.cos(240 * (math.pi / 180)) * size.width / 2,
      math.sin(240 * (math.pi / 180)) * size.height / 2 + size.height / 2,
    );
    path.lineTo(-size.width / 2, size.height / 2);
    path.lineTo(
      math.cos(120 * (math.pi / 180)) * size.width / 2,
      math.sin(120 * (math.pi / 180)) * size.height / 2 + size.height / 2,
    );
    path.lineTo(math.cos(60 * (math.pi / 180)) * size.width / 2,
        math.sin(60 * (math.pi / 180)) * size.height / 2 + size.height / 2);
    path.lineTo(size.width / 2, size.height / 2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(HexagonPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(HexagonPainter oldDelegate) => false;
}

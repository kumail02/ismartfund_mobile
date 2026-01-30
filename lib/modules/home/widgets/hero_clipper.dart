import 'package:flutter/material.dart';

class BottomArrowPainter extends CustomPainter {
  final Color color;
  final double strokeWidth;

  BottomArrowPainter({
    required this.color,
    this.strokeWidth = 3,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final path = Path();

    // Left line
    path.moveTo(0, 0);
    path.lineTo(size.width / 2, size.height);

    // Right line
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

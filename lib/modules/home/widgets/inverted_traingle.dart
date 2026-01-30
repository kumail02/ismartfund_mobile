import 'package:flutter/material.dart';

class InvertedTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Top left
    path.moveTo(0, 0);

    // Top right
    path.lineTo(size.width, 0);

    // Bottom right
    path.lineTo(size.width, size.height - 60);

    // Bottom center (point)
    path.lineTo(size.width / 2, size.height);

    // Bottom left
    path.lineTo(0, size.height - 60);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

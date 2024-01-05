import 'package:flutter/material.dart';

class XTicket extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double sideRadius = size.height / 8;
    double radius = size.height * 3 / 13;
    double mid = size.width * 0.3;

    path.moveTo(0, 0);

    path.lineTo(mid - sideRadius, 0);

    path.cubicTo(mid - sideRadius, 0, mid, radius, mid + sideRadius, 0);

    path.lineTo(size.width, 0);

    path.lineTo(size.width, size.height);
    path.cubicTo(size.width, size.height, size.width, size.height, size.width,
        size.height);
    path.lineTo(mid + sideRadius, size.height);

    path.cubicTo(mid + sideRadius, size.height, mid, size.height - radius,
        mid - sideRadius, size.height);

    path.lineTo(0, size.height);

    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

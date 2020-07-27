import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path>{

   @override
  Path getClip(Size size) {
   Path path=Path()
      ..lineTo(0.0, 0.0)
      ..quadraticBezierTo(0.0, size.height, size.width, size.height-10.0)
      ..lineTo(size.width, 0.0)
      ..close();
   return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}
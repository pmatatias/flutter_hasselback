import 'package:flutter/material.dart';

class RightWave extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4994417, size.height * 0.9991605);
    path_0.lineTo(size.width * 0.4994417, size.height * 0.1379605);
    path_0.cubicTo(
        size.width * 0.4994417,
        size.height * 0.1379605,
        size.width * 0.5880987,
        size.height * 0.3470259,
        size.width * 0.6708510,
        size.height * 0.3143074);
    path_0.cubicTo(
        size.width * 0.7536014,
        size.height * 0.2815870,
        size.width * 0.7484758,
        size.height * 0.05119920,
        size.width * 0.8304955,
        size.height * 0.007120679);
    path_0.cubicTo(
        size.width * 0.9125153,
        size.height * -0.03695556,
        size.width * 0.9989300,
        size.height * 0.1379957,
        size.width * 0.9989300,
        size.height * 0.1379957);
    path_0.lineTo(size.width * 0.9989300, size.height * 0.9991790);
    path_0.lineTo(size.width * 0.4994417, size.height * 0.9991605);
    path_0.close();
    path_0.moveTo(0, size.height * 0.9991790);
    path_0.lineTo(0, size.height * 0.1379957);
    path_0.cubicTo(
        0,
        size.height * 0.1379957,
        size.width * 0.08861059,
        size.height * 0.3470259,
        size.width * 0.1713625,
        size.height * 0.3143074);
    path_0.cubicTo(
        size.width * 0.2541149,
        size.height * 0.2815870,
        size.width * 0.2489892,
        size.height * 0.05119920,
        size.width * 0.3310090,
        size.height * 0.007120679);
    path_0.cubicTo(
        size.width * 0.4130287,
        size.height * -0.03695556,
        size.width * 0.4994417,
        size.height * 0.1379957,
        size.width * 0.4994417,
        size.height * 0.1379957);
    path_0.lineTo(size.width * 0.4994417, size.height * 0.9991790);
    path_0.lineTo(0, size.height * 0.9991790);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff4BB1FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

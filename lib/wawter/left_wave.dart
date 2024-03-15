import 'package:flutter/material.dart';

class LeftWave extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4995224, size.height * 0.9944847);
    path_0.lineTo(size.width * 0.4995224, size.height * 0.9944663);
    path_0.lineTo(size.width * 0.00003528420, size.height * 0.9944847);
    path_0.lineTo(size.width * 0.00003528420, size.height * 0.1385840);
    path_0.cubicTo(
        size.width * 0.00003528420,
        size.height * 0.1385840,
        size.width * 0.08644847,
        size.height * -0.03529393,
        size.width * 0.1684695,
        size.height * 0.008511963);
    path_0.cubicTo(
        size.width * 0.2504883,
        size.height * 0.05232000,
        size.width * 0.2453627,
        size.height * 0.2812969,
        size.width * 0.3281149,
        size.height * 0.3138141);
    path_0.cubicTo(
        size.width * 0.4108671,
        size.height * 0.3463294,
        size.width * 0.4995224,
        size.height * 0.1385515,
        size.width * 0.4995224,
        size.height * 0.1385515);
    path_0.lineTo(size.width * 0.4995224, size.height * 0.1385840);
    path_0.cubicTo(
        size.width * 0.4997648,
        size.height * 0.1380957,
        size.width * 0.5860503,
        size.height * -0.03523258,
        size.width * 0.6679551,
        size.height * 0.008511963);
    path_0.cubicTo(
        size.width * 0.7499749,
        size.height * 0.05232000,
        size.width * 0.7448492,
        size.height * 0.2812969,
        size.width * 0.8276014,
        size.height * 0.3138141);
    path_0.cubicTo(
        size.width * 0.9103537,
        size.height * 0.3463294,
        size.width * 0.9989641,
        size.height * 0.1385840,
        size.width * 0.9989641,
        size.height * 0.1385840);
    path_0.lineTo(size.width * 0.9989641, size.height * 0.9944847);
    path_0.lineTo(size.width * 0.4995224, size.height * 0.9944847);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff84CAFF).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

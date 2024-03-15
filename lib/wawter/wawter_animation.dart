import 'package:flutter/material.dart';
import 'package:flutter_hasselback/wawter/left_wave.dart';
import 'package:flutter_hasselback/wawter/right_wave.dart';
import 'package:flutter_hasselback/wawter/sickle.dart';

const double diameter = 300;

// calculate size of wave shape
///
/// width = 556/300 =  1.85
/// height = 161/300 = 0.53

class WawterAnimation extends StatelessWidget {
  WawterAnimation({super.key, required this.controller})
      : val = Tween<double>(
                begin: (-diameter * 0.4245) - 5.6,
                end: (-diameter * -.425) + 5.6)
            .animate(CurvedAnimation(parent: controller, curve: Curves.linear));

  final AnimationController controller;
  final Animation<double> val;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) => Center(
        child: Stack(
          children: [
            Container(
              width: diameter,
              height: diameter,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color(0xFF4BB1FF).withOpacity(0.5),
                    width: 5.6),
                gradient: RadialGradient(
                  colors: [
                    const Color.fromARGB(255, 236, 248, 255),
                    const Color(0xFF70D3FF).withOpacity(0.6),
                    const Color(0xFF7CCDFF).withOpacity(0.6),
                  ],
                  stops: const [0, 0.98, 1],
                  tileMode: TileMode.clamp,
                ),
                shape: BoxShape.circle,
              ),
            ),
            Positioned(
              // 5 come from the border width
              // to make the shape inside the circle
              left: 5,
              right: 5,
              bottom: 5,
              child: CircleAvatar(
                radius: diameter / 2,
                backgroundColor: Colors.transparent,
                child: ClipOval(
                  child: Container(
                      alignment: Alignment.bottomRight,
                      transform: Matrix4.translationValues(-val.value, 0, 0),
                      child: OverflowBox(
                        alignment: Alignment.bottomCenter,
                        maxWidth: diameter * 2,
                        child: CustomPaint(
                          size: Size(
                            diameter * 1.83,
                            (diameter * 0.53).toDouble(),
                          ),
                          painter: LeftWave(),
                        ),
                      )),
                ),
              ),
            ),
            Positioned(
              // 5 come from the border width
              // to make the shape inside the circle
              left: 5,
              right: 5,
              bottom: 5,
              child: CircleAvatar(
                radius: diameter / 2,
                backgroundColor: Colors.transparent,
                child: ClipOval(
                  child: Container(
                      transform: Matrix4.translationValues(val.value, 0, 0),
                      alignment: Alignment.bottomRight,
                      child: OverflowBox(
                        alignment: Alignment.bottomCenter,
                        maxWidth: diameter * 2,
                        child: CustomPaint(
                          size: Size(
                            diameter * 1.83,
                            (diameter * 0.53).toDouble(),
                          ),
                          painter: RightWave(),
                        ),
                      )),
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              child: CustomPaint(
                size: Size(diameter / 2,
                    (diameter / 2 * 1.9109589041095891).toDouble()),
                painter: SickleShape(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

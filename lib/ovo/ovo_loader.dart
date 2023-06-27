import 'package:flutter/material.dart';

class OvoLoaderWidget extends StatelessWidget {
  OvoLoaderWidget({super.key, required this.controller})
      : transl = Tween<double>(begin: -20, end: 25).animate(CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 1.0, curve: Curves.fastOutSlowIn))),

        /// initial value is 0
        /// means that the size will scale up by 5
        scaleXY = Tween<double>(begin: 0, end: 5).animate(CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 0.5, curve: Curves.fastOutSlowIn))),
        scaleX = Tween<double>(begin: 15, end: 25).animate(CurvedAnimation(
            parent: controller,
            curve: const Interval(0.25, 0.4, curve: Curves.fastOutSlowIn))),
        scaleY = Tween<double>(begin: 15, end: 25).animate(CurvedAnimation(
            parent: controller,
            curve: const Interval(0.4, 1.0, curve: Curves.fastOutSlowIn))),
        scaleXY2 = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
            parent: controller,
            curve: const Interval(0.9, 1.0, curve: Curves.fastOutSlowIn)));

  final AnimationController controller;

  /// animate the translation left and rigth circle
  final Animation<double> transl;

  /// animate size 
  final Animation<double> scaleXY;

  /// the scale  x and y is not start at the same time
  /// we can see the shape is oval in the middle.
  ///  so first scale up only the width
  final Animation<double> scaleX;

  /// scale y to increase height of center
  final Animation<double> scaleY;

  /// in the end, the center circle size is bigger
  /// we need to add radius x and y 
  final Animation<double> scaleXY2;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// left circle
              Container(
                transform: Matrix4.translationValues(transl.value, 0, 0),
                width: 15,
                height: 15,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.indigo,
                ),
              ),

              /// build center circle
              Container(
                // padding: EdgeInsets.all(padd.value),
                // scale x ==>> increse width
                width: scaleX.value + scaleXY.value + scaleXY2.value,
                // scale y ==>> incere the height
                height: scaleY.value + scaleXY.value + scaleXY2.value,
                decoration: const ShapeDecoration(
                    shape: OvalBorder(), color: Colors.indigo),
              ),

              /// right circler
              Container(
                transform: Matrix4.translationValues(
                    -transl.value, 0, 0), // set negatif
                width: 15,
                height: 15,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.indigo,
                ),
              ),
            ],
          );
        });
  }
}

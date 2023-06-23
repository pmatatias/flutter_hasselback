import 'package:flutter/material.dart';

class OvoLoaderWidget extends StatelessWidget {
  OvoLoaderWidget({super.key, required this.controller})
      : transl = Tween<double>(begin: -20, end: 25).animate(CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 1.0, curve: Curves.fastOutSlowIn))),

        /// initial value is 5
        /// means that size will reduced by 5
        padd = Tween<double>(begin: 5, end: 0).animate(CurvedAnimation(
            parent: controller,
            curve: const Interval(0.0, 0.5, curve: Curves.fastOutSlowIn))),
        scaleX = Tween<double>(begin: 15, end: 25).animate(CurvedAnimation(
            parent: controller,
            curve: const Interval(0.3, 0.6, curve: Curves.fastOutSlowIn))),
        scaleY = Tween<double>(begin: 15, end: 25).animate(CurvedAnimation(
            parent: controller,
            curve: const Interval(0.4, 1.0, curve: Curves.fastOutSlowIn))),
        padd2 = Tween<double>(begin: 5, end: 0).animate(CurvedAnimation(
            parent: controller,
            curve: const Interval(0.9, 1.0, curve: Curves.fastOutSlowIn)));

  final AnimationController controller;
  final Animation<double> transl;

  /// animate padding
  final Animation<double> padd;

  /// the scale  x and y is not start at the same time
  /// we can see the shape is oval in the middle.
  ///  so first scale up only the width
  final Animation<double> scaleX;

  /// scale y to increase height of center
  final Animation<double> scaleY;

  /// in the end, the center circle size is bigger
  /// use padding to limit the size
  /// and then reduce the padding until zero at the end of animation
  final Animation<double> padd2;

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
              Padding(
                padding: EdgeInsets.all(padd2.value),
                child: Container(
                  padding: EdgeInsets.all(padd.value),
                  // scale x ==>> increse width
                  width: scaleX.value,
                  // scale y ==>> incere the height
                  height: scaleY.value,
                  decoration: const ShapeDecoration(
                      shape: OvalBorder(), color: Colors.indigo),
                ),
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

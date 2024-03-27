import 'package:flutter/material.dart';
import 'package:flutter_hasselback/wawter/wawter_animation.dart';

class WawterView extends StatefulWidget {
  const WawterView({super.key});

  @override
  State<WawterView> createState() => _WawterViewState();
}

class _WawterViewState extends State<WawterView>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WawterAnimation(controller: controller),
            // const Divider(),
            // WawterAnimation(controller: controller),
          ],
        ),
      ),
    );
  }
}

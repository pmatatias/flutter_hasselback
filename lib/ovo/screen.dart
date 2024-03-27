import 'package:flutter/material.dart';
import 'package:flutter_hasselback/ovo/ovo_loader.dart';

class OvoView extends StatefulWidget {
  const OvoView({super.key});

  @override
  State<OvoView> createState() => _OvoViewState();
}

class _OvoViewState extends State<OvoView> with TickerProviderStateMixin {
  late AnimationController _ctrl;
  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    _ctrl.repeat(reverse: true);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Container(
            height: 120,
            width: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: OvoLoaderWidget(controller: _ctrl)),
      ),
    );
  }
}

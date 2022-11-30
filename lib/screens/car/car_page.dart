import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animated_example/utils/app_images.dart';

class CarPage extends StatefulWidget {
  const CarPage({Key? key}) : super(key: key);

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 5),
    vsync: this,
  )
    ..repeat()
    ..addListener(() {});

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Builder"),
      ),
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: 400,
              height: 750,
              child: Image.asset(AppImages.image_car),
            ),
          ),
          Positioned(
            top: 82,
            left: 65,
            child: wheelMethod(),
          ),
          Positioned(
            top: 536,
            left: 65,
            child: wheelMethod(),
          ),
        ],
      ),
    );
  }

  AnimatedBuilder wheelMethod() {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(
        width: 125,
        height: 125,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: ClipRRect(
          child: Image.asset(AppImages.image_wheel),
        ),
      ),
      builder: (BuildContext context, Widget? child) {
        return RotationTransition(
          turns: Tween<double>(begin: 5, end: 0).animate(
            CurvedAnimation(
              parent: _controller,
              curve: Curves.linear,
            ),
          ),
          child: child,
        );
      },
    );
  }
}

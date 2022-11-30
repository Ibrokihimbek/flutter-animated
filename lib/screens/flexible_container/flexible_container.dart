import 'dart:math';

import 'package:flutter/material.dart';

class FlexibleContainerPage extends StatefulWidget {
  const FlexibleContainerPage({Key? key}) : super(key: key);

  @override
  State<FlexibleContainerPage> createState() => _FlexibleContainerPageState();
}

class _FlexibleContainerPageState extends State<FlexibleContainerPage>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
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
        title: const Text("Flexible Container"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              
              color: Colors.blue,
            ),
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 8 * pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}

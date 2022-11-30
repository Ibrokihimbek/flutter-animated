import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animated_example/widgets/custom_appbar_widget.dart';
import 'dart:math' as math;

class ChangedSizePage extends StatefulWidget {
  const ChangedSizePage({super.key});

  @override
  State<ChangedSizePage> createState() => _ChangedSizePageState();
}

class _ChangedSizePageState extends State<ChangedSizePage> {
  num width = 120;
  num height = 90;
  num borderRadius = 20;
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBar(title: 'Flexible Container'),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: AnimatedContainer(
              curve: Curves.easeInToLinear,
              width: width.toDouble(),
              height: height.toDouble(),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius.toDouble()),
                  color: color),
              duration: const Duration(milliseconds: 900),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            color = Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0);
            width = 20 + math.Random().nextInt(200);
            height = 30 + math.Random().nextInt(200);
            borderRadius = 10 + math.Random().nextInt(60);
          });
        },
      ),
    );
  }
}

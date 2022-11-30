import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_animated_example/widgets/custom_appbar_widget.dart';

class IndicatorPage extends StatefulWidget {
  const IndicatorPage({Key? key}) : super(key: key);

  @override
  State<IndicatorPage> createState() => _IndicatorPageState();
}

class _IndicatorPageState extends State<IndicatorPage> {
  int percent = 0;
  Color color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBar(title: 'Indicator'),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                height: 90,
                width: 90,
                decoration: BoxDecoration(shape: BoxShape.circle, color: color),
                duration: const Duration(seconds: 1),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 30,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedContainer(
                      height: 30,
                      width: percent * 3.toDouble(),
                      color: Colors.blue,
                      duration: const Duration(milliseconds: 800),
                    ),
                    Expanded(
                      child: Container(
                          color: const Color(0xFF5AC5F7))
                    )
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(percent != 100 ? "$percent%" : "Done!"),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  color = Color((Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(1.0);
                  bool isFound = true;
                  while (isFound) {
                    int minus = 100 - percent;
                    int nextpercent =
                        Random().nextInt(percent + (percent > 95 ? minus : 18));
                    if (nextpercent > percent + 5 && nextpercent < 101) {
                      percent = nextpercent;
                      isFound = false;
                      setState(() {});
                    }
                    if (percent == 100) {
                      percent = 0;
                      isFound = false;
                      setState(() {});
                    }
                    if (percent > 95) {
                      percent = 100;
                      isFound = false;
                      setState(() {});
                    }
                  }
                },
                child: const Text('Animate'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

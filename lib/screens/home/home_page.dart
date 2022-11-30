import 'package:flutter/material.dart';
import 'package:flutter_animated_example/screens/app_rout.dart';
import 'package:flutter_animated_example/widgets/custom_appbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBar(title: 'Home'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutName.car);
                },
                child: const Text(
                  'Car',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutName.changedColor);
                },
                child: const Text(
                  'Color Changed',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutName.positioned);
                },
                child: const Text(
                  'Positioned',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutName.changedSize);
                },
                child: const Text(
                  'Changed Size',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutName.flexible);
                },
                child: const Text(
                  'Flexible Container',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutName.indicator);
                },
                child: const Text(
                  'Indicator',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutName.border);
                },
                child: const Text(
                  'Changed Border',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutName.pageView);
                },
                child: const Text(
                  'Page view',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

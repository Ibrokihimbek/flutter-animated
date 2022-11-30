import 'package:flutter/material.dart';
import 'package:flutter_animated_example/widgets/custom_appbar_widget.dart';

class ColorChangedPage extends StatefulWidget {
  const ColorChangedPage({super.key});

  @override
  State<ColorChangedPage> createState() => _ColorChangedPageState();
}

bool changeColor = true;
double _fontSize = 14;

class _ColorChangedPageState extends State<ColorChangedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBar(title: 'Color Changed'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(seconds: 3),
              width: 200,
              height: 200,
              color: changeColor ? Colors.orange : Colors.green,
              child: Center(
                child: AnimatedDefaultTextStyle(
                  duration: const Duration(seconds: 3),
                  curve: Curves.easeInSine,
                  style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: _fontSize),
                  child: Text(changeColor
                      ? 'This is First Widget'
                      : 'This is Second Widget'),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    changeColor = !changeColor;
                  });
                },
                child: const Text('Click here'))
          ],
        ),
      ),
    );
  }
}

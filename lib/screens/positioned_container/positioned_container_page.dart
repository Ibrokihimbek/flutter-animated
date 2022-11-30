import 'package:flutter/material.dart';
import 'package:flutter_animated_example/widgets/custom_appbar_widget.dart';

class PositionedContainerPage extends StatefulWidget {
  const PositionedContainerPage({Key? key}) : super(key: key);

  @override
  State<PositionedContainerPage> createState() =>
      _PositionedContainerPageState();
}

class _PositionedContainerPageState extends State<PositionedContainerPage> {

  double top = 150;
  double left = 165;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBar(title: 'Animated Positioned'),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 400,
            child: Stack(
              children: [
                AnimatedPositioned(
                  top: top,
                  left: left,
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    color: Colors.red,
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 365,
            child: Stack(children: [
              Positioned(
                top: 160,
                left: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      top = 150;
                      left = 40;
                    });
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 50,
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: 170,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      top = 150;
                      left = 165;
                    });
                  },
                  child: const Icon(
                    Icons.center_focus_strong,
                    size: 50,
                  ),
                ),
              ),
              Positioned(
                top: 240,
                left: 170,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      top = 250;
                      left = 165;
                    });
                  },
                  child: const Icon(
                    Icons.arrow_downward_sharp,
                    size: 50,
                  ),
                ),
              ),
              Positioned(
                top: 160,
                left: 290,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      top = 150;
                      left = 280;
                    });
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 50,
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 170,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      top = 50;
                      left = 165;
                    });
                  },
                  child: const Icon(
                    Icons.arrow_upward_outlined,
                    size: 50,
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
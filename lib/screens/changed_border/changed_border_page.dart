import 'package:flutter/material.dart';
import 'package:flutter_animated_example/widgets/custom_appbar_widget.dart';

class ChangedBorderPage extends StatefulWidget {
  const ChangedBorderPage({Key? key}) : super(key: key);

  @override
  _ChangedBorderPageState createState() => _ChangedBorderPageState();
}

class _ChangedBorderPageState extends State<ChangedBorderPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation colorAnimation;
  late Animation sizeAnimationBorderWith;
  late Animation borderSizeAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    colorAnimation =
        ColorTween(begin: Colors.yellow, end: Colors.blue).animate(controller);

    borderSizeAnimation =
        Tween<double>(begin: 100.0, end: 10.0).animate(controller);
    sizeAnimationBorderWith =
        Tween<double>(begin: 1.0, end: 30.0).animate(controller);

    controller.addListener(() {
      setState(() {});
    });

    controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBar(title: 'Changed Border'),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: sizeAnimationBorderWith.value,
            ),
            color: colorAnimation.value,
            borderRadius: BorderRadius.circular(borderSizeAnimation.value),
          ),
        ),
      ),
    );
  }
}

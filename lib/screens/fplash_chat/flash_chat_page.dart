import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animated_example/utils/app_images.dart';

class FlashChatPage extends StatefulWidget {
  const FlashChatPage({super.key});

  @override
  State<FlashChatPage> createState() => _FlashChatPageState();
}

class _FlashChatPageState extends State<FlashChatPage> {
  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flash Chat'),
      ),
      body: Center(
        child: PhotoHero1(
          photo: AppImages.image_lighting,
          width: 40.0,
          onTap: (word) {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(word == 'Log In' ? 'Log In' : 'Register'),
                    ),
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PhotoHero(
                          photo: AppImages.image_lighting,
                          width: 200.0,
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        const SizedBox(height: 24),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 14),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 18),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: word != 'Log In'
                                  ? const Color(0xFF2521F3)
                                  : Colors.blue,
                            ),
                            child:  Center(
                              child: Text(
                                word == 'Log In' ?
                                'Log In' : 'Register',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class PhotoHero extends StatelessWidget {
  const PhotoHero({
    Key? key,
    required this.photo,
    required this.onTap,
    required this.width,
  }) : super(key: key);

  final String photo;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

class PhotoHero1 extends StatelessWidget {
  const PhotoHero1({
    Key? key,
    required this.photo,
    required this.onTap,
    required this.width,
  }) : super(key: key);

  final String photo;
  final ValueChanged<String> onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width,
              child: Hero(
                tag: photo,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      onTap('Flash Chat');
                    },
                    child: Image.asset(
                      photo,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              'Flash Chat',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.grey),
            )
          ],
        ),
        const SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              onTap('Log In');
            },
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child: const Center(
                  child: Text('Log In',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white))),
            ),
          ),
        ),
        const SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              onTap('Register');
            },
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFF2521F3),
              ),
              child: const Center(
                child: Text(
                  'Register',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

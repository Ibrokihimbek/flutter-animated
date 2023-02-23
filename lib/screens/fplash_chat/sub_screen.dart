import 'package:flutter/material.dart';
import 'package:flutter_animated_example/screens/fplash_chat/flash_chat_page.dart';
import 'package:flutter_animated_example/utils/app_images.dart';

class SubPage extends StatelessWidget {
  final String word;
  const SubPage({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
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
                color: word != 'Log In' ? const Color(0xFF2521F3) : Colors.blue,
              ),
              child: Center(
                child: Text(
                  word == 'Log In' ? 'Log In' : 'Register',
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
  }
}

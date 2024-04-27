import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 269,
            color: const Color.fromARGB(167, 255, 255, 255),
          ),
          const SizedBox(height: 64),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 44),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              padding: const EdgeInsets.all(12),
              backgroundColor: const Color.fromARGB(255, 25, 25, 25),
            ),
            icon: const Icon(Icons.arrow_circle_right),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}

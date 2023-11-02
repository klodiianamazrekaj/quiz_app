import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(221, 37, 34, 34),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 50),
          FilledButton.icon(
                  onPressed: startQuiz,
                  style: FilledButton.styleFrom(
                    foregroundColor: const Color.fromARGB(221, 37, 34, 34),
                    backgroundColor: const Color.fromARGB(255, 232, 206, 129),
                  ),
                  label: const Text('Start Quiz'),
                  icon: const Icon(Icons.arrow_right_alt_sharp),
                ),
        ],
      ),
    );
  }
}

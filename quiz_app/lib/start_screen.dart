import 'package:flutter/material.dart';
import 'package:quiz_app/shared/myText.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.quizScreen, {super.key});

  final void Function() quizScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 250,
            color: Colors.white.withOpacity(0.6),
          ),
          const SizedBox(
            height: 50,
          ),
          const MyStyle(text: "Learn Flutter in a Fun Way"),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
            onPressed: quizScreen,
            icon: const Icon(Icons.arrow_right_alt, color: Colors.white,),
            label: const Text(
              "Start Quiz",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

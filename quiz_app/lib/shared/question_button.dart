import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton(
      {super.key, required this.answerText, required this.onTap});
  final String answerText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 244, 54, 219),
        textStyle: const TextStyle(color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
      onPressed: (){onTap();},
      child: Text(answerText, style: const TextStyle(color: Colors.white),),
    );
  }
}

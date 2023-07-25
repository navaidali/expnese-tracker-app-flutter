import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_scree.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen='results-screen';
      });
    }
  }

  void restartQuiz(){
    setState(() {
      selectedAnswers.clear();
      activeScreen='questions-screen';
    });
  }

  

  @override
  Widget build(context) {

    Widget ScreenWidget = StartScreen(switchScreen);

    if(activeScreen=='questions-screen'){
      ScreenWidget=QuestionScreen(onSelectAnswer: chooseAnswer);
    }

    if(activeScreen=='results-screen'){
      ScreenWidget= ResultsScreem(choosenAnswers: selectedAnswers, onRestart: restartQuiz,);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.purple,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: ScreenWidget,
        ),
      ),
    );
  }
}
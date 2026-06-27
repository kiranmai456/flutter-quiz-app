import 'package:flutter/material.dart';

import 'data/quiz_data.dart';
import 'models/answer.dart';
import 'screens/result_screen.dart';
import 'widgets/answer_button.dart';
import 'widgets/progress_indicator_widget.dart';
import 'widgets/question_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentQuestion = 0;
  int totalScore = 0;

  void answerQuestion(int score) {
    setState(() {
      totalScore += score;
      currentQuestion++;
    });
  }

  void restartQuiz() {
    setState(() {
      currentQuestion = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isFinished = currentQuestion >= questions.length;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Quiz App'),
        ),
        body: isFinished
            ? ResultScreen(
                score: totalScore,
                restartQuiz: restartQuiz,
              )
            : Column(
                children: [
                  QuizProgress(
                    current: currentQuestion + 1,
                    total: questions.length,
                  ),
                  QuestionCard(
                    question:
                        questions[currentQuestion].questionText,
                  ),
                  ...(questions[currentQuestion].answers)
                      .map(
                        (Answer answer) => AnswerButton(
                          text: answer.text,
                          onPressed: () =>
                              answerQuestion(answer.score),
                        ),
                      ),
                ],
              ),
      ),
    );
  }
}
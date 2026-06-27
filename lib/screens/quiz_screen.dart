import 'package:flutter/material.dart';

import '../models/question.dart';
import '../models/answer.dart';
import '../widgets/question_card.dart';
import '../widgets/answer_button.dart';
import '../widgets/progress_indicator_widget.dart';

class QuizScreen extends StatelessWidget {
  final List<Question> questions;
  final int currentQuestion;
  final Function(int) onAnswerSelected;

  const QuizScreen({
    super.key,
    required this.questions,
    required this.currentQuestion,
    required this.onAnswerSelected,
  });

  @override
  Widget build(BuildContext context) {
    final Question question = questions[currentQuestion];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        QuizProgress(
          current: currentQuestion + 1,
          total: questions.length,
        ),

        QuestionCard(
          question: question.questionText,
        ),

        const SizedBox(height: 10),

        ...question.answers.map(
          (Answer answer) => AnswerButton(
            text: answer.text,
            onPressed: () => onAnswerSelected(answer.score),
          ),
        ),
      ],
    );
  }
}
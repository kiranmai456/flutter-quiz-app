import 'package:quiz_app/models/answer.dart';

class Question {
  final String questionText;
  final List<Answer> answers;

  const Question({
    required this.questionText,
    required this.answers,
  });
}
import '../models/question.dart';
import '../models/answer.dart';

const questions = [
  Question(
    questionText: 'Which language is used for Flutter?',
    answers: [
      Answer(text: 'Dart', score: 10),
      Answer(text: 'Java', score: 0),
      Answer(text: 'Python', score: 0),
      Answer(text: 'C++', score: 0),
    ],
  ),
  Question(
    questionText: 'Who developed Flutter?',
    answers: [
      Answer(text: 'Google', score: 10),
      Answer(text: 'Microsoft', score: 0),
      Answer(text: 'Apple', score: 0),
      Answer(text: 'Amazon', score: 0),
    ],
  ),
  Question(
    questionText: 'State management improves?',
    answers: [
      Answer(text: 'Code organization', score: 10),
      Answer(text: 'Battery life', score: 0),
      Answer(text: 'Internet speed', score: 0),
      Answer(text: 'RAM size', score: 0),
    ],
  ),
];
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final VoidCallback restartQuiz;

  const ResultScreen({
    super.key,
    required this.score,
    required this.restartQuiz,
  });

  String get resultPhrase {
    if (score >= 30) {
      return 'Excellent!';
    }
    if (score >= 20) {
      return 'Good Job!';
    }
    return 'Keep Learning!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Score: $score',
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: restartQuiz,
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
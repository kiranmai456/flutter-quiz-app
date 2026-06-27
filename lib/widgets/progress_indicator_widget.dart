import 'package:flutter/material.dart';

class QuizProgress extends StatelessWidget {
  final int current;
  final int total;

  const QuizProgress({
    super.key,
    required this.current,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: LinearProgressIndicator(
        value: current / total,
      ),
    );
  }
}
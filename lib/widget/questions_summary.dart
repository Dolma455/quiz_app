import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Text(((data['questions_index'] as int) + 1).toString()),
            Column(
              children: [
                Text(data['questions'] as String),
                const SizedBox(
                  height: 16,
                ),
                Text(data['user_answer'] as String),
                Text(data['correct_answer'] as String),
              ],
            )
          ],
        );
      }).toList(),
    );
  }
}

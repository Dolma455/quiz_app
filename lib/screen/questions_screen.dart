import 'package:flutter/material.dart';
import 'package:quiz_app_ad_basics/widget/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The questions',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'Answer 1', onTap: () {}),
          const SizedBox(
            height: 16,
          ),
          AnswerButton(answerText: 'Answer 2', onTap: () {}),
          const SizedBox(
            height: 16,
          ),
          AnswerButton(answerText: 'Answer 3', onTap: () {}),
          const SizedBox(
            height: 16,
          ),
          AnswerButton(answerText: 'Answer 4', onTap: () {})
        ],
      ),
    );
  }
}

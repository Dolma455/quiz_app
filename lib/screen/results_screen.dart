import 'package:flutter/material.dart';
import 'package:quiz_app_ad_basics/data/questions.dart';
import 'package:quiz_app_ad_basics/widget/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestartQuiz,
  });
  final Function onRestartQuiz;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'questions_index': i,
        'questions': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestion = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 500,
        child: Container(
          margin: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "You anwered $numCorrectQuestion out of $numTotalQuestions"),
                const SizedBox(
                  height: 30,
                ),
                QuestionSummary(summaryData: getSummaryData()),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      onRestartQuiz();
                    },
                    child: const Text("Restart Quiz!"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

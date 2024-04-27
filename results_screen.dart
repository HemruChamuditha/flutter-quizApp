import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary/questions_summery.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, this.restart, {super.key});

  final List<String> chosenAnswers;
  final void Function() restart;

  List<Map<String, Object>> get summeryData {
    List<Map<String, Object>> summery = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summery.add(
        {
          "question_index": i,
          "correct_answer": questions[i].answers[0],
          "user_answer": chosenAnswers[i],
          "question": questions[i].text,
        },
      );
    }
    return summery;
  }

  @override
  Widget build(context) {
    final totalNumQuestion = questions.length;
    final correctQuestionCount = summeryData
        .where(
          (data) => data["correct_answer"] == data["user_answer"],
        )
        .length;

    return SizedBox(
      width: double.infinity,
      //Containers with no children try to be as big as possible
      //unless the incoming constraints are unbounded
      child: Container(
        //margin
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You have answered $correctQuestionCount out of $totalNumQuestion Questions correctly",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            QuestionsSummery(summeryData),
            const SizedBox(
              height: 50,
            ),
            TextButton.icon(
              onPressed: restart,
              icon: const Icon(
                Icons.replay_circle_filled_rounded,
                color: Colors.white,
              ),
              label: const Text("Restart Quiz"),
            )
          ],
        ),
      ),
    );
  }
}

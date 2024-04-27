import 'package:adv_basics/questions_summary/summery_item.dart';
import 'package:flutter/material.dart';

class QuestionsSummery extends StatelessWidget {
  const QuestionsSummery(this.summeryData, {super.key});
  final List<Map<String, Object>> summeryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summeryData.map(
            (data) {
              return  SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}

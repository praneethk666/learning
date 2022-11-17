import 'package:flutter/material.dart';
import 'package:learning/ques.dart';
import 'package:learning/answers.dart';
class Q extends StatelessWidget {
  final List<Map<String,Object>> quesions;
  final Function answerQuestion;
  final int qIndex;
   // ignore: use_key_in_widget_constructors
   const Q( this.answerQuestion,this.quesions,this.qIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Questions(
                  quesions[qIndex]['quesText'].toString(),
                ),
                const SizedBox(
                  height: 10,
                ),
                ...(quesions[qIndex]['ans'] as List<Map<String,Object>>).map((q) {
                  return Ans(()=>answerQuestion(q["score"]), q["text"].toString());
                }).toList(),
              ],
            );
  }
}
import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height*0.55,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: summaryData.map((data) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: data['user_answer']== data['correct_answer']? Colors.green : Colors.red,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                  ),
                ),

                const SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['question'] as String, style:const  TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
                      const SizedBox(height: 5),
                      Text(data['user_answer' ] as String, style: const TextStyle(color: Colors.deepOrange, fontSize: 14, fontWeight: FontWeight.w500),),
                      const SizedBox(height: 5),
                      Text(data['correct_answer'] as String , style: const TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500),),
                      const SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz/modules/qust_answer.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.inds});
  final List<int> inds;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result Screen"),
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: Column(
            children: [
              const Text(
                "Hay, You finish your Quiz",
                style: TextStyle(color: Colors.teal, fontSize: 25.0),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: quistons.length,
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          quistons[index].question,
                          style: const TextStyle(
                              color: Colors.amber, fontSize: 25.0),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          quistons[index].answers[inds[index]],
                          style: const TextStyle(
                              color: Colors.teal, fontSize: 25.0),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Text(
                "Congratulation",
                style: TextStyle(color: Colors.teal, fontSize: 25.0),
              ),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz/modules/qust_answer.dart';
import 'package:quiz/screens/result.dart';
import '../modules/button_answer.dart';

int ind = 0;

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> anss = [0, 0, 0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                quistons[ind].question,
                style: const TextStyle(color: Colors.black, fontSize: 25.0),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: quistons[ind].answers.length,
                itemBuilder: (context, index) => ButtonAnswer(
                  answer: quistons[ind].answers[index],
                  onPress: () {
                    anss[ind] = index;
                    // print(ind);
                    if (ind == quistons.length - 1) {
                      // print(anss);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultScreen(
                              inds: anss,
                            ),
                          ));
                      setState(() {
                        ind = 0;
                      });
                      // anss.clear();
                    } else {
                      setState(() {
                        ind++;
                      });
                    }
                  },
                ),
              ),
            )
          ]),
        ));
  }
}

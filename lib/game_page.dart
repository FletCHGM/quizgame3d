import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  QuizPage({required this.quest});
  final List quest;
  @override
  _QuizPageState createState() => _QuizPageState(quest: quest);
}

class _QuizPageState extends State<QuizPage> {
  int _curQuestion = 0;
  int _true = 0;
  final List quest;
  _QuizPageState({required this.quest});

  @override
  Widget build(BuildContext context) {
    const margin = 2.0;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(color: const Color.fromARGB(85, 0, 0, 0)),
            Positioned.fill(
              left: margin / 2,
              right: margin / 2,
              bottom: 425,
              child: Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      '${quest[_curQuestion].txt}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              left: margin / 2,
              right: margin / 2,
              top: 400 + margin,
              bottom: 0.0,
              child: Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: ListView(
                    padding: const EdgeInsets.only(top: 5),
                    children: [_getButtons(quest[_curQuestion].answers)]),
              ),
            ),
            const Positioned(
                top: 0,
                left: 0,
                child: BackButton(
                  color: Colors.black,
                ))
          ],
        ),
      ),
    );
  }

  _getButtons(Map? answers) {
    List<Widget> _buttons = [];
    for (var answer in answers!.keys) {
      _buttons.add(Center(
        child: SizedBox(
          width: 400,
          height: 80,
          child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(145, 255, 255, 255)),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                )))),
            child: Text(
              answer,
              style: const TextStyle(fontSize: 22, color: Colors.black),
            ),
            onPressed: () {
              if (answers[answer]) {
                _setQuestion(true);
              } else {
                _setQuestion(false);
              }
            },
          ),
        ),
      ));
      _buttons.add(const SizedBox(
        height: 20.0,
      ));
    }
    return ButtonBar(
      children: _buttons,
    );
  }

  _setQuestion(bool answer) {
    if (answer) {
      _true += 1;
    }
    if (quest.length > _curQuestion + 1) {
      setState(() {
        _curQuestion += 1;
      });
    } else if (quest.length == _curQuestion + 1) {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (_) => AlertDialog(
                title: Text(
                  'Result: $_true / ${quest.length}',
                  style: const TextStyle(fontSize: 20.0),
                ),
                actions: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 220,
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color.fromARGB(145, 255, 255, 255)),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  )))),
                              onPressed: () {
                                setState(() {
                                  _curQuestion = 0;
                                  _true = 0;
                                });
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Try again!',
                                textScaleFactor: 1.5,
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                        SizedBox(
                          width: 220,
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Color.fromARGB(145, 255, 255, 255)),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  )))),
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Back to materials',
                                textScaleFactor: 1.5,
                                style: TextStyle(color: Colors.black),
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ));
    }
  }
}

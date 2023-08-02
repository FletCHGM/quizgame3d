import 'package:flutter/material.dart';

import 'card_image.dart';
import 'game_page.dart';

class CardFlowDetailPage extends StatelessWidget {
  final String? image;
  final String? name;
  final String? text;
  final double? angle;
  final questions;

  const CardFlowDetailPage({
    Key? key,
    this.image,
    this.name,
    this.text,
    this.angle,
    this.questions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const margin = 5.0;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(color: const Color.fromARGB(85, 0, 0, 0)),
            Positioned.fill(
              left: margin / 2,
              right: margin / 2,
              top: 300 + margin,
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
                    padding: const EdgeInsets.only(top: 10),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 5.0),
                        child: ListTile(
                          title: Text(
                            name!,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 5.0),
                        child: ListTile(
                          title: Text(
                            text!,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            Positioned(
              height: 300,
              top: 5,
              left: 5,
              right: 5,
              child: CardImage(
                image: image,
                angle: angle,
              ),
            ),
            const Positioned(
              left: margin,
              top: margin,
              child: BackButton(
                color: Colors.grey,
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(
                    Icons.gamepad,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuizPage(quest: questions)));
                  },
                ))
          ],
        ),
      ),
    );
  }
}

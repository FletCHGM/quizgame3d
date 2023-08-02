import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'card_flow_detail_page.dart';
import 'card_info.dart';
import 'card_image.dart';

const itemHeight = 220.0;
const itemFactor = 0.8;

class CardGridMenu extends StatefulWidget {
  @override
  _CardGridMenuState createState() => _CardGridMenuState();
}

class _CardGridMenuState extends State<CardGridMenu> {
  bool isGoingDown = false;

  final _pageController = PageController();
  final _pageNotifier = ValueNotifier<double>(0.0);
  int numberOfElements = cardList.length;

  void _onTapCard(String? image, String? name, String? text, List? questions,
      double angle) {
    final page = CardFlowDetailPage(
        image: image,
        name: name,
        text: text,
        questions: questions,
        angle: angle);
    Navigator.of(context).push(
      PageRouteBuilder<Null>(
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return FadeTransition(
            opacity: animation,
            child: page,
          );
        },
        transitionDuration: const Duration(milliseconds: 700),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
                child: ValueListenableBuilder<double>(
                    valueListenable: _pageNotifier,
                    builder: (context, value, child) {
                      return GridView.builder(
                        padding:
                            const EdgeInsets.only(top: 25, left: 25, right: 25),
                        controller: _pageController,
                        itemCount: cardList.length,
                        itemBuilder: (context, index) {
                          final t =
                              (index * itemHeight * itemFactor - value).abs() /
                                  numberOfElements;
                          final rotationY = lerpDouble(0.0, 2, t)! - 360.0;
                          return SizedBox(
                            child: InkWell(
                              onTap: () {
                                _onTapCard(
                                    cardList[index].image,
                                    cardList[index].name,
                                    cardList[index].text,
                                    cardList[index].questions,
                                    rotationY);
                              },
                              child: SizedBox(
                                height: itemHeight,
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Positioned.fill(
                                      child: CardImage(
                                        image: cardList[index].image,
                                        angle: rotationY,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 50,
                                        decoration: const BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black87,
                                              spreadRadius: 10,
                                              blurRadius: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 15,
                                      left: 15,
                                      right: 15,
                                      child: Text(
                                        cardList[index].name!,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                      );
                    })),
            const Positioned(
                top: 0,
                left: 0,
                child: BackButton(
                  color: Colors.grey,
                  style: ButtonStyle(iconSize: MaterialStatePropertyAll(35)),
                ))
          ],
        ),
      ),
    );
  }
}

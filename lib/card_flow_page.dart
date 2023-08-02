import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math.dart' as vector;
import 'card_flow_detail_page.dart';
import 'card_info.dart';
import 'card_image.dart';
import 'card_grid_menu.dart';

const itemHeight = 220.0;
const itemFactor = 0.8;

class CardFlowPage extends StatefulWidget {
  @override
  _CardFlowPageState createState() => _CardFlowPageState();
}

class _CardFlowPageState extends State<CardFlowPage> {
  bool isGoingDown = false;

  final _pageController = PageController();
  final _pageNotifier = ValueNotifier<double>(0.0);
  double _lastOffset = 0.0;
  int numberOfElements = cardList.length;

  void _scrollListener() {
    _pageNotifier.value = _pageController.offset;

    if (_lastOffset < _pageNotifier.value) {
      isGoingDown = false;
    } else {
      isGoingDown = true;
    }
    _lastOffset = _pageNotifier.value;
  }

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
  void initState() {
    _pageController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.removeListener(_scrollListener);
    _pageController.dispose();
    super.dispose();
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
                      return ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding:
                            const EdgeInsets.only(top: 50, left: 25, right: 25),
                        controller: _pageController,
                        itemCount: cardList.length,
                        itemBuilder: (context, index) {
                          final t =
                              (index * itemHeight * itemFactor - value).abs() /
                                  numberOfElements;
                          final rotationY = lerpDouble(0.0, 2, t)! - 360.0;
                          return Align(
                            alignment: Alignment.bottomCenter,
                            heightFactor: itemFactor,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.002)
                                ..rotateX(vector.radians(rotationY)),
                              alignment: Alignment.center,
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    })),
            Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CardGridMenu())),
                    icon: const Icon(
                      Icons.menu_rounded,
                      size: 35,
                      color: Colors.grey,
                    )))
          ],
        ),
      ),
    );
  }
}

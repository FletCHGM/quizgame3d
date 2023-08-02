import 'package:flutter/material.dart';

import 'card_flow_page.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardFlowPage(),
    );
  }
}

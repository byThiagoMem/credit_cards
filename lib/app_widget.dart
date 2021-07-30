import 'package:estore/pages/cards_page.dart/cards_page.dart.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Store',
      debugShowCheckedModeBanner: false,
      home: CardsPage(),
    );
  }
}

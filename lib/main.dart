import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:dai_tuong_le_duc_anh/homepage.dart';

const MaterialColor myColor = Colors.brown;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dai Tuong Le Duc Anh",
      theme: ThemeData(
        primarySwatch: myColor,
        fontFamily: "Pacifico",
      ),
      home: HomePage(),
    );
  }
}

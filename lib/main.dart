import 'package:flutter/material.dart';
import 'package:musicapp/features/explore/view/explore_page.dart';
import 'package:musicapp/features/getting_started/view/getting_started_page.dart';
import 'package:musicapp/features/now_playing/view/now_playing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: Color(0xFF1F1D2B),
      ),
      home: GettingStartedPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

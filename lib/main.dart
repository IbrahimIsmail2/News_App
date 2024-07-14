import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/screen1.dart';
import 'package:news_app/screen2.dart';
import 'package:news_app/screen3.dart';
import 'package:news_app/screen4.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white, statusBarBrightness: Brightness.dark));
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iti News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme:
            const AppBarTheme(elevation: 0.0, backgroundColor: Colors.white),
      ),
      home: Screen4(),
    );
  }
}

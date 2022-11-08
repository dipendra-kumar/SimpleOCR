import 'package:flutter/material.dart';
import 'package:simple_ocr/home_page.dart';

void main() {
  runApp( const FlutterOCR());
}

class FlutterOCR extends StatelessWidget {
  const FlutterOCR({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey[200],
        primarySwatch: Colors.indigo
      ),
      home: const HomePage(),
    );
  }
}


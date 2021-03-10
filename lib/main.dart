import 'package:flutter/material.dart';
import 'package:jokenpo/screen/jokenpo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Jokenpo(),
    );
  }
}


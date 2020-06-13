import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/classA.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Inherited widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClassA(),
    );
  }
}

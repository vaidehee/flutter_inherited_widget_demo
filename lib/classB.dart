import 'package:flutter/material.dart';
import 'classC.dart';

class ClassB extends StatefulWidget {
  @override
  _ClassBState createState() => _ClassBState();
}

class _ClassBState extends State<ClassB> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: ClassC()),
    );
  }
}

import 'package:flutter/material.dart';
import 'classB.dart';
import 'my_inherited_class.dart';
import 'MyBoolValue.dart';

class ClassA extends StatefulWidget {
  @override
  _ClassAState createState() => _ClassAState();
}

class _ClassAState extends State<ClassA> {
  MyBoolValue myBoolValue = new MyBoolValue(false);

  @override
  Widget build(BuildContext context) {
    return MyInheritedClass(
      myBoolValue: myBoolValue,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(child: ClassB()),
            RaisedButton(
              onPressed: () {
                setState(() {
                  myBoolValue.boolValue = true;
                });
              },
              child: Text("Show Badge"),
            )
          ],
        ),
      ),
    );
  }
}

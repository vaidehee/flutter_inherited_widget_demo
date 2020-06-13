import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/MyBoolValue.dart';

class MyInheritedClass extends InheritedWidget {
  MyBoolValue myBoolValue;
  Widget child;

  MyInheritedClass({this.myBoolValue, this.child}) : super(child: child);

  @override
  bool updateShouldNotify(MyInheritedClass oldWidget) {
    return oldWidget != oldWidget.myBoolValue;
  }

  static MyInheritedClass of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();
}

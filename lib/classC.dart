import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/MyBoolValue.dart';
import 'package:flutter_inherited_widget/my_inherited_class.dart';

class ClassC extends StatefulWidget {
  @override
  _ClassCState createState() => _ClassCState();
}

class _ClassCState extends State<ClassC> {
  bool shouldShowBadge=false;
  @override
  Widget build(BuildContext context) {
    MyBoolValue myBoolValue=MyInheritedClass.of(context).myBoolValue;
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.cyan,
          width: 200.0,
          height: 50.0,
          padding: EdgeInsets.all(5.0),

          child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text("I'm just a button in class C",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20.0),)),
        ),

        Positioned(
          top: 0.0,
          right: 1.0,
          width: 20.0,
          height: 20.0,
          child: Visibility(
            visible: myBoolValue.boolValue,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red
              ),
              child: Text("1",style: TextStyle(color: Colors.white),),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import './login/login.dart';
import './calculator/calculator.dart';
import './enum/enum.dart';

class IMCCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: Enum.appName,
        home: Login(),
        routes: <String, WidgetBuilder>{
          '/login': (BuildContext context) => new Login(),
          '/calculator': (BuildContext context) => new Calculator(),
        });
  }
}

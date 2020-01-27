import 'package:flutter/material.dart';
import './login/login.dart';
import './enum/enum.dart';

class IMCCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Enum.appName,
      home: Login(),
    );
  }
}
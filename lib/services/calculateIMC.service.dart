import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CalculateIMCService {
  static Future<String> calcIMC(
      gender, age, heigth, weigth) async {
    final response = await http.get('http://api.open-notify.org/astros');
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      return json.decode(response.body);
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
    // debugPrint('$gender, $age, $heigth, $weigth');
    // return 'Teste ok';
  }
}

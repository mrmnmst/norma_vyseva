// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> caOtkrKatush(
  double? param1,
  double? param2,
) async {
  if (param1 != null && param2 != null) {
    double value = param1 / (param2 / 30 * 100);
    //value = functionRoundingDotFive(value);
    value = (value * 2).round() / 2;
    String roundedValue = value.toString();
    //String roundedValue = value.toStringAsFixed(1);
    value = double.parse(roundedValue);
    return value;
    //return roundedValue;
    //int roundedValue = value.round();
    //String ss = '$roundedValue';
    //return ss;
  } else {
    return 0;
  }

  // Add your function code here!
}

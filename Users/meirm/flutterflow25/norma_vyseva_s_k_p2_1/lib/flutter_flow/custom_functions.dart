import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

double? functionVOdnoMM(double? param1) {
  if (param1 != null) {
    double? value = (param1 / 30) * 100;
    String roundedValue = value.toStringAsFixed(1);

    value = double.parse(roundedValue);
    return value;
  } else {
    return 0;
  }
}

String functionDoubleToString(double value) {
  int value2 = value.toInt();
  if (value == value2) {
    return value2.toString();
  } else {
    return value.toString();
  }
}

double functionOkruglit(double value) {
  // Функция, которая округляет число до ближайшего целого или до значения с дробной частью .5

  return (value * 2).round() / 2;
}

double functionOborotKatka(double diametr) {
  diametr = diametr * 2;
  if (diametr >= 50 && diametr <= 55) {
    diametr = diametr / 100 * 3.14; // длина окружности катка
    diametr = 100 / (diametr * 2.1); // количество оборотов катка
    diametr = functionOkruglit(diametr);
    return diametr;
  } else {
    return 0; //"Диаметр катка должен быть не больше 55 см. и не меньше 50 см.";
  }
}

double functionRoundingDotFive(double number) {
  int whole = number.round();

  // Если разница между числом и целым числом меньше 0.25, возвращаем целое число
  if ((number - whole).abs() < 0.25) {
    return whole.toDouble();
  }

  // В противном случае, округляем до ближайшего .5
  return (whole + (number > whole ? 0.5 : -0.5));
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _oborotKatka = prefs.getDouble('ff_oborotKatka') ?? _oborotKatka;
    });
    _safeInit(() {
      _radiusKatka = prefs.getDouble('ff_radiusKatka') ?? _radiusKatka;
    });
    _safeInit(() {
      _lang = prefs.getString('ff_lang') ?? _lang;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _oborotKatka = 0.0;
  double get oborotKatka => _oborotKatka;
  set oborotKatka(double value) {
    _oborotKatka = value;
    prefs.setDouble('ff_oborotKatka', value);
  }

  double _radiusKatka = 0.0;
  double get radiusKatka => _radiusKatka;
  set radiusKatka(double value) {
    _radiusKatka = value;
    prefs.setDouble('ff_radiusKatka', value);
  }

  String _lang = '';
  String get lang => _lang;
  set lang(String value) {
    _lang = value;
    prefs.setString('ff_lang', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

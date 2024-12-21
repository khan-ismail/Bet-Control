import 'package:flutter/foundation.dart';

class Logging {
  Logging._internal();

  static Logging? _instance;

  static Logging getInstance() {
    _instance = _instance ?? Logging._internal();

    return _instance!;
  }

  void log(String message) {
    if (kDebugMode) {
      print(message);
    }
  }
}

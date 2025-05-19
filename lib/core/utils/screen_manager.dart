import 'package:flutter/widgets.dart';

class ScreenManager {
  static late double _screenWidth;
  static late double _screenHeight;
  static late double _pixelRatio;
  static late double _textScaleFactor;

  static late double _designWidth;
  static late double _designHeight;

  static bool _initialized = false;

  static void init({
    required BuildContext context,
    double designWidth = 375,
    double designHeight = 812,
  }) {
    final mediaQuery = MediaQuery.of(context);
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
    _pixelRatio = mediaQuery.devicePixelRatio;
    _textScaleFactor = mediaQuery.textScaleFactor;

    _designWidth = designWidth;
    _designHeight = designHeight;
    _initialized = true;
  }

  static double w(num width) {
    _checkInit();
    return width * (_screenWidth / _designWidth);
  }

  static double h(num height) {
    _checkInit();
    return height * (_screenHeight / _designHeight);
  }

  static double sp(num fontSize, {bool scaleWithText = true}) {
    _checkInit();
    double scaled = fontSize * (_screenWidth / _designWidth);
    return scaleWithText ? scaled * _textScaleFactor : scaled;
  }

  static double radius(num r) {
    _checkInit();
    return r * (_screenWidth / _designWidth);
  }

  static double get screenWidth {
    _checkInit();
    return _screenWidth;
  }

  static double get screenHeight {
    _checkInit();
    return _screenHeight;
  }

  static void _checkInit() {
    if (!_initialized) {
      throw Exception(
          "ScreenManager is not initialized. Call ScreenManager.init(context) in your main widget.");
    }
  }
}

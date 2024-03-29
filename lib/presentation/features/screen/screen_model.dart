import 'package:flutter/cupertino.dart';

class ScreenModel with ChangeNotifier {
  final Color _black = const Color(0xFF000000);
  final Color _white = const Color(0xFFFFFFFF);

  late Color _backgroundColor = _black;

  Color get backgroundColor => _backgroundColor;

  late Color _textColor = _white;

  Color get textColor => _textColor;

  late Color _buttonColor = _white;

  Color get buttonColor => _buttonColor;


  void onFabPressed() {
    _changeTextColor();
    _changeBackgroundColor();
    _changeButtonColor();
    notifyListeners();
  }

  void _changeBackgroundColor() {
    if (_backgroundColor == _white) {
      _backgroundColor = _black;
    } else {
      _backgroundColor = _white;
    }
  }

  void _changeButtonColor() {
    if (_buttonColor == _white) {
      _buttonColor = _black;
    } else {
      _buttonColor = _white;
    }
  }

  void _changeTextColor() {
    if (_textColor == _white) {
      _textColor = _black;
    } else {
      _textColor = _white;
    }
  }
}

import 'dart:math';

import 'package:flundr/common/constants/color_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DateInputTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DateInputTextFieldState();
  }
}

class _DateInputTextFieldState extends State<DateInputTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
        hintText: 'DD|MM|YYYY',
        hintStyle: TextStyle(color: textfieldColor)
      ),
      inputFormatters: [DateTextFormatter()],
      onChanged: (String value) {},
    );
  }
}

class DateTextFormatter extends TextInputFormatter {
  static const _maxChars = 8;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = _format(newValue.text, '/');
    return newValue.copyWith(text: text, selection: updateCursorPosition(text));
  }

  String _format(String value, String seperator) {
    value = value.replaceAll(seperator, '');
    var newString = '';

    for (int i = 0; i < min(value.length, _maxChars); i++) {
      newString += value[i];
      if ((i == 1 || i == 3) && i != value.length - 1) {
        newString += seperator;
      }
    }

    return newString;
  }

  TextSelection updateCursorPosition(String text) {
    return TextSelection.fromPosition(TextPosition(offset: text.length));
  }
}
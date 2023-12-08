import 'package:flutter/material.dart';

enum TextFieldType { email, password, mobile, any, numbers, datePicker,timePicker }

TextEditingController textcon = TextEditingController();

class TextFieldData {
  final String hint;
  final String? iconPath;
  final TextFieldType type;
  final TextEditingController textEditingController;
  final double textFieldHeight;
  final String? endIconPath;

  TextFieldData(
      {required this.hint,
      required this.type,
      this.iconPath,
      required this.textEditingController,
      this.textFieldHeight = 60,
      this.endIconPath});
}

class TextFieldReturnData {
  final bool isError;
  final String message;

  TextFieldReturnData({
    required this.isError,
    required this.message,
  });
}

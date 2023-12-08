import 'package:easy_localization/easy_localization.dart';
import 'package:hawdaj/core/errors/validations.dart';

import '../models/custom_text_feild_model.dart';

TextFieldReturnData textFieldValidation(
    String text, TextFieldType textFieldType) {
  String message = 'هذا الحقل مطلوب';
  bool isError = false;

  switch (textFieldType) {
    case TextFieldType.email:
      {
        if (text.isEmpty) {
          isError = true;
          break;
        } else if (Validations.isEmail(text) == false) {
          message ='ادخل بريد إلكتروني صحيح';
          isError = true;
          break;
        }
      }
      break;
    case TextFieldType.password:
      {
        if (text.isEmpty) {
          isError = true;
          break;
        } else if (text.length < 3) {
          message = 'الرقم السري قصير للغاية';
          isError = true;
          break;
        }
      }
      break;

    default:
      {
        if (text.isEmpty) {
          isError = true;
          break;
        }
      }
      break;
  }

  return TextFieldReturnData(isError: isError, message: message);
}

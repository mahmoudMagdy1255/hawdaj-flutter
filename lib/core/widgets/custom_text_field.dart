import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../errors/textFeildValidation.dart';
import '../models/custom_text_feild_model.dart';
import '../utils/assets.dart';
import '../utils/colors.dart';
import '../utils/styles.dart';

class CustomInputTextFeild extends StatefulWidget {
  CustomInputTextFeild(
      {Key? key,
        required this.textFieldData,
        required this.onValueChanged,
        this.onPressed,
        this.required,
        this.padding,
        this.onEndIconPressed,
        this.text,
        this.enabeld,
      })
      : super(key: key);

  TextFieldData textFieldData;
  final ValueChanged<String> onValueChanged;
  final void Function()? onPressed;
  final void Function()? onEndIconPressed;
  final EdgeInsets? padding;
  final bool? required;
  final String? text;
  final bool? enabeld;
  DateTime? initialDate;
  @override
  _CustomInputTextFeildState createState() => _CustomInputTextFeildState(
    textFieldData,
    onValueChanged,
    onPressed,
    padding,
    onEndIconPressed,
    text,
    enabeld,
    initialDate,
  );
}

class _CustomInputTextFeildState extends State<CustomInputTextFeild> {
  _CustomInputTextFeildState(
      this.textFieldData,
      this.onValueChanged,
      this.onPressed,
      this.padding,
      this.onEndIconPressed,
      this.text,
      this.enabeld,
      this.initialDate,
      );

  String? text;
  bool? enabeld;
  EdgeInsets? padding;
  void Function()? onEndIconPressed;
  void Function()? onPressed;
  TextFieldData textFieldData;
  final ValueChanged<String> onValueChanged;

  bool ishShowPassword = false;
  bool isShowError = false;
  bool isFocused = false;

  String? errorText;

  TextFieldReturnData? textFieldReturnData;

  DateTime startedDate = DateTime.now();
  final DateFormat dateFormat = DateFormat('yyyy-MM-dd');
  DateTime? initialDate;

  @override
  void initState() {
    if (text != null) {
      if (text!.isNotEmpty) {
        textFieldData.textEditingController.text = text ?? "";
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only( bottom: 24.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isShowError == false
                  ? const SizedBox()
                  : Row(
                children: [
                  SvgPicture.asset(Assets.warning,
                      width: 14, height: 14, fit: BoxFit.cover),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    errorText!,
                    style: const TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: onPressed ??
                    () async {
                  if (textFieldData.type == TextFieldType.datePicker) {
                    final date = await showDatePicker(
                        builder: (context, child) {
                          return Theme(
                            // data: Theme.of(context).copyWith(
                            data: ThemeData(
                              textTheme: const TextTheme(
                                labelSmall: Styles.textStyle14, //'select date'
                                headlineMedium: Styles.textStyle26, //'selectedDate'
                                titleSmall: Styles.textStyle18, // for 'month 2023'
                              ),
                              colorScheme: const ColorScheme.light(
                                primary: ColorsData.primary500,
                                onPrimary: Colors.white,
                                onSurface: ColorsData.primary500,
                              ),
                            ),
                            child: child!,
                          );
                        },
                        context: context,
                        firstDate: DateTime(1960),
                        initialDate:initialDate?? DateTime.now(),
                        lastDate: DateTime.now());
                    if (date != null) {
                      // TimeOfDay time = TimeOfDay.now();
                      FocusScope.of(context).requestFocus(new FocusNode());

                      startedDate = DateTime(
                        date.year,
                        date.month,
                        date.day,
                      );
                      textFieldData.textEditingController.text =
                          dateFormat.format(startedDate);

                      onValueChanged(startedDate.toString());
                    }

                    // if (picked != null) {
                    //   setState(() {
                    //     startTime = picked;
                    //
                    //     this.startedDate = DateTime(
                    //       date.year,
                    //       date.month,
                    //       date.day,
                    //       picked.hour,
                    //       picked.minute,
                    //     );
                    //   });
                    //   requestStart.text =
                    //       dateFormat.format(startedDate);
                    // }
                  } else if (textFieldData.type == TextFieldType.timePicker) {
                    final pickedTime = await showTimePicker(
                      initialTime: TimeOfDay.now(),
                      builder: (context, child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: const ColorScheme.light(
                              primary: ColorsData.primary500,
                              onPrimary: Colors.white,
                              onSurface: ColorsData.primary500,
                            ),
                            textButtonTheme: TextButtonThemeData(
                              style: TextButton.styleFrom(
                                foregroundColor:
                                ColorsData.primary500, // button text color
                              ),
                            ),
                          ),
                          child: child!,
                        );
                      },
                      context: context,
                    );
                    if (pickedTime != null) {
                      // TimeOfDay time = TimeOfDay.now();
                      FocusScope.of(context).requestFocus(new FocusNode());

                      // format time to be as 01:12 || 11:00 || 02:01
                      String formattedTime =
                          '${pickedTime.hour <= 9 ? '0${pickedTime.hour}' : pickedTime.hour}:${pickedTime.minute <= 9 ? '0${pickedTime.minute}' : pickedTime.minute}';
                      textFieldData.textEditingController.text = formattedTime;

                      onValueChanged(formattedTime);
                    }
                  }
                },
            child: IgnorePointer(
              ignoring: textFieldData.type == TextFieldType.datePicker ||
                  textFieldData.type == TextFieldType.timePicker
                  ? true
                  : false,
              child: FocusScope(
                  child: Focus(
                    onFocusChange: (focus) {
                      setState(() {
                        isFocused = focus;
                      });
                    },
                    child: SizedBox(
                      height: 56.h,
                      child: TextFormField(
                        enabled: enabeld,
                        onChanged: (text) {
                          onValueChanged(text);
                        },
                        controller: textFieldData.textEditingController,
                        autocorrect: false,
                        keyboardType: textFieldData.type == TextFieldType.mobile ||
                            textFieldData.type == TextFieldType.numbers
                            ? TextInputType.number
                            : TextInputType.emailAddress,
                        inputFormatters:
                        textFieldData.type == TextFieldType.mobile ||
                            textFieldData.type == TextFieldType.numbers
                            ? [FilteringTextInputFormatter.digitsOnly]
                            : null,
                        validator: (value) {
                          if (widget.required == false) return null;

                          textFieldReturnData =
                              textFieldValidation(value!, textFieldData.type);
                          if (textFieldReturnData!.isError == true) {
                            setState(() {
                              isShowError = true;
                              errorText = textFieldReturnData!.message;
                            });
                            return '';
                          } else {
                            setState(() {
                              isShowError = false;
                            });
                            return null;
                          }
                        },
                        style: const TextStyle(color: ColorsData.greyscale900),
                        obscureText: textFieldData.type != TextFieldType.password ||
                            ishShowPassword == true
                            ? false
                            : true,
                        maxLines: 1,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            isDense: false,
                            errorStyle: const TextStyle(height: 0),
                            suffixIcon: textFieldData.type == TextFieldType.password
                                ? InkWell(
                                onTap: () {
                                  setState(() {
                                    ishShowPassword = !ishShowPassword;
                                  });
                                },
                                child: SvgPicture.asset(
                                    ishShowPassword == true
                                        ? Assets.passwordDisable
                                        : Assets.passwordEnable,
                                    width: 14,
                                    height: 14,
                                    color: isFocused == true
                                        ? ColorsData.primary500
                                        : ColorsData.greyscale700,
                                    fit: BoxFit.scaleDown))
                                : InkWell(
                              onTap: onEndIconPressed,
                              child: SvgPicture.asset(
                                  textFieldData.endIconPath ?? "",
                                  width: 14,
                                  height: 14,
                                  color: isFocused == true
                                      ? ColorsData.primary500
                                      : ColorsData.greyscale700,
                                  fit: BoxFit.scaleDown),
                            ),
                            prefixIcon: textFieldData.iconPath == '0'
                                ? const SizedBox()
                                : Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: SvgPicture.asset(
                                  textFieldData.iconPath ?? "",
                                  width: 18,
                                  height: 18,
                                  color: isFocused == true
                                      ? ColorsData.primary500
                                      : ColorsData.greyscale700,
                                  fit: BoxFit.scaleDown),
                            ),
                            focusColor: Colors.red,
                            prefixIconConstraints: const BoxConstraints(
                              minHeight: 35,
                              minWidth: 35,
                            ),
                            border:  OutlineInputBorder(
                              // borderRadius: BorderRadius.all(Radius.circular(16.0.w)),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0.w),
                                bottomLeft: Radius.circular(50.0.w),
                              ),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: ColorsData.primary500, width: 1.5),
                              // borderRadius: BorderRadius.circular(16.0.w),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0.w),
                                bottomLeft: Radius.circular(50.0.w),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              const BorderSide(color: ColorsData.greyscale50),
                              // borderRadius: BorderRadius.circular(16.0.w),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0.w),
                                bottomLeft: Radius.circular(50.0.w),
                              ),
                            ),
                            hintStyle: Styles.textStyle14.copyWith(
                              color: isFocused == true
                                  ? ColorsData.primary500
                                  : ColorsData.greyscale700,
                            ),
                            filled: true,
                            fillColor: isFocused == true
                                ? ColorsData.primary500_8
                                : ColorsData.greyscale50,
                            hintText: textFieldData.hint),
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

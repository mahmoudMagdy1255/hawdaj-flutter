import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/models/custom_text_feild_model.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button_new.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class SignUpCard extends StatelessWidget {
   SignUpCard({super.key,required this.onPressed});
  Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: ColorsData.greyscale50,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(100.w))),
      child: Container(
        height: 600.h,
        width: 350.w,
        padding: EdgeInsets.only(top: 16.0.w, bottom: 16.0.w, left: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 0.h,),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomInputTextFeild(
                        padding: const EdgeInsets.all(0),
                        onValueChanged: (text) {
                          // context.read<LoginCubit>().changePhone(text);
                        },
                        textFieldData: TextFieldData(
                            hint: 'اسم المستخدم',
                            type: TextFieldType.any,
                            textEditingController: TextEditingController())),
                    SizedBox(
                      height: 30.h,
                    ),

                    CustomInputTextFeild(
                        padding: const EdgeInsets.all(0),
                        onValueChanged: (text) {
                          // context.read<LoginCubit>().changePhone(text);
                        },
                        textFieldData: TextFieldData(
                            hint: 'البريد الاكتروني',
                            type: TextFieldType.any,
                            textEditingController: TextEditingController())),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomInputTextFeild(
                        padding: const EdgeInsets.all(0),
                        onValueChanged: (text) {
                          // context.read<LoginCubit>().changePhone(text);
                        },
                        textFieldData: TextFieldData(
                            hint: 'رقم الهاتف',
                            type: TextFieldType.numbers,
                            textEditingController: TextEditingController())),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomInputTextFeild(
                        padding: const EdgeInsets.all(0),
                        onValueChanged: (text) {
                          // context.read<LoginCubit>().changePhone(text);
                        },
                        textFieldData: TextFieldData(
                            hint: 'الرقم السري',
                            type: TextFieldType.password,
                            textEditingController: TextEditingController())),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomInputTextFeild(
                        padding: const EdgeInsets.all(0),
                        onValueChanged: (text) {
                          // context.read<LoginCubit>().changePhone(text);
                        },
                        textFieldData: TextFieldData(
                            hint: 'تأكيد الرقم السري',
                            type: TextFieldType.password,
                            textEditingController: TextEditingController())),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 16.w),
                SvgPicture.asset(
                  Assets.facbookIcon,
                  fit: BoxFit.fill,
                  width: 40.w,
                  height: 40.w,
                  // color: ColorsData.myPrimaryColor[200],
                ),
                SizedBox(width: 16.w),
                SvgPicture.asset(
                  Assets.facbookIcon,
                  fit: BoxFit.fill,
                  width: 40.w,
                  height: 40.w,
                  // color: ColorsData.myPrimaryColor[200],
                ),
                SizedBox(width: 16.w),
                Flexible(child: CustomButtonNew(txt: 'تسجيل',onPressed: onPressed,))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

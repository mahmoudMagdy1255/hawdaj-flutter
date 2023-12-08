import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flipcard/flip_card.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:flutter_flip_card/modal/flip_side.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hawdaj/core/utils/app_router.dart';
import 'package:hawdaj/core/utils/assets.dart';
import 'package:hawdaj/core/utils/colors.dart';
import 'package:hawdaj/core/utils/styles.dart';
import 'package:hawdaj/core/widgets/custom_button_new.dart';
import 'package:hawdaj/features/auth/login/view/widget/login_card.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/models/custom_text_feild_model.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import 'signup_card.dart';

class LoginViewBody extends StatefulWidget {
  LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final controller = FlipCardController();
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      fit: StackFit.expand,
      children: [
        Lottie.asset(Assets.login_bg, fit: BoxFit.fill),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Text(
                  isLogin ? 'تسجيل الدخول' : 'إنشاء حساب',
                  style:
                      Styles.textStyle22.copyWith(color: ColorsData.primary500),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              FlipCard(
                  rotateSide: RotateSide.right,
                  onTapFlipping: false,
                  //When enabled, the card will flip automatically when touched.
                  axis: FlipAxis.vertical,
                  controller: controller,
                  frontWidget: LoginCard(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kHomeLayOut);
                    },
                  ),
                  backWidget: SignUpCard(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kHomeLayOut);
                    },
                  )),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isLogin ? ' لا تمتلك حساب ؟' : 'تمتلك حساب بالفعل ؟ ',
                    style: Styles.textStyle16,
                  ),
                  InkWell(
                    onTap: () {
                      controller.flipcard();
                      isLogin = !isLogin;
                      setState(() {});
                    },
                    child: Text(
                      isLogin ? ' انشئ حسابك الأن' : 'سجل دخلولك',
                      style: Styles.textStyle16
                          .copyWith(color: ColorsData.primary500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

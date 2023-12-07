import 'package:flutter/material.dart';
import 'package:hawdaj/core/utils/assets.dart';
import 'package:hawdaj/core/utils/colors.dart';

class OnBoardingModel {
  String image;
  String title;
  String destination;
  String location;
  Color pageColor;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.destination,
    required this.location,
    required this.pageColor,
  });

  static List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      image: Assets.eldakhlaMosque,
      title: 'يقدم السفر للمملكة مجموعة متنوعة من التجارب',
      destination: 'مسجد الداخلة',
      pageColor: ColorsData.myPrimaryColor[100]!,
      location: 'بُني المسجد على نمط الطراز النجدي من الطين والحجر، استخدم لسقفه خشب الأثل وسعف النخيل، تبلغ مساحته الإجمالية 666 م² وبسعة 500 مصليًا. ويتكون من فناء مكشوف مستطيل',
    ),
    OnBoardingModel(
      image: Assets.suleimanMosque,
      title: 'استكشف المعالم التاريخية واستمتع بالمناظر الطبيعية',
      destination: 'مسجد سليمان',
      pageColor: ColorsData.myPrimaryColor[100]!,
      location: 'مسجد سليمان أو مسجد الوقف هو مسجد تاريخي في محافظة الطائف، غرب المملكة العربية السعودية، يعود تاريخ بناؤه إلى 300 عام.',
    ),
    OnBoardingModel(
      image: Assets.gareerMosque,
      title: 'قم بتجربة التراث الثقافي الغني للبلاد ',
      destination: 'مسجد جرير',
      pageColor: ColorsData.myPrimaryColor[100]!,
      location: 'مسجد جرير بن عبد الله البجلي هو مسجد تاريخي في مركز حداد بني مالك جنوب محافظة الطائف، منطقة مكة المكرمة، غرب المملكة العربية السعودية.',
    ),
    OnBoardingModel(
      image: Assets.alfao,
      title: 'اكتشف أفضل الوجهات والتجارب في المملكة ',
      destination: 'قرية الفاو',
      pageColor: ColorsData.myPrimaryColor[100]!,
      location: 'عاصمة مملكة كندة الأولى أحد الممالك العربية القديمة في نجد، ومن أهم المواقع الأثرية في شبه الجزيرة العربية؛ لأنها عبارة عن تجسيد متكامل',
    ),
  ];
}

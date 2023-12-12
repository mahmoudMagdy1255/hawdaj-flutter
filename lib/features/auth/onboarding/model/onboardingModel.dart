import 'package:flutter/material.dart';
import 'package:hawdaj/core/utils/assets.dart';
import 'package:hawdaj/core/utils/colors.dart';

class OnBoardingModel {
  String image;
  String title;
  String cityName;
  String cityDescription;
  Color pageColor;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.cityName,
    required this.cityDescription,
    required this.pageColor,
  });

  static List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      image: Assets.ryad,
      title: 'يقدم السفر للمملكة مجموعة متنوعة من التجارب',
      cityName: 'الرياض',
      pageColor: ColorsData.myPrimaryColor[100]!,
      cityDescription: 'تعد الرياض عاصمة المملكة ومن أهم المدن السياحة. فهي مدينة حديثة متطورة تسير بخطى جريئة نحو المستقبل بينما تفتخر بتقاليد ماضيها العريق.'
    ),
    OnBoardingModel(
      image: Assets.dmam,
      title: 'استكشف المعالم التاريخية واستمتع بالمناظر الطبيعية',
      cityName: 'الدمام',
      pageColor: ColorsData.myPrimaryColor[100]!,
      cityDescription: 'تُعتبر الدمام إحدى أكبر المدن في المملكة وتتميز بسحر مناظرها الصحراوية الخلابة ومعالمها التاريخية والثقافية كذلك. كما توفّر لزائريها الأماكن السياحية المتنوعة.'
    ),
    OnBoardingModel(
      image: Assets.makah,
      title: 'قم بتجربة التراث الثقافي الغني للبلاد ',
      cityName: 'مكه',
      pageColor: ColorsData.myPrimaryColor[100]!,
      cityDescription: 'ُتعتبر مكة واحدة من أجمل المناطق السياحية على مستوى العالم، فهي تمتلك العديد من الإمكانيات والمقومات السياحية المختلفة',
    ),
    OnBoardingModel(
      image: Assets.abha,
      title: 'اكتشف أفضل الوجهات والتجارب في المملكة ',
      cityName: 'ابها',
      pageColor: ColorsData.myPrimaryColor[100]!,
      cityDescription: 'ابتداءً من ركوب التلفريك ومشاهدة المناظر الخلابة إلى الجبل الأخضر واستكشاف أسرار الماضي  في أحد المتاحف في أبها، وزيارة أشهر المعالم.'
    ),
  ];
}

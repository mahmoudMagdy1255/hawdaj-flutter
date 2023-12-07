import 'package:flutter/material.dart';
import 'package:hawdaj/core/utils/assets.dart';

class OnBoardingModel{

  String image;
  String title;
  String subtitle;
  Color pageColor;

  OnBoardingModel({required this.image,required this.title,required this.subtitle,required this.pageColor});

  static List<OnBoardingModel> onBoardingList=[
    OnBoardingModel(image: Assets.eldakhlaMosque, title: 'مسجد الداخلة', pageColor: Colors.lightGreen, subtitle: 'الممكلة العربية السعودية',),
    OnBoardingModel(image: Assets.suleimanMosque, title: 'مسجد سليمان', pageColor: Colors.lime, subtitle: 'الممكلة العربية السعودية',),
    OnBoardingModel(image: Assets.gareerMosque, title: 'مسجد جرير', pageColor: Colors.pinkAccent, subtitle: 'الممكلة العربية السعودية',),
    OnBoardingModel(image: Assets.alfao, title: 'مدينة الفاو', pageColor: Colors.pink, subtitle: 'الممكلة العربية السعودية',),
  ];

}
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hawdaj/core/utils/styles.dart';
import 'package:hawdaj/features/main/home/view/widget/head_section.dart';
import 'package:hawdaj/features/main/home/view/widget/title_section.dart';

import '../../data/model/Destination.dart';
import 'distance_item.dart';
import 'event_item.dart';
import 'home_grid_item.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<Destination> list = Destination.destinationsList;

  int currentIndex = 0;
  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 880.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(list[currentIndex].image),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                  child: Column(
                    children: [
                      SizedBox(height: 60.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          Icon(Icons.search, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.w),
                  margin:
                      EdgeInsets.only(right: 20.w, left: 20.0.w, bottom: 80.h),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.5),
                      borderRadius: BorderRadius.circular(24.w)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        list[currentIndex].name,
                        style: Styles.textStyle24,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text('تقييم'),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(list[currentIndex].description * 10),
                      SizedBox(
                        height: 20.h,
                      ),
                      CarouselSlider(
                          carouselController: _carouselController,
                          options: CarouselOptions(
                            onScrolled: (h){
                              setState(() {
                                // _carouselController.nextPage();
                                if(currentIndex<list.length-1){
                                  currentIndex++;
                                }else{
                                  currentIndex==0;
                                }
                              });
                            },
                            // onPageChanged: (_,changeReason){
                            //   setState(() {
                            //     _carouselController.nextPage();
                            //   });
                            // },
                            autoPlayAnimationDuration: Duration(seconds: 5),
                            autoPlayInterval: Duration(seconds: 5),
                            height: 100.h,
                            aspectRatio: 16 / 16,
                            viewportFraction: 1,
                            autoPlay: true,
                            // enlargeCenterPage: true,
                          ),
                          items: list
                              .map(
                                (e) => Container(
                                  margin: EdgeInsets.only(left: 10.w),
                                  height: 100.h,
                                  width: 100.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              list[currentIndex].image)),
                                      borderRadius:
                                          BorderRadius.circular(12.w)),
                                ),
                              )
                              .toList())
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          TitleSection(title: 'الأماكن'),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(right: 20.0.w),
              child: Row(
                children: [
                  for (int i = 0; i < 10; i++)
                    Padding(
                      padding: EdgeInsets.only(left: 16.0.w),
                      child: DistanceItem(),
                    ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          TitleSection(title: 'الفعاليات'),

          CarouselSlider(
            options: CarouselOptions(
              height: 150.0.h,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(seconds: 3),
              autoPlayInterval: const Duration(seconds: 6),
            ),
            items: ['', '', '', ''].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return EventItem();
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 14.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ['', '', '', '', '', ''].map((i) {
              return Container(
                width: 8.w,
                height: 8.w,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              );
            }).toList(),
          ),

          SizedBox(
            height: 20.h,
          ),
          TitleSection(title: 'الكل'),

          ///
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 20.w,
            crossAxisSpacing: 20.w,
            childAspectRatio: .75.w,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            // itemBuilder: (context, index) {
            //   var model = state.moodReportModel.data!
            //       .reports![index];
            //   return buildMoodReport(index, model);
            // },
            children: [
              for (int i = 0; i < list.length; i++)
                HomeGridItem(
                  item: list[i],
                )
            ],
          ),

          SizedBox(
            height: 500.h,
          ),
        ],
      ),
    );
  }
}
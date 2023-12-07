import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:hawdaj/core/utils/app_router.dart';
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
    print('------------>>Reduild');
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: (){
              GoRouter.of(context).go(AppRouter.kDestinationDetails);
            },
            child: Container(
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
                    margin: EdgeInsets.only(
                        right: 20.w, left: 20.0.w, bottom: 80.h),
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
                            autoPlay: true,
                            autoPlayAnimationDuration:
                                const Duration(seconds: 3),
                            autoPlayInterval: const Duration(seconds: 6),
                            enlargeCenterPage: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                              // _carouselController.nextPage();
                                currentIndex = index;
                                print('------>$index');
                              });
                            },
                            viewportFraction: .4,
                            height: 130.h,
                          ),
                          items: list.map((e) {
                            return Container(
                              width: 130.w,
                              // child: Image.asset(e.image,fit: BoxFit.fill,),
                              child: Image.asset(e.image,fit: BoxFit.fill,),
                            );
                          }).toList(),
                        )
                        // CarouselSlider(
                        //     carouselController: _carouselController,
                        //     options: CarouselOptions(
                        //       onPageChanged: (index, changeReason) {
                        //         setState(() {
                        //           currentIndex = index;
                        //           print('----->$index');
                        //         });
                        //       },
                        //       autoPlayAnimationDuration: Duration(seconds: 5),
                        //       autoPlayInterval: Duration(seconds: 5),
                        //       aspectRatio: 16 / 16,
                        //       viewportFraction: .4,
                        //       autoPlay: true,
                        //       // enlargeCenterPage: true,
                        //     ),
                        //     items: list.map((e) => Container(
                        //             // margin: EdgeInsets.only(left: 10.w),
                        //             // height: 100.h,
                        //             // width: 100.w,
                        //             decoration: BoxDecoration(
                        //                 image: DecorationImage(image: AssetImage(e.image)),
                        //                 borderRadius:
                        //                     BorderRadius.circular(12.w)),
                        //           ),
                        //         )
                        //         .toList())
                      ],
                    ),
                  )
                ],
              ),
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
          Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: MasonryGridView.count(
                  itemCount: list.length,
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.w,
                  crossAxisSpacing: 16.w,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                        height: (index % 3 + 1) * 100.0, // Varying heights
                        width: (index % 2 + 1) * 100.0, // V
                        child: HomeGridItem(item: list[index]));
                  }),
            ),
          ),
          SizedBox(
            height: 100.h,
          )
        ],
      ),
    );
  }

  List<Widget> _buildGridItems() {
    return List.generate(10, (index) {
      final itemHeight = (index % 3 + 1) * 100.0; // Varying heights
      final itemWidth = (index % 2 + 1) * 100.0; // Varying widths

      return Container(
        color: Colors.blue,
        height: itemHeight,
        width: itemWidth,
        child: Center(
          child: Text(
            'Item $index',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      );
    });
  }
}

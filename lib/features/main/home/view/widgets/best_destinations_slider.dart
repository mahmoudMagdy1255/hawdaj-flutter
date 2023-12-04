import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hawdaj/features/main/home/model/destinationModel.dart';

class BestDestinationsSlider extends StatefulWidget {
  const BestDestinationsSlider({super.key});

  @override
  State<BestDestinationsSlider> createState() => _BestDestinationsSliderState();
}

class _BestDestinationsSliderState extends State<BestDestinationsSlider> {
  int _currentIndex = 0;
  List<Destination> list = Destination.destinationList;
  CarouselController _carouselController4 = CarouselController();

  @override
  Widget build(BuildContext context) {
    print('---------->2builder');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(builder: (context) {
          return Container(
            height: 300.0.h,
            margin: EdgeInsets.symmetric(horizontal: 10.0.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0.w),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    list[_currentIndex].image,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    color: Colors.black45,
                  ),
                  Positioned(
                      top: 12.w,
                      left: 12.w,
                      child: SizedBox(
                          child: Image.asset(
                        'assets/images/map.png',
                        width: 40.w,
                        height: 40.w,
                      ))),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        list[_currentIndex].name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            height: 1.2),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(list[_currentIndex].location,
                              maxLines: 3,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[300])),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.pin_drop,
                            color: Colors.grey[300],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        }),
        SizedBox(
          height: 5.h,
        ),
        Stack(
          children: [
            CarouselSlider(
              carouselController: _carouselController4,
              options: CarouselOptions(
                height: 150.h,

                // autoPlay: true,
                // enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: list.map((item) {
                return Container(
                  width: 300.w,
                  margin: EdgeInsets.all(5.0.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0.w)),
                    child: Image.asset(item.image, fit: BoxFit.cover, width: 1000.0.w),
                  ),
                );
              }).toList(),
            ),
            Positioned(
              right: 20.w,
              top: 50.h,
              child: IconButton(
                icon: const CircleAvatar(child: Icon(Icons.arrow_back_ios)),
                onPressed: () {
                  _carouselController4.previousPage();
                  setState(() {});
                },
              ),
            ),
            Positioned(
              left: 20.w,
              top: 50.h,
              child: IconButton(
                icon: const CircleAvatar(child: Icon(Icons.arrow_forward_ios)),
                onPressed: () {
                  _carouselController4.nextPage();
                  setState(() {});
                },
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: list.map((item) {
            int index = list.indexOf(item);
            return Container(
              width: 10.w,
              height: 10.0.h,
              margin: EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 4.0.w),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Colors.blue : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

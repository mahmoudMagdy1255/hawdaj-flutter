import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventItem extends StatelessWidget {
  const EventItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.w),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/tmoor.png',
              fit: BoxFit.fill,
            ),
            Container(
              color: Colors.black45,
            ),
            Positioned(
                top: 12.w,
                left: 12.w,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.0.w),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.5),
                    borderRadius:
                    BorderRadius.circular(8.w),
                  ),
                  child: const Text(
                    'مغلق',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            Positioned(
                bottom: 12.w,
                left: 16.w,
                child: Container(
                  padding: EdgeInsets.all(4.0.w),
                  decoration: BoxDecoration(
                    color: const Color(0xff660261)
                        .withOpacity(.7),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.start,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const Text(
                    'مهرجان بريدة للتمور',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        height: 1.2),
                  ),
                  Text('اللمملكة العربية السعودية',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[300])),
                  const Spacer(),
                  Text('تفاصيل أكثر',
                      style: TextStyle(
                          fontSize: 12,
                          decoration:
                          TextDecoration.underline,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[300])),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

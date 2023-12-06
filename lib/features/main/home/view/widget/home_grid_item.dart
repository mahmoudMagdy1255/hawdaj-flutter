import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hawdaj/features/main/home/data/model/Destination.dart';

import '../../../../../core/utils/styles.dart';

class HomeGridItem extends StatelessWidget {
  HomeGridItem({super.key, required this.item});

  Destination item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.w),
        image: DecorationImage(
          image: AssetImage(item.image),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: Styles.textStyle16.copyWith(color: Colors.white),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_sharp,
                      color: Colors.grey[50],
                      size: 18,
                    ),
                    Expanded(
                        child: Text(
                      item.location,
                      style:
                          Styles.textStyle10.copyWith(color: Colors.grey[50]),
                    ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

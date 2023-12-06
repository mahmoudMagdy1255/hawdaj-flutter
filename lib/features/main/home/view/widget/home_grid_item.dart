import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:hawdaj/features/main/home/data/model/Destination.dart';

import '../../../../../core/utils/styles.dart';

class HomeGridItem extends StatelessWidget {
  HomeGridItem({Key? key, required this.item}) : super(key: key);

  final Destination item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_sharp,
                      color: Colors.grey[50],
                      size: 18,
                    ),
                    Flexible(
                      child: Text(
                        item.location,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey[50],
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
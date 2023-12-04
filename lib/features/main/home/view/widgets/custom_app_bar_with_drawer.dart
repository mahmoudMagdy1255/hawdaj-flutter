import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarWithDrawer extends StatelessWidget {
  const CustomAppBarWithDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.w,
      color: const Color(0xff00142a),
      child: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  // Scaffold.of(context).openDrawer();
                  // scaffoldKey.currentState?.openDrawer();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.0.w),
                  child: const Icon(Icons.menu, color: Colors.white),
                )),
            DropdownButton<String>(
              value: 'العربية',
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              underline: const SizedBox(),
              onChanged: (String? newValue) {
                // Update the selected value
                // selectedValue = newValue;
                // // Rebuild the widget tree to reflect the updated value
                // // This will update the selected value in the dropdown
                // // and trigger any dependent UI changes
                // if (mounted) {
                //   // Check if the widget is still mounted before calling setState
                //   // This is to prevent calling setState after the widget has been disposed
                //   setState(() {});
                // }
              },
              items: ['العربية', 'English', 'Рой', ' 尼亞尼']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class roundBulletText extends StatelessWidget {
  final String text;
  const roundBulletText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Container(
        margin: EdgeInsets.only(right: 5.w.w,top:10.h),
         child: CircleAvatar(
          radius: 3.r,
          backgroundColor: Colors.black,
          
         ),
       ),
         Expanded(
          child: Container(
            child: Text(
              text,
              style: TextStyle(fontSize: 18.h),
            ),
          ),
        ),
      ],
    );;
  }
}

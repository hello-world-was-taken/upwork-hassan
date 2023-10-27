import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BulletText extends StatelessWidget {
  final String text;
  const BulletText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10, top: 5.h),
          color: Colors.black,
          width: 12,
          height: 15.h,
        ),
        Flexible(
          child: Container(
            child: Text(
              text,
              style: TextStyle(fontSize: 18.h),
            ),
          ),
        ),
      ],
    );
  }
}

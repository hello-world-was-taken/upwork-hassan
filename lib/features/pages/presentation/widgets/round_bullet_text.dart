import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundBulletText extends StatelessWidget {
  final String text;
  final size;
  const RoundBulletText({super.key, required this.text, this.size = null});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 5.w, top: 5.h, bottom: 5.h),
            child: CircleAvatar(
              radius: 3.r,
              backgroundColor: Colors.black,
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                text,
                style: TextStyle(fontSize: size ?? 18.h),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

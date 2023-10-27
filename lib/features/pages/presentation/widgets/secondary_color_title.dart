import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryColorHeading extends StatelessWidget {
  final String title;
  const SecondaryColorHeading({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25.h),
      width: double.infinity,
      height: 60.h,
      decoration: BoxDecoration(
          color: Color(0XFF757575), borderRadius: BorderRadius.circular(5.r)),
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 25.h),
      )),
    );
  }
}
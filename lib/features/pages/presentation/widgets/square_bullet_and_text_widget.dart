import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class bulletText extends StatelessWidget {
  final String text;
  const bulletText({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10.w),
          color: Colors.black,
          width: 12.w,
          height: 15.h,
        ),
        Text(text,
        style: TextStyle(
          fontSize: 18.h
        ),
        )
      ],
    );
  }
}

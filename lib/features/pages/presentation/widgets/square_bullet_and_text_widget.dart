import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BulletText extends StatelessWidget {
  final String text;
  const BulletText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10,),
            color: Colors.black,
            width: 12,
            height: 12,
          ),
          Flexible(
            child: Container(
              child: Text(
                text,
                style: TextStyle(fontSize: 18.h,
                ),
              
              ),
            ),
          ),
        ],
      ),
    );
  }
}

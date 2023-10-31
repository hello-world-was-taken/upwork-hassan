import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class BulletText extends StatelessWidget {
  final String text;
  const BulletText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppDimension.height(5, context)),
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
                style: TextStyle(fontSize: AppDimension.height(18, context),
                ),
              
              ),
            ),
          ),
        ],
      ),
    );
  }
}

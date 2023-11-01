import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondaryColorHeading extends StatelessWidget {
  final String title;
  const SecondaryColorHeading({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: AppDimension.height(15, context)),
      width: double.infinity,
      height: AppDimension.height(60, context),
      decoration: BoxDecoration(
          color: Color(0XFF757575), borderRadius: BorderRadius.circular(AppDimension.radius(5, context))),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: AppDimension.height(35, context),
          fontWeight: FontWeight.w600,
          fontFamily: 'MsGothic'
          
          ),
          
        ),
      ),
    );
  }
}

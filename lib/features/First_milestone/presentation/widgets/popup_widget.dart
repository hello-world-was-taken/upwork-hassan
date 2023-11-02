import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopupCard extends StatelessWidget {
  const PopupCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      
      height: AppDimension.height(150, context),
      width: AppDimension.width(280, context),
      decoration: BoxDecoration(
        color: Colors.white, // Replace with your desired color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Container(
          height: AppDimension.height(70, context),
          width:AppDimension.width(150, context),
          alignment: Alignment.center,
          child: Text(
            
            "免許証の表面を枠内に配置し、シャッターを押してください",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppDimension.height(20, context),
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
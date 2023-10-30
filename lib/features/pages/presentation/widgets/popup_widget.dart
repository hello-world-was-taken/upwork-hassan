import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopupCard extends StatelessWidget {
  const PopupCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      
      height: 150.h,
      width: 280.w,
      decoration: BoxDecoration(
        color: Colors.white, // Replace with your desired color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Container(
          height: 50.h,
          width: 150.w,
          alignment: Alignment.center,
          child: Text(
            
            "免許証の表面を枠内に配置し、シャッターを押してください",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.h,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
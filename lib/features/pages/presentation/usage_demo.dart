import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/camera_overlay.dart';
import 'package:upwork_hassan/features/pages/presentation/camera_page.dart';

class UsageDemo extends StatelessWidget {
  const UsageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF1E1E1E),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          child: ListView(
            children: [
              Text(
                "撮影｜運転免許証｜表面",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              ),
              Container(
                height: 5.h,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                decoration: BoxDecoration(
                  color: Color(0XFFB3B3B3),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Text(
                "表面",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              ),
              SizedBox(height: 30.h),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                width: double.infinity,
                child: Image.asset(
                  "assets/images/scan_demo.png",
                  width: 300.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 30.h),
              Text(
                "免許証の外形が確認しやすいように背景は白以外で撮影してください",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              ),
              SizedBox(height: 30.h),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                width: 250.w,
                height: 70.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CameraOverlay()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            25.h), // Set the border radius
                      ),
                    ),
                  ),
                  child: Text(
                    '撮影開始',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

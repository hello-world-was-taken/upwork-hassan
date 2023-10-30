import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CameraOverlay extends StatefulWidget {
  const CameraOverlay({super.key});

  @override
  State<CameraOverlay> createState() => _CameraOverlayState();
}

class _CameraOverlayState extends State<CameraOverlay> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 40.h,
            horizontal: 30.w
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 35.w
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("撮影",
                      
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.h
                      ),),
                      Text("運転免許証",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.h
                      ),
                      ),
                      Text("表面",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.h
                      ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.h),
                  decoration: BoxDecoration(
color: Color(0XFF979797),
borderRadius: BorderRadius.circular(10)
                  ),
                  height: 10,
                  width: double.infinity,
                ),
              
                Container(
                  child: Text("表面",
                  style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.h
                      )
                  ),
                ),
                Image.asset("assets/images/cameraCenter.png"),
                Container(
                  
                  width: 130,
                  height: 70,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    
                  ),
                  child: Center(
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.black,
                      size: 60.h,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
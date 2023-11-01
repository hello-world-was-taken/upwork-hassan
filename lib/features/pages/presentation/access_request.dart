import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/usage_demo.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/secondary_color_title.dart';



class AccessRequest extends StatelessWidget {
  AccessRequest({super.key});
  late CameraController _controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SecondaryColorHeading(title: "ご注意"),
            Container(
              // margin: EdgeInsets.only(bottom: 25.h),
              padding: EdgeInsets.symmetric(horizontal: AppDimension.height(10, context)),
              width: double.infinity,
              height: AppDimension.height(120, context),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(AppDimension.radius(5, context)),
              ),
              child: Center(
                  child: Text(
                "カメラへのアクセスを求めるメッセージ表示がされた場合、撮影のために許可してお進みください。",
                style: TextStyle(
                  
                  color: Colors.black, 
                fontSize: AppDimension.height(18, context)),
              )),
            ),
            Container(
              margin: EdgeInsets.only(bottom: AppDimension.height(25, context)),
              padding: EdgeInsets.all(AppDimension.height(10, context)),
              width: double.infinity,
              decoration:
                  BoxDecoration(color: Color(0XFF757575), borderRadius: BorderRadius.circular(AppDimension.radius(5, context))),
              child: Container(
      
      margin: EdgeInsets.only(left: AppDimension.width(300, context)),
      child: TextButton(
        onPressed: (){
Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UsageDemo(
                               
                              )),
                    );
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Center(
          child: Text(
                  '次へ',
                  style: TextStyle(color: Colors.black, fontSize: AppDimension.fontSize(30, context)),
                ),
        ),
      ),
    ),
            ),
          ],
        ),
      ),
    );
  }
}






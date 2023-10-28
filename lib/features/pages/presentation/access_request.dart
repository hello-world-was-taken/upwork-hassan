import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/secondary_color_title.dart';

class AppDimension {
  static double myDeviceWidth = 390;
  static double myDeviceHeight = 844;
  static width(double requiredWidth, BuildContext context) {
    return MediaQuery.of(context).size.width / (myDeviceWidth / requiredWidth);
  }

  static height(double requiredHeight, BuildContext context) {
    return MediaQuery.of(context).size.height /
        (myDeviceHeight / requiredHeight);
  }
}

class AccessRequest extends StatelessWidget {
  const AccessRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SecondaryColorHeading(title: "ご注意"),
            Container(
              margin: EdgeInsets.only(bottom: 25.h),
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              width: double.infinity,
              height: 120.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Center(
                  child: Text(
                "カメラへのアクセスを求めるメッセージ表示がされた場合、撮影のために許可してお進みください。",
                style: TextStyle(color: Colors.black, fontSize: 18.h),
              )),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25.h),
              padding: EdgeInsets.all(10.h),
              width: double.infinity,
              height: 60.h,
              decoration: BoxDecoration(
                  color: Color(0XFF757575),
                  borderRadius: BorderRadius.circular(5.r)),
              child: Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width - 100.h),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Set the border radius
                      ),
                    ),
                  ),
                  child: Text(
                    '次へ',
                    style: TextStyle(color: Colors.black, fontSize: 18.sp),
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

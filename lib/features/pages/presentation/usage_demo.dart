import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

import 'package:upwork_hassan/features/pages/presentation/camera_overlay.dart';

class UsageDemo extends StatelessWidget {
  const UsageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF1E1E1E),
        body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.width(30, context),
              vertical: AppDimension.height(20, context)),
          child: ListView(
            children: [
              Text(
                "撮影｜運転免許証｜表面",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: AppDimension.height(18, context)),
              ),
              Container(
                height: AppDimension.height(5, context),
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                    horizontal: AppDimension.width(20, context),
                    vertical: AppDimension.height(30, context)),
                decoration: BoxDecoration(
                  color: Color(0XFFB3B3B3),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Text(
                "表面",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: AppDimension.height(18, context)),
              ),
              SizedBox(height: AppDimension.height(30, context)),
              Container(
                margin: EdgeInsets.symmetric(vertical: AppDimension.height(10, context)),
                width: double.infinity,
                child: Image.asset(
                  "assets/images/scan_demo.png",
                  width: AppDimension.height(300, context),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: AppDimension.height(30, context)),
              Text(
                "免許証の外形が確認しやすいように背景は白以外で撮影してください",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: AppDimension.height(18, context)),
              ),
              SizedBox(height: AppDimension.height(30, context)),
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: AppDimension.height(5, context),
                    horizontal: AppDimension.width(10, context)),
                width: AppDimension.width(250, context),
                height: AppDimension.height(70, context),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CameraOverlay()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            AppDimension.height(25, context)), // Set the border radius
                      ),
                    ),
                  ),
                  child: Text(
                    '撮影開始',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: AppDimension.height(24, context),
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

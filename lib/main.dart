import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/camera_overlay.dart';
import 'package:upwork_hassan/features/pages/presentation/terms_and_conditions.dart';
import 'package:upwork_hassan/features/pages/presentation/usage_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'MsGothic'),
          home: CameraOverlay()),
    );
  }
}

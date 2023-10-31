import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/agreement.dart';
import 'package:upwork_hassan/features/pages/presentation/camera_overlay.dart';
import 'package:upwork_hassan/features/pages/presentation/camera_page.dart';
import 'package:upwork_hassan/features/pages/presentation/onboarding.dart';
import 'package:upwork_hassan/features/pages/presentation/terms_and_conditions.dart';
import 'package:upwork_hassan/features/pages/presentation/usage_demo.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'MsGothic'),
      home: TermsAndConditions(),
    );
  }
}

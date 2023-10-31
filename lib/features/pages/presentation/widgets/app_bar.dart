import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const CustomAppBar({super.key, required this.text});
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: AppDimension.height(30, context)
            ),
          ),
        ),
      ),
    );
  }
}

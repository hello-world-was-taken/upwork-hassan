import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  
  const CustomAppBar({super.key});
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
            "ご利用規約",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.h
            ),
          
          ),
        ),
      ),
    );
  }
}
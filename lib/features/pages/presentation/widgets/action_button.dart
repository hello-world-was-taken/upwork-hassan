import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActionButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const ActionButton({
    required this.onPressed,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.symmetric(vertical: 5.h),
      width: 350.w,
      height: 70.h,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0), // Set the border radius
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 28.h),
        ),
      ),
    );
  }
}

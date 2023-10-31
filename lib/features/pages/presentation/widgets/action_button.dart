import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      margin: EdgeInsets.only(top: AppDimension.height(10, context)),
      padding: EdgeInsets.symmetric(vertical: AppDimension.height(5, context)),
      width: AppDimension.width(350, context),
      height: AppDimension.height(70, context),
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
          style: TextStyle(color: Colors.white, fontSize: AppDimension.height(28, context)),
        ),
      ),
    );
  }
}

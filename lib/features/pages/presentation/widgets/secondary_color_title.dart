import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class SecondaryColorHeading extends StatelessWidget {
  final String title;
  const SecondaryColorHeading({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppDimension.height(60, context),
      decoration: BoxDecoration(
          color: Color(0XFF757575),
          borderRadius: BorderRadius.circular(AppDimension.radius(5, context))),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontSize: AppDimension.height(25, context),
              fontFamily: 'MsGothic'),
        ),
      ),
    );
  }
}

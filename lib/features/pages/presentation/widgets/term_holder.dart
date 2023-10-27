import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class termHolder extends StatelessWidget {
  final String text;
  const termHolder({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.h
        ),
      ),
    );
  }
}

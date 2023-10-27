import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermHolder extends StatelessWidget {
  final String text;
  final String richText;
  final TextStyle richTextStyle;

  const TermHolder(
      {super.key,
      required this.text,
      this.richText = "",
      this.richTextStyle = const TextStyle()});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          text: text,
          style: TextStyle(fontSize: 18.h, color: Colors.black),
          children: <TextSpan>[
            TextSpan(text: richText, style: richTextStyle),
          ],
        ),
      ),
    );
  }
}

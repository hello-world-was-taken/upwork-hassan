import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class tradeGrid extends StatelessWidget {
  const tradeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: AppDimension.relativeWidth(2, context)),
          child: Text(
            "​ハヤランドBuyBackは透明でわかりやすい。",
            style: TextStyle(
              fontSize: AppDimension.height(30, context),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Column(
          children: [LittleBox(), LittleBox(), LittleBox(), LittleBox()],
        ),
      ],
    );
  }
}

class LittleBox extends StatelessWidget {
  const LittleBox({super.key, text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          color: Colors.white),
      width: AppDimension.relativeWidth(90, context),
      height: AppDimension.height(60, context),
    );
  }
}

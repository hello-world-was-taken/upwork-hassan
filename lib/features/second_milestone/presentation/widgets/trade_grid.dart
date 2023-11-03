import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class tradeGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          // Desktop layout
          return DesktopTradeGrid();
        } else {
          // Mobile layout
          return MobileTradeGrid();
        }
      },
    );
  }
}

class DesktopTradeGrid extends StatelessWidget {
  const DesktopTradeGrid({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LittleBox(),
                LittleBox(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LittleBox(),
                LittleBox(),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class MobileTradeGrid extends StatelessWidget {
  const MobileTradeGrid({super.key});

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
          children: [
            MobileLittleBox(),
            MobileLittleBox(),
            MobileLittleBox(),
            MobileLittleBox()
          ],
        ),
      ],
    );
  }
}

class LittleBox extends StatelessWidget {
  const LittleBox({super.key});

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
      width: AppDimension.width(120, context),
      height: AppDimension.height(60, context),
    );
  }
}

class MobileLittleBox extends StatelessWidget {
  const MobileLittleBox({super.key, text});

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

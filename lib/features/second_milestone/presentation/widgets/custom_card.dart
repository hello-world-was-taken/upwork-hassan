import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class CustomCard extends StatelessWidget {
  final asset;
  final title;
  final subtitle;
  final headerText;
  const CustomCard(
      {super.key, this.asset, this.title, this.subtitle, this.headerText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset(asset),
          width: AppDimension.relativeWidth(60, context),
        ),
        SizedBox(height: 10),
        Container(
          color: Colors.black,
          child: Text(
            headerText,
            maxLines: 3,
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.relativeWidth(10, context)),
          child: Text(
            title,
            maxLines: 3,
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.relativeWidth(10, context)),
          child: Text(
            subtitle,
            maxLines: 3,
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
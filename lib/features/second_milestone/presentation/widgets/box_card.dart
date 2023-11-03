import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class BoxCard extends StatelessWidget {
  final title;
  final subtitle;
  final asset;
  final width;
  const BoxCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.asset,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: AppDimension.width(10, context)),
      height: AppDimension.height(600, context),
      width: AppDimension.width(width, context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimension.height(10, context)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppDimension.width(10, context),
            ),
            child: Text(
              title,
              maxLines: 3,
              softWrap: true,
              textScaleFactor: AppDimension.textScaleFactor(context),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimension.width(10, context)),
            child: Text(
              subtitle,
              maxLines: 3,
              softWrap: true,
              textScaleFactor: AppDimension.textScaleFactor(context),
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Image.asset(asset),
          ),
        ],
      ),
    );
  }
}

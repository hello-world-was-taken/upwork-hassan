import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class BoxCard extends StatelessWidget {
  final title;
  final subtitle;
  final asset;
  const BoxCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.asset});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppDimension.relativeWidth(10, context)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimension.height(10, context)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
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
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimension.relativeWidth(10, context)),
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
            width: AppDimension.relativeWidth(80, context),
          ),
        ],
      ),
    );
  }
}

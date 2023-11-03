import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class SideNotes extends StatelessWidget {
  const SideNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          // Desktop layout
          return DesktopSideNotes();
        } else {
          // Mobile layout
          return MobileSideNotes();
        }
      },
    );
  }
}

class DesktopSideNotes extends StatelessWidget {
  const DesktopSideNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: _contentBuilder(context),
    );
  }
}

class MobileSideNotes extends StatelessWidget {
  const MobileSideNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: _contentBuilder(context));
  }
}

List<Widget> _contentBuilder(BuildContext context) {
  return [
    Container(
      child: Image.asset("assets/images/phone.png"),
      width: AppDimension.width(150, context),
    ),
    Column(
      children: [
        SizedBox(height: 30),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppDimension.width(10, context)),
          child: Text(
            "あなたのデータは​ハヤランドが完全消去。",
            maxLines: 3,
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppDimension.width(10, context)),
          child: Text(
            "透明な買取システムで安心を提供します。",
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            maxLines: 3,
            style: TextStyle(
              fontSize: AppDimension.height(16, context),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 50),
        Container(
          width: AppDimension.width(150, context),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimension.width(5, context)),
                child: Text(
                  "透明な買取システムで安心を提供します。",
                  softWrap: true,
                  textScaleFactor: AppDimension.textScaleFactor(context),
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: AppDimension.height(14, context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(color: Colors.black),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimension.width(5, context)),
                child: Text(
                  "透明な買取システムで安心を提供します。",
                  softWrap: true,
                  textScaleFactor: AppDimension.textScaleFactor(context),
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: AppDimension.height(14, context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(color: Colors.black),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimension.width(5, context)),
                child: Text(
                  "透明な買取システムで安心を提供します。",
                  softWrap: true,
                  textScaleFactor: AppDimension.textScaleFactor(context),
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: AppDimension.height(14, context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(color: Colors.black),
            ],
          ),
        )
      ],
    )
  ];
}

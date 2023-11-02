import 'package:flutter/material.dart';
import 'package:hover_menu/hover_menu.dart';
import 'package:hoverover/hoverover.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class AppBarComponent extends StatefulWidget {
  const AppBarComponent({super.key});

  @override
  State<AppBarComponent> createState() => _AppBarComponentState();
}

class _AppBarComponentState extends State<AppBarComponent> {
  int hoveredIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppDimension.height(110, context),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: AppDimension.width(30, context)),
            child: Image.asset("assets/images/logo_and_name.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: AppDimension.width(60, context)),
            width: AppDimension.width(150, context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HoverMenu(
                  items: [
                    buildHoverMenuItem(0, "利用状況を把"),
                    buildHoverMenuItem(1, "用状況を把"),
                    buildHoverMenuItem(2, "状況を把"),
                  ],
                  title: buildHoverMenuTitle("企業情報"),
                ),
                buildTextButton("事業紹介"),
                buildTextButton("サステナビリティ"),
                buildTextButton("リクルート"),

                HoverMenu(
                  items: [
                    buildHoverMenuItem(0, "の中古スマ"),
                    buildHoverMenuItem(1, "利の中古スマ"),
                    buildHoverMenuItem(2, "利用の中古スマ"),
                  ],
                  title: buildHoverMenuTitle("お客様窓口"),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

 Widget buildHoverMenuItem(int index, String text) {
  return HoverOver(
    builder: (bool isHovered) {
      final backgroundColor = isHovered ? Colors.black : Colors.white;
      final textColor = isHovered ? Colors.white : Colors.black;

      return InkWell(
        onTap: () {
          print('Item $index clicked');
        },
        child: Container(
          width: double.infinity,
          color: backgroundColor,
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      );
    },
  );
}

  Widget buildHoverMenuTitle(String title) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget buildTextButton(String text) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
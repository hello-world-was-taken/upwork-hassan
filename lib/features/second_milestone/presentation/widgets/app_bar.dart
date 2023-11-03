import 'package:flutter/material.dart';
import 'package:hover_menu/hover_menu.dart';
import 'package:hoverover/hoverover.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class AppBarComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          // Desktop layout
          return DesktopAppBarComponent();
        } else {
          // Mobile layout
          return MobileAppBarComponent();
        }
      },
    );
  }
}

class DesktopAppBarComponent extends StatefulWidget {
  const DesktopAppBarComponent({super.key});

  @override
  State<DesktopAppBarComponent> createState() => _DesktopAppBarComponentState();
}

class _DesktopAppBarComponentState extends State<DesktopAppBarComponent> {
  int hoveredIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppDimension.height(80, context),
      decoration: BoxDecoration(
        color: Colors.white,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          )
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

class MobileAppBarComponent extends StatefulWidget {
  const MobileAppBarComponent({super.key});

  @override
  State<MobileAppBarComponent> createState() => _MobileAppBarComponentState();
}

class _MobileAppBarComponentState extends State<MobileAppBarComponent> {
  int hoveredIndex = -1;
  bool tap = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      tap ? buildSideBar(context) : SizedBox.shrink(),
      Container(
        width: double.infinity,
        height: AppDimension.height(tap ? 300 : 80, context),
        decoration: BoxDecoration(
          color: Colors.white,
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                height: 30,
                width: 30,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 2,
                      color: Colors.black,
                    ),
                    Container(
                      height: 2,
                      color: Colors.black,
                    ),
                    Container(
                      height: 2,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              onTap: () {
                setState(() {
                  tap = !tap;
                });
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: AppDimension.width(30, context)),
              child: Image.asset("assets/images/logo_and_name.png"),
            ),
          ],
        ),
      ),
    ]);
  }

  Widget buildSideBar(BuildContext context) {
    return Container(
      height: AppDimension.relativeHeight(100, context),
      width: AppDimension.relativeWidth(100, context),
      color: Colors.black,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        InkWell(
          child: Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              height: 30,
              width: 30,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 2,
                    color: Colors.white,
                  ),
                  Container(
                    height: 2,
                    color: Colors.white,
                  ),
                  Container(
                    height: 2,
                    color: Colors.white,
                  )
                ],
              )),
          onTap: () {
            setState(() {
              tap = !tap;
            });
          },
        ),
      ]),
    );
  }
}

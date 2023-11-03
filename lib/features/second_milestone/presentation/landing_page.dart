import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/theme/app_color.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/app_bar.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/box_card.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/box_card_container.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/custom_card_container.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/footer.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/image_grid.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/middle_text_container.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/side_notes.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/sliding_text_with_dots_indicator.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/carousel_slider_images_component.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/trade_grid.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.grey.shade100,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState!.openDrawer();
                      },
                      icon: Icon(Icons.menu),
                    ),
                    SizedBox(width: AppDimension.width(30, context),
                   
                    ),
                    Image.asset("assets/images/black.png",
                    width: AppDimension.width(220, context),
                    ),
                      ],
                    )
                  ],
                ),
                // SlidingImagesComponent(),
                SizedBox(height: AppDimension.height(150, context)),
                MiddleTextComponent(),
                SizedBox(height: AppDimension.height(150, context)),
                tradeGrid(),
                SizedBox(height: AppDimension.height(150, context)),
                ImageGridItem(),
                SizedBox(height: AppDimension.height(150, context)),
                SideNotes(),
                SizedBox(height: AppDimension.height(150, context)),
                CustomCardsContainer(),
                SizedBox(height: AppDimension.height(150, context)),
                BoxCardsContainer(),
                SizedBox(height: AppDimension.height(150, context)),
                SlidingTextWithDots(),
                SizedBox(height: AppDimension.height(150, context)),
              ],
            ),
          ),
          drawer: Container(
            width: double.infinity,
            child: Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context); // Close the drawer
            },
            icon: Icon(Icons.close),
          ),
          Image.asset("assets/images/black.png",
                    width: AppDimension.width(220, context),
                    ),
          SizedBox(width: AppDimension.width(10, context),)
           // Adjust the width as needed
        ],
      ),
      ListTile(
        title: Text('企業情報'),
        onTap: () {
          // Handle menu item 1 tap
        },
      ),
      Divider(
        height: 3,
        ),
      ListTile(
        title: Text('事業紹介'),
        onTap: () {
          // Handle menu item 2 tap
        },
      ),

      Divider(
        height: 3,
        ),

      ListTile(
        title: Text('サステナビリティ'),
        onTap: () {
          // Handle menu item 3 tap
        },
      ),

      Divider(
        height: 3,
        ),
      ListTile(
        title: Text('リクルート'),
        onTap: () {
          // Handle menu item 4 tap
        },
      ),
      Divider(
        height: 3,
        ),

      ListTile(
        title: Text('お客様窓口'),
        onTap: () {
          // Handle menu item 5 tap
        },
      ),
      // Add more menu items as needed
    ],
  ),
),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/theme/app_color.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/app_bar.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/box_card.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/box_card_container.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/custom_card_container.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/image_grid.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/middle_text_container.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/side_notes.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/sliding_text_with_dots_indicator.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/carousel_slider_images_component.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/trade_grid.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
            child: Column(
          children: [
            AppBarComponent(),
            SlidingImagesComponent(),
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
        )),
      ),
    );
  }
}











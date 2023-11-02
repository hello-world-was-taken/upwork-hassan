import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class SlidingImagesComponent extends StatefulWidget {
  const SlidingImagesComponent({super.key});

  @override
  State<SlidingImagesComponent> createState() => _SlidingImagesComponentState();
}

class _SlidingImagesComponentState extends State<SlidingImagesComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppDimension.relativeWidth(2, context),
        vertical: AppDimension.height(30, context),
      ),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: AppDimension.relativeHeight(60, context),
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          autoPlay: true,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 600),
          onPageChanged: (index, reason) {
            // setState(() {
            //   _activeDotIndex = index;
            // });
          },
        ),
        itemBuilder: (_, index, realIndex) {
          return Container(
            width: AppDimension.relativeWidth(90, context),
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(AppDimension.height(40, context)),
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/sliding_image$index.png'),
                )),
          );
        },
        itemCount: 2,
      ),
    );
  }
}

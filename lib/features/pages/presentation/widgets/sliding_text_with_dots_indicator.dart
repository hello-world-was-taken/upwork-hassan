import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class SlidingTextWithDots extends StatefulWidget {
  const SlidingTextWithDots({Key? key}) : super(key: key);

  @override
  State<SlidingTextWithDots> createState() => _SlidingTextWithDotsState();
}

class _SlidingTextWithDotsState extends State<SlidingTextWithDots> {
  int _activeDotIndex = 0;
  CarouselController _carouselController = CarouselController();

  void setActiveDotIndex(int index) {
    setState(() {
      _activeDotIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TopIndicator(activeDotIndex: _activeDotIndex),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (_activeDotIndex > 0) {
                      setActiveDotIndex(_activeDotIndex - 1);
                      _carouselController.previousPage();
                    } else {
                      setActiveDotIndex(11);
                      _carouselController.jumpToPage(11);
                    }
                  },
                  child: Container(
                    height: AppDimension.height(50, context),
                    width: AppDimension.height(50, context),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        AppDimension.height(25, context),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: AppDimension.width(1, context),
                          blurRadius: AppDimension.width(3, context),
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: AppDimension.width(5, context)),
                GestureDetector(
                  onTap: () {
                    if (_activeDotIndex < 11) {
                      setActiveDotIndex(_activeDotIndex + 1);
                      _carouselController.nextPage();
                    } else {
                      setActiveDotIndex(0);
                      _carouselController.jumpToPage(0);
                    }
                  },
                  child: Container(
                    height: AppDimension.height(50, context),
                    width: AppDimension.height(50, context),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        AppDimension.height(25, context),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: AppDimension.width(1, context),
                          blurRadius: AppDimension.width(3, context),
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: AppDimension.height(20, context)),
        CarouselSlider.builder(
          carouselController: _carouselController,
          options: CarouselOptions(
            height: AppDimension.relativeHeight(60, context),
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            autoPlayAnimationDuration: const Duration(milliseconds: 600),
            onPageChanged: (index, reason) {
              setActiveDotIndex(index);
            },
          ),
          itemBuilder: (_, index, realIndex) {
            return Container(
              width: AppDimension.relativeWidth(90, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(AppDimension.height(40, context)),
                image: const DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/sliding_text1.png'),
                ),
              ),
            );
          },
          itemCount: 12,
        ),
      ],
    );
  }
}

class TopIndicator extends StatelessWidget {
  const TopIndicator({
    super.key,
    required int activeDotIndex,
  }) : _activeDotIndex = activeDotIndex;

  final int _activeDotIndex;

  @override
  Widget build(BuildContext context) {
    var customizableEffect = CustomizableEffect(
      spacing: AppDimension.width(2, context),
      activeDotDecoration: DotDecoration(
        color: Colors.black,
        width: AppDimension.height(20, context),
        height: AppDimension.height(20, context),
        borderRadius: BorderRadius.circular(
          AppDimension.height(10, context),
        ),
        dotBorder: DotBorder(
          color: Colors.black,
          width: AppDimension.height(1, context),
        ),
      ),
      dotDecoration: DotDecoration(
        borderRadius: BorderRadius.circular(
          AppDimension.height(10, context),
        ),
        width: AppDimension.height(20, context),
        height: AppDimension.height(20, context),
        dotBorder: DotBorder(
          color: Colors.black,
          width: AppDimension.height(1, context),
        ),
      ),
    );
    return AnimatedSmoothIndicator(
      activeIndex: _activeDotIndex,
      count: 12,
      effect: ScrollingDotsEffect(),
    );
  }
}

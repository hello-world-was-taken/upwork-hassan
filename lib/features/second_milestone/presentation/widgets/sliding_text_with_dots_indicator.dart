import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class SlidingTextWithDots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          // Desktop layout
          return DesktopSlidingTextWithDots();
        } else {
          // Mobile layout
          return MobileSlidingTextWithDots();
        }
      },
    );
  }
}

class MobileSlidingTextWithDots extends StatefulWidget {
  const MobileSlidingTextWithDots({Key? key}) : super(key: key);

  @override
  State<MobileSlidingTextWithDots> createState() =>
      _MobileSlidingTextWithDotsState();
}

class _MobileSlidingTextWithDotsState extends State<MobileSlidingTextWithDots> {
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
            TopIndicator(
              activeDotIndex: _activeDotIndex,
              effect: ScrollingDotsEffect(),
            ),
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
            height: AppDimension.height(500, context),
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            autoPlayAnimationDuration: const Duration(milliseconds: 600),
            onPageChanged: (index, reason) {
              setActiveDotIndex(index);
            },
          ),
          itemBuilder: (_, index, realIndex) {
            return Container(
              width: AppDimension.height(500, context),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(AppDimension.height(40, context)),
                image: const DecorationImage(
                  fit: BoxFit.contain,
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

class DesktopSlidingTextWithDots extends StatefulWidget {
  const DesktopSlidingTextWithDots({Key? key}) : super(key: key);

  @override
  State<DesktopSlidingTextWithDots> createState() =>
      _DesktopSlidingTextWithDotsState();
}

class _DesktopSlidingTextWithDotsState
    extends State<DesktopSlidingTextWithDots> {
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
            TopIndicator(
              activeDotIndex: _activeDotIndex,
              effect: _buildCustomEffect(context),
            ),
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
            height: AppDimension.relativeHeight(70, context),
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            autoPlayAnimationDuration: const Duration(milliseconds: 600),
            onPageChanged: (index, reason) {
              setActiveDotIndex(index);
            },
          ),
          itemBuilder: (_, index, realIndex) {
            return Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(AppDimension.height(40, context)),
                image: const DecorationImage(
                  fit: BoxFit.contain,
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
  TopIndicator({super.key, required int activeDotIndex, required effect})
      : _activeDotIndex = activeDotIndex,
        _effect = effect;

  final int _activeDotIndex;
  final _effect;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: _activeDotIndex,
      count: 12,
      effect: _effect,
    );
  }
}

IndicatorEffect _buildCustomEffect(context) {
  return CustomizableEffect(
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
}

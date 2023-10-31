import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/access_request.dart';
import 'package:upwork_hassan/features/pages/presentation/onboarding_firstpage.dart';
import 'package:upwork_hassan/features/pages/presentation/onboarding_fourthpage.dart';
import 'package:upwork_hassan/features/pages/presentation/onboarding_secondpage.dart';
import 'package:upwork_hassan/features/pages/presentation/onboarding_thirdpage.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/action_button.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/round_bullet_text.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/secondary_color_title.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int stage = 0;

  void incrementStage() {
    setState(() {
      stage = stage + 1;
    });
  }

  void decrementStage() {
    setState(() {
      stage = stage - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _pages = [
      FirstStepPage(),
      SecondStepPage(),
      ThirdStepPage(),
      FourthStepPage()
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 10.h),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              ProgressIndicator(stage: stage),
              SizedBox(
                height: 20.h,
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.h),
                height: MediaQuery.of(context).size.height * 0.65,
                child: _pages[stage],
              ),
              SizedBox(
                height: 20.h,
              ),
              stage > 0
                  ? ActionButton(
                      onPressed: () {
                        decrementStage();
                      },
                      text: 'Prev',
                    )
                  : SizedBox.shrink(),
              ActionButton(
                onPressed: () {
                  if (stage < 3)
                    incrementStage();
                  else
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccessRequest()),
                    );
                },
                text: 'Next',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProgressIndicator extends StatelessWidget {
  final int stage;
  const ProgressIndicator({super.key, required this.stage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      child: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    stage <= index ? Icons.circle : Icons.check,
                    color: stage < index ? Color(0XFF757575) : Colors.black,
                    size: 16.r,
                  ),
                  Text(
                    "stage $index",
                    style: TextStyle(fontSize: 20.h),
                  )
                ],
              ),
              index < 3
                  ? Container(
                      height: 5.h,
                      width: 40.w,
                      margin: EdgeInsets.only(top: 5.h),
                      color:
                          stage - 1 < index ? Color(0XFF757575) : Colors.black,
                    )
                  : SizedBox.shrink()
            ],
          );
        },
      ),
    );
  }
}

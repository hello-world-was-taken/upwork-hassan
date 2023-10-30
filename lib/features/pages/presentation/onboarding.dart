import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      ThirdStepPage(next: incrementStage),
      FourthStepPage(next: incrementStage)
    ];

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 10.h),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              ProgressIndicator(stage: stage),
              _pages[stage],
              stage > 0
                  ? ActionButton(
                      onPressed: () {
                        decrementStage();
                      },
                      text: 'prev',
                    )
                  : SizedBox.shrink(),
              ActionButton(
                onPressed: () {
                  incrementStage();
                },
                text: 'next',
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
                  Text("stage $index")
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

class FirstStepPage extends StatelessWidget {
  const FirstStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: [
              CustomCard(title: "...", options: ["option 0", "option 1"]),
              CustomCard(
                title: "...",
                subtitle: "check \ncheck",
                options: ["option 0", "option 1"],
              ),
              CustomCard(title: "...", options: ["option 0", "option 1"]),
              CustomCard(title: "...", options: ["option 0", "option 1"]),
              CustomCard(title: "...", options: ["option 0", "option 1"]),
              CustomCard(title: "...", options: ["option 0", "option 1"]),
            ],
          ),
        ],
      ),
    );
  }
}

class SecondStepPage extends StatefulWidget {
  const SecondStepPage({super.key});

  @override
  State<SecondStepPage> createState() => _SecondStepPageState();
}

class _SecondStepPageState extends State<SecondStepPage> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        shrinkWrap: true,
        children: [
          Text(
            "Header...",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "sub Header...",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          SecondaryColorHeading(title: "54,000"),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter ...',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(2.r), // Set the border radius
                    ),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(10.r),
                  margin: EdgeInsets.only(left: 5.w),
                  child: Text(
                    'button',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          RoundBulletText(text: "...."),
          RoundBulletText(text: "...."),
          RoundBulletText(text: "...."),
        ],
      ),
    );
  }
}

class ThirdStepPage extends StatelessWidget {
  final next;
  const ThirdStepPage({super.key, required this.next});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class FourthStepPage extends StatelessWidget {
  final next;
  const FourthStepPage({super.key, required this.next});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CustomCard extends StatefulWidget {
  final title;
  final subtitle;
  final options;
  const CustomCard({
    super.key,
    required this.title,
    this.subtitle,
    required this.options,
  });

  @override
  State<CustomCard> createState() => _CustomeCardState();
}

class _CustomeCardState extends State<CustomCard> {
  int selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20.h),
          child: Text(
            widget.title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        widget.subtitle != null
            ? Container(
                margin: EdgeInsets.only(left: 25.h),
                child: Text(
                  widget.subtitle,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            : const SizedBox.shrink(),
        Container(
          height: 50.h,
          child: ListView.builder(
            itemCount: widget.options.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: <Widget>[
                  Transform.scale(
                    scale: 1.0.r,
                    child: Radio(
                      value: index,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value as int;
                        });
                      },
                    ),
                  ),
                  Text(
                    widget.options[index],
                    style: TextStyle(fontSize: 18.h),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}

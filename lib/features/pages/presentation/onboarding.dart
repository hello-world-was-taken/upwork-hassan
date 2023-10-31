import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/access_request.dart';
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

class FirstStepPage extends StatelessWidget {
  const FirstStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            CustomCard(
                title: "申請の途中でブラウザを閉じた場合は、最初からやり直していただく必要があります。",
                options: ["申請の途", "申請の途"]),
            SizedBox(
              height: 10.h,
            ),
            CustomCard(
              title: "申請の途中でブラウザを閉じた場合は、最初からやり直していただく必要があります。",
              subtitle: "iphone: 申請の途中でブラウザを閉じた場合は、ります。 \n申請の途中でブラウザを閉じた場合。",
              options: ["途中で", "途中で"],
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomCard(title: "申請の途中でブラウザを閉じた場合", options: ["申請の途中", "申請の途中"]),
            SizedBox(
              height: 10.h,
            ),
            CustomCard(title: "申請の途中でブラウザを閉じた場合は", options: ["申請の途中", "申請の途中"]),
            SizedBox(
              height: 10.h,
            ),
            CustomCard(title: "申請の途中でブラウ", options: ["申請", "申請の"]),
            SizedBox(
              height: 10.h,
            ),
            CustomCard(title: "申請の途中", options: ["申請の途中", "申請"]),
          ],
        ),
      ],
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
    return ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
          height: 10.h,
        ),
        Text(
          "申請の途中でブラウザを閉じた場",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          "申請の途中でブラウザを閉じた場合は、最初からやり直。",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          // margin: EdgeInsets.only(bottom: 25.h),
          padding: EdgeInsets.only(top: 15.h),
          width: double.infinity,
          height: 60.h,
          decoration: BoxDecoration(
              color: Color(0XFF757575),
              borderRadius: BorderRadius.circular(5.r)),
          child: Text(
            "54,000",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 25.h),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          height: 60.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: double.infinity,
                width: MediaQuery.of(context).size.width * 0.45,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '申請の途中でブラ',
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(4.r), // Set the border radius
                    ),
                  ),
                ),
                child: Container(
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width * 0.15,
                  alignment: Alignment.center,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Text(
                    '在留カード',
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
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "申請の途中申請の途中でブラウザを閉じた場",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12.sp),
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          height: 40.h,
          alignment: Alignment.center,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Checkbox(
                activeColor: Color(0XFF757575),
                value: true,
                onChanged: (value) {},
              ),
              Center(
                child: Text(
                  "申請の途中でブラウザを閉じた場合は、最初からやり直していただく必要があります。",
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundBulletText(text: "申請の途中でブラウザを閉じた場合は、最初からやり直していただく必要があります。"),
            SizedBox(
              height: 10.h,
            ),
            RoundBulletText(
                text: "規定時間内（60分以内）に完了しない場合は、最初からやり直していただく必要があります。"),
            SizedBox(
              height: 10.h,
            ),
            RoundBulletText(
                text: "カメラへのアクセス許可ポップアップが表示されます。撮影のために許可していただく必要があります。")
          ],
        ),
      ],
    );
  }
}

class ThirdStepPage extends StatelessWidget {
  const ThirdStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class FourthStepPage extends StatelessWidget {
  const FourthStepPage({super.key});

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
          margin: EdgeInsets.only(left: 20.w, top: 20.h),
          child: Text(
            widget.title,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.h),
          ),
        ),
        widget.subtitle != null
            ? Container(
                margin: EdgeInsets.only(left: 25.h),
                child: Text(
                  widget.subtitle,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,
                    height: 1.5,
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
                  SizedBox(
                    width: 10.w,
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}

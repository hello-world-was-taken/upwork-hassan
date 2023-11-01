import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

import 'package:upwork_hassan/features/pages/presentation/access_request.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/action_button.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/round_bullet_text.dart';

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
    var _pages = [FirstStepPage(), SecondStepPage(), ThirdStepPage(), FourthStepPage()];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.width(40, context),
              vertical: AppDimension.height(10, context)),
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: AppDimension.height(10, context),
                ),
                ProgressIndicator(stage: stage),
                SizedBox(
                  height: AppDimension.height(20, context),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                      vertical: AppDimension.height(10, context),
                      horizontal: AppDimension.height(20, context)),
                  child: _pages[stage],
                ),
                SizedBox(
                  height: AppDimension.height(20, context),
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
      ),
    );
  }
}

class ProgressIndicator extends StatelessWidget {
  final int stage;

  const ProgressIndicator({Key? key, required this.stage}) : super(key: key);

  Color getProgressColor(int index) {
    if (stage > index) {
      return Colors.black;
    } else {
      return Color(0XFF757575);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimension.height(90, context),
      child: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: AppDimension.height(0, context),
                        child: AnimatedSwitcher(
                          duration: Duration(milliseconds: 250),
                          transitionBuilder: (Widget child, Animation<double> animation) {
                            return ScaleTransition(scale: animation, child: child);
                          },
                          child: stage <= index
                              ? Container(
                                  margin: EdgeInsets.only(top: AppDimension.height(7, context)),
                                  child: Icon(
                                    Icons.circle,
                                    key: ValueKey<int>(index),
                                    color: getProgressColor(index),
                                    size: AppDimension.radius(12, context),
                                  ),
                                )
                              : AnimatedSwitcher(
                                  duration: Duration(milliseconds: 250),
                                  transitionBuilder: (Widget child, Animation<double> animation) {
                                    return ScaleTransition(scale: animation, child: child);
                                  },
                                  child: Icon(
                                    Icons.check,
                                    key: ValueKey<int>(index),
                                    color: Colors.black,
                                    size: AppDimension.radius(30, context),
                                  ),
                                ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: AppDimension.height(30, context)),
                        child: Text(
                          "同意し $index",
                          style: TextStyle(fontSize: AppDimension.fontSize(20, context)),
                        ),
                      )
                    ],
                  ),
                  index < 3
                      ? Column(
                          children: [
                            SizedBox(
                              height: AppDimension.height(3, context),
                            ),
                            AnimatedContainer(
                              duration: Duration(microseconds: 250),
                              height: AppDimension.height(3, context),
                              width: AppDimension.width(50, context),
                              margin: EdgeInsets.only(top: AppDimension.height(3, context)),
                              color: getProgressColor(index),
                            )
                          ],
                        )
                      : SizedBox.shrink()
                ],
              ),
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
              height: AppDimension.height(10, context),
            ),
            CustomCard(title: "申請の途中でブラウザを閉じた場合は、最初からやり直していただ", options: ["申請の途", "申請の途"]),
            SizedBox(
              height: AppDimension.height(10, context),
            ),
            CustomCard(
              title: "申請の途中でブラウザを閉じた場合は、最初からやり直していただく必要があり。",
              subtitle: "iphone: 申請の途中でブラウザを閉じた場合は、ります。 \n申請の途中でブラウザを閉じた場合。",
              options: ["途中で", "途中で"],
            ),
            SizedBox(
              height: AppDimension.height(10, context),
            ),
            CustomCard(title: "申請の途中でブラウザを閉じた場合", options: ["申請の途中", "申請の途中"]),
            SizedBox(
              height: AppDimension.height(10, context),
            ),
            CustomCard(title: "申請の途中でブラウザを閉じた場合は", options: ["申請の途中", "申請の途中"]),
            SizedBox(
              height: AppDimension.height(10, context),
            ),
            CustomCard(title: "申請の途中でブラウ", options: ["申請", "申請の"]),
            SizedBox(
              height: AppDimension.height(10, context),
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
          height: AppDimension.height(10, context),
        ),
        Text(
          "申請の途中でブラウザを閉じた場",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: AppDimension.height(15, context), fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: AppDimension.height(20, context),
        ),
        Text(
          "申請の途中でブラウザを閉じた場合は、最初からやり直。",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: AppDimension.height(12, context)),
        ),
        SizedBox(
          height: AppDimension.height(10, context),
        ),
        Container(
          // margin: EdgeInsets.only(bottom: 25.h),
          padding: EdgeInsets.only(top: AppDimension.height(15, context)),
          width: double.infinity,
          height: AppDimension.height(60, context),
          decoration: BoxDecoration(
              color: Color(0XFF757575),
              borderRadius: BorderRadius.circular(AppDimension.radius(5, context))),
          child: Text(
            "54,000",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: AppDimension.height(25, context)),
          ),
        ),
        SizedBox(
          height: AppDimension.height(10, context),
        ),
        Container(
          height: AppDimension.height(60, context),
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
                width: AppDimension.width(10, context),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          AppDimension.radius(4, context)), // Set the border radius
                    ),
                  ),
                ),
                child: Container(
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width * 0.15,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppDimension.width(10, context),
                      vertical: AppDimension.height(10, context)),
                  child: Text(
                    '在留カード',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: AppDimension.height(12, context),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: AppDimension.height(5, context),
        ),
        Text(
          "申請の途中申請の途中でブラウザを閉じた場",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: AppDimension.height(12, context)),
        ),
        SizedBox(
          height: AppDimension.height(15, context),
        ),
        Container(
          height: AppDimension.height(40, context),
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
                    fontSize: AppDimension.height(15, context),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: AppDimension.height(20, context),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundBulletText(text: "申請の途中でブラウザを閉じた場合は、最初からやり直していただく必要があります。"),
            SizedBox(
              height: AppDimension.height(10, context),
            ),
            RoundBulletText(text: "規定時間内（60分以内）に完了しない場合は、最初からやり直していただく必要があります。"),
            SizedBox(
              height: AppDimension.height(10, context),
            ),
            RoundBulletText(text: "カメラへのアクセス許可ポップアップが表示されます。撮影のために許可していただく必要があります。")
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
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  int selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: AppDimension.height(20, context),
          ),
          child: Text(
            widget.title,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: AppDimension.height(18, context)),
          ),
        ),
        widget.subtitle != null
            ? Container(
                child: Text(
                  widget.subtitle,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppDimension.height(12, context),
                    height: 1.5,
                  ),
                ),
              )
            : const SizedBox.shrink(),
        Container(
          height: AppDimension.height(45, context),
          // color: Colors.green,
          child: ListView.builder(
            itemCount: widget.options.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: <Widget>[
                  SizedBox(
                    height: 18,
                    width: 18,
                    child: Container(
                      margin: EdgeInsets.only(right: 8),
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
                  ),
                  Text(
                    widget.options[index],
                    style: TextStyle(fontSize: AppDimension.height(16, context)),
                  ),
                  SizedBox(
                    width: AppDimension.width(10, context),
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

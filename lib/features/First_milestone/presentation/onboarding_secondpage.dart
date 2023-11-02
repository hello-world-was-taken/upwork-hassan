import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/First_milestone/presentation/widgets/round_bullet_text.dart';
import 'package:upwork_hassan/features/First_milestone/presentation/widgets/secondary_color_title.dart';

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
        SecondaryColorHeading(title: "54,000"),
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
              // ElevatedButton(
              //   onPressed: () {},
              //   style: ButtonStyle(
              //     backgroundColor:
              //         MaterialStateProperty.all<Color>(Colors.black),
              //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              //       RoundedRectangleBorder(
              //         borderRadius:
              //             BorderRadius.circular(AppDimension.radius(5, context)), // Set the border radius
              //       ),
              //     ),
              //   ),
              //   child: Container(
              //     height: double.infinity,
              //     width: MediaQuery.of(context).size.width * 0.15,
              //     alignment: Alignment.center,
              //     padding:
              //         EdgeInsets.symmetric(horizontal: AppDimension.width(10, context), vertical: AppDimension.height(10, context)),
              //     child: Text(
              //       '在留カード',
              //       textAlign: TextAlign.center,
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: AppDimension.height(12, context),
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
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
                    fontSize: AppDimension.height(16, context),
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
            RoundBulletText(
                text: "規定時間内（60分以内）に完了しない場合は、最初からやり直していただく必要があります。"),
            SizedBox(
              height: AppDimension.height(10, context),
            ),
            RoundBulletText(
                text: "カメラへのアクセス許可ポップアップが表示されます。撮影のために許可していただく必要があります。")
          ],
        ),
      ],
    );
  }
}

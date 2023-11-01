import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/round_bullet_text.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/secondary_color_title.dart';

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
        SecondaryColorHeading(title: "54,000"),
        SizedBox(
          height: 30.h,
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

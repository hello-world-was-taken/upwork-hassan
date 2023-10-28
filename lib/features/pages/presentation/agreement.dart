import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/action_button.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/app_bar.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/round_bullet_text.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/secondary_color_title.dart';

class Agreement extends StatefulWidget {
  const Agreement({super.key});

  @override
  State<Agreement> createState() => _AgreementState();
}

class _AgreementState extends State<Agreement> {
  int selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    var _radios = ["運転免許証", "在留カード", "マイナンバーカード（写真付き）"];

    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(text: "ご本人確認書類の選択"),
          body: Container(
              margin: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
              child: Stack(children: [
                SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "ご提出いただく身分証明書を選択してください。",
                      style: TextStyle(fontSize: 20.h),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SecondaryColorHeading(title: "株式会社サチ通商弊社」）は"),
                    Container(
                      height: 180.h,
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: <Widget>[
                              Transform.scale(
                                scale: 1.5.r,
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
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10.h, horizontal: 5.w),
                                  child: Text(_radios[index],
                                      style: TextStyle(fontSize: 20.h)),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      height: 30.h,
                    ),
                    SecondaryColorHeading(title: "ご注意事項"),
                    Container(
                      height: 30.h,
                    ),
                    Container(
                      height: 260.h,
                      decoration: BoxDecoration(
                        color: Color(0xffF4EAE9),
                        borderRadius: BorderRadius.circular(10.h),
                        border: Border.all(
                          color: Color(0xffD7C9C8),
                          width: 7,
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(25.h),
                        width: double.infinity,
                        child: Column(
                          children: [
                            RoundBulletText(
                                text:
                                    "申請の途中でブラウザを閉じた場合は、最初からやり直していただく必要があります。"),
                            SizedBox(
                              height: 10.h,
                            ),
                            RoundBulletText(
                                text:
                                    "規定時間内（60分以内）に完了しない場合は、最初からやり直していただく必要があります。"),
                            SizedBox(
                              height: 10.h,
                            ),
                            RoundBulletText(
                                text:
                                    "カメラへのアクセス許可ポップアップが表示されます。撮影のために許可していただく必要があります。")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    SecondaryColorHeading(title: "注意事項を確認しました。"),
                    SizedBox(
                      height: 100.h,
                    )
                  ]),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: ActionButton(
                      onPressed: () {},
                    ))
              ]))),
    );
  }
}

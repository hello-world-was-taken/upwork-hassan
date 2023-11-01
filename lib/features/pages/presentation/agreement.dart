import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/access_request.dart';
import 'package:upwork_hassan/features/pages/presentation/onboarding.dart';
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
              margin: EdgeInsets.only(top: AppDimension.height(40, context), left: AppDimension.width(20, context),right: AppDimension.width(20, context)),
              child: Stack(children: [
                SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(
                      height: AppDimension.height(10, context),
                    ),
                    Text(
                      "ご提出いただく身分証明書を選択してください。",
                      style: TextStyle(fontSize: AppDimension.height(20, context)),
                    ),
                    SizedBox(
                      height: AppDimension.height(20, context),
                    ),
                    SecondaryColorHeading(title: "株式会社サチ通商弊社」）は"),
                    Container(
                      height: AppDimension.height(280, context),
                      child: ListView.builder(
                        
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: <Widget>[
                              Transform.scale(
                                scale: AppDimension.radius(1.5, context),
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
                                      vertical: AppDimension.height(20, context), 
                                      horizontal: AppDimension.width(5, context)),
                                  child: Text(_radios[index],
                                      style: TextStyle(fontSize: AppDimension.height(20, context))),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      height: AppDimension.height(30, context),
                    ),
                    SecondaryColorHeading(title: "ご注意事項"),
                    Container(
                      height: AppDimension.height(30, context),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF4EAE9),
                        borderRadius: BorderRadius.circular(AppDimension.height(10, context)),
                        border: Border.all(
                          color: Color(0xffD7C9C8),
                          width: 7,
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(AppDimension.height(25, context)),
                        width: double.infinity,
                        child: Column(
                          children: [
                            RoundBulletText(
                                text:
                                    "申請の途中でブラウザを閉じた場合は、最初からやり直していただく必要があります。"),
                            SizedBox(
                              height: AppDimension.height(10, context),
                            ),
                            RoundBulletText(
                                text:
                                    "規定時間内（60分以内）に完了しない場合は、最初からやり直していただく必要があります。"),
                            SizedBox(
                              height: AppDimension.height(10, context),
                            ),
                            RoundBulletText(
                                text:
                                    "カメラへのアクセス許可ポップアップが表示されます。撮影のために許可していただく必要があります。")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppDimension.height(40, context),
                    ),
                    SecondaryColorHeading(title: "注意事項を確認しました。"),
                    SizedBox(
                      height: AppDimension.height(100, context),
                    )
                  ]),
                ),
                Positioned(
                    bottom: 0,
                    child: ActionButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OnBoarding()),
                        );
                      },
                      text: '次へ進む',
                    )
                    
                    )
              ]
              )
              )
              ),
    );
  }
}

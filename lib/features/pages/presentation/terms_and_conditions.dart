import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
import 'package:upwork_hassan/features/pages/presentation/agreement.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/action_button.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/app_bar.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/round_bullet_text.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/secondary_color_title.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/square_bullet_and_text_widget.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/term_holder.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFf5f5f5),
        appBar: CustomAppBar(text: "ご利用規約"),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimension.width(30, context), vertical: AppDimension.height(10, context)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: AppDimension.height(40, context)),
                      width: double.infinity,
                      child: Text(
                        "株式会社サチ通商インターナショナルが本人認証 サービスを提供いたします。",
                        style: TextStyle(
                          fontSize: AppDimension.height(25, context),
                          
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: AppDimension.height(20, context)),
                      width: double.infinity,
                      child: Text(
                        "プライバシーポリシーと利用規約を最後までお読 みになり、下のボタンから次へお進みください。",
                        style: TextStyle(
                          fontSize: AppDimension.height(25, context),
                        ),
                      ),
                    ),
                    SecondaryColorHeading(title: "プライバシーポリシー"),
                    SizedBox(height: AppDimension.height(15, context),
                    
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppDimension.radius(5, context)),
                        border: Border.all(
                          color: Color(0XFFe6e6e6),
                          width: 5.0,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: AppDimension.height(10, context)),
                            width: double.infinity,
                            child: Image.asset(
                              "assets/images/newww.png",
                              width: AppDimension.width(300, context),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: AppDimension.height(10, context)),
                              child: Text(
                                "プライバシーポリシー",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: AppDimension.height(25, context),
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: AppDimension.width(10, context)),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: AppDimension.width(10, context)),
                                  child: Text(
                                    "2023年10月16日改定",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: AppDimension.height(25, context),
                                        ),
                                  ),
                                ),
                                BulletText(text: "基本方針"),
                                TermHolder(
                                    text:
                                        """株式会社サチ通商インターナショナル（以下「弊社」）は、各種法的サービスのご提供にあたり、お客様の個人情報をお預かりしております。弊社は、お客様の個人情報を取り扱う事業主として個人情報を保護し、お客様に更なる信頼性と安心感をご提供できるように努めて参ります。弊社は、個人情報に関する法令を遵守し、個人情報の適切な取り扱いを実現いたします。"""),
                                SizedBox(
                                  height: AppDimension.height(25, context),
                                ),
                                TermHolder(
                                    text:
                                        """ライバシー情報のうち「個人情報」とは、個人情報保護法にいう「個人情報」を指すものとし、生存する個人に関する情報であって、当該情報に含まれる氏名、生年月日、住所、電話番号、連絡先その他の記述等により特定の個人を識別できる情報を指します。"""),
                                SizedBox(
                                  height: AppDimension.height(25, context),
                                ),
                                BulletText(text: "個人情報の開示や訂正等について"),
                                TermHolder(
                                    text:
                                        """お客様ご本人、またはその代理人の方より、弊社が保有するお客様ご本人に関する個人情報の開示や訂正、追加、削除および利用停止のご請求があった場合は、ご本人であること（またはその代理人の方であること）を確認のうえ、法令等にしたがって速やかに対応いたします。ただし、以下の事例に該当する場合はその限りではありません。"""),
                                SizedBox(
                                  height: AppDimension.height(25, context),
                                ),
                                RoundBulletText(text: "法令に基づき裁判所や警察等の公的機関から要請があった場合"),
                                RoundBulletText(text: "法令に特別の規定がある場合"),
                                RoundBulletText(text: "お客様の生命や身体、財産を損なうおそれがあり、本人の同意を得ることができない場合"),
                                RoundBulletText(text: "法令や弊社のご利用規約の場合"),
                                RoundBulletText(
                                    text:
                                        """注意事項に反する行動から、弊社の権利、財産またはサービスを保護または防禦する必要があり、本人の同意を得ることができない場合 
                        
    また、個人情報の内容に誤りがあり、ご本人から訂正や追加・削除および利用停止の請求がある場合、調査の上、速やかにこれらの請求に対応いたします。その際、ご本人であることが確認できない場合には、これらの請求に応じません。"""),
                                BulletText(text: " 個人情報の第三者提供について"),
                                TermHolder(
                                    text:
                                        """弊社は、個人情報保護法等の法令に定めのある場合を除き、個人情報をあらかじめご本人の同意を得ることなく、第三者に提供いたしません。"""),
                                SizedBox(
                                  height: AppDimension.height(25, context),
                                ),
                                BulletText(text: " 個人情報の委託について"),
                                TermHolder(
                                    text:
                                        """弊社は、個人情報の取り扱いの全部または一部を第三者に委託する場合は、当該第三者について厳正な調査を行い、取り扱いを委託された個人情報の安全管理が図られるよう当該第三者に対する必要かつ適切な監督を行います。"""),
                                SizedBox(
                                  height: AppDimension.height(25, context),
                                ),
                                BulletText(text: " 個人情報の取扱に関するお問い合わせ先"),
                                TermHolder(
                                  text:
                                      """個人情報の開示や訂正および利用停止、その他個人情報に関するお問い合わせにつきましては、下記の窓口で受け付けております。
株式会社サチ通商インターナショナル 電子メール：""",
                                  richText: "info@sachitsusho.com",
                                  richTextStyle: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: AppDimension.height(25, context),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: AppDimension.height(25, context),
              ),
              ActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Agreement()),
                  );
                },
                text: '同意して次へ進む',
              ),
              SizedBox(
                height: AppDimension.height(25, context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

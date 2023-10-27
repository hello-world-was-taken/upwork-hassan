import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/app_bar.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/round_bullet_text.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/square_bullet_and_text_widget.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/term_holder.dart';

class termsAndConditions extends StatefulWidget {
  const termsAndConditions({super.key});

  @override
  State<termsAndConditions> createState() => _termsAndConditionsState();
}

class _termsAndConditionsState extends State<termsAndConditions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(
                horizontal: 55.w,
                vertical: 10.h
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5.h),
                    width: double.infinity,
                    height: 100.h,
                    child:  Text("株式会社サチ通商インターナショナルが本人認証 サービスを提供いたします。",
                    style: TextStyle(
                      fontSize: 20.h,
                    ),
                    ),
                  ),
    
                                  Container(
                    margin: EdgeInsets.only(bottom: 5.h),
                    width: double.infinity,
                    height: 100.h,
                    child:  Text("プライバシーポリシーと利用規約を最後までお読 みになり、下のボタンから次へお進みください。",
                    style: TextStyle(
                      fontSize: 20.h,
                    ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(bottom: 5.h),
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
color: Color(0XFF757575),
borderRadius: BorderRadius.circular(5.r)
                    ),
                    
                    child: Center(
                      child: Text(
                        "プライバシーポリシー",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.h
                        ),
                      
                      )
                      ),
                  ),


                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                              border: Border.all(
          color: Color(0XFFe6e6e6), 
          width: 5.0, 
        ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/logo_and_name.png",
                          width: 300.w,
                          height: 60.h,
                        ),

                        

                        Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 10.h),
                            child: Text(
                                      "プライバシーポリシー",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.h,
                                        fontWeight: FontWeight.w900
                                      ),
                                    
                                    ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 10.w
                        ),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                          
                            margin: EdgeInsets.only(
                              bottom: 5.h
                              ),
                          child: Text(
                                    "2023年10月16日改定",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.h,
                                      fontWeight: FontWeight.w500
                                    ),
                                  
                                  ),
                        ),

                        bulletText(text: "基本方針"),
                        termHolder(text: """株式会社サチ通商インターナショナル（以下「弊社」）は、各種法的サービスのご提供にあたり、お客様の個人情報をお預かりしております。弊社は、お客様の個人情報を取り扱う事業主として個人情報を保護し、お客様に更なる信頼性と安心感をご提供できるように努めて参ります。弊社は、個人情報に関する法令を遵守し、個人情報の適切な取り扱いを実現いたします。"""),
                         SizedBox(height: 25.h,) ,
                          


                         
                        termHolder(text: """ライバシー情報のうち「個人情報」とは、個人情報保護法にいう「個人情報」を指すものとし、生存する個人に関する情報であって、当該情報に含まれる氏名、生年月日、住所、電話番号、連絡先その他の記述等により特定の個人を識別できる情報を指します。"""),
                         SizedBox(height: 25.h,) ,



                         bulletText(text: "個人情報の開示や訂正等について"),
                        termHolder(text: """お客様ご本人、またはその代理人の方より、弊社が保有するお客様ご本人に関する個人情報の開示や訂正、追加、削除および利用停止のご請求があった場合は、ご本人であること（またはその代理人の方であること）を確認のうえ、法令等にしたがって速やかに対応いたします。ただし、以下の事例に該当する場合はその限りではありません。"""),
                         SizedBox(height: 25.h,) ,
                        


                        roundBulletText(text: "法令に基づき裁判所や警察等の公的機関から要請があった場合"),


                        roundBulletText(text: "法令に特別の規定がある場合"),
                        roundBulletText(text: "お客様の生命や身体、財産を損なうおそれがあり、本人の同意を得ることができない場合"),
                        roundBulletText(text: "法令や弊社のご利用規約の場合"),
                        roundBulletText(text: """注意事項に反する行動から、弊社の権利、財産またはサービスを保護または防禦する必要があり、本人の同意を得ることができない場合 
                        
    また、個人情報の内容に誤りがあり、ご本人から訂正や追加・削除および利用停止の請求がある場合、調査の上、速やかにこれらの請求に対応いたします。その際、ご本人であることが確認できない場合には、これらの請求に応じません。"""),






                         bulletText(text: " 個人情報の第三者提供について"),
                        termHolder(text: """弊社は、個人情報保護法等の法令に定めのある場合を除き、個人情報をあらかじめご本人の同意を得ることなく、第三者に提供いたしません。"""),
                         SizedBox(height: 25.h,) ,

                         bulletText(text: " 個人情報の委託について"),
                        termHolder(text: """弊社は、個人情報の取り扱いの全部または一部を第三者に委託する場合は、当該第三者について厳正な調査を行い、取り扱いを委託された個人情報の安全管理が図られるよう当該第三者に対する必要かつ適切な監督を行います。"""),
                         SizedBox(height: 25.h,) ,

bulletText(text: " 個人情報の取扱に関するお問い合わせ先"),
                        termHolder(text: """個人情報の開示や訂正および利用停止、その他個人情報に関するお問い合わせにつきましては、下記の窓口で受け付けております。
株式会社サチ通商インターナショナル
電子メール：info@sachitsusho.com"""),
                         SizedBox(height: 25.h,) ,

                          ],
                        ),
                        )
                      ],
                    ),
                  ),
    
    
              ],),
              
              ),
              Container(
                width: 350.w,
                height: 100.h,
                child: ElevatedButton(
      onPressed: () {
        // Add your desired functionality here
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Set the border radius
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Custom Button',
          style: TextStyle(color: Colors.white),
        ),
      ),
    )
              
              ,)
            ],
          ),
        ),
      ),
    );
  }
}

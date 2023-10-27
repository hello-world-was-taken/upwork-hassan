import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/app_bar.dart';
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

                          ],
                        ),
                        )
                      ],
                    ),
                  )
    
              ],),
              
              )
              
            ],
          ),
        ),
      ),
    );
  }
}

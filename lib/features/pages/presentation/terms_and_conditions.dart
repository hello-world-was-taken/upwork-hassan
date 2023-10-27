import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/app_bar.dart';

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

                        

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10.h),
                          child: Text(
                                    "プライバシーポリシー",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25.h
                                    ),
                                  
                                  ),
                        ),

                        Container(
                          

                          child: Text(
                                    "2023年10月16日改定",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.h
                                    ),
                                  
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

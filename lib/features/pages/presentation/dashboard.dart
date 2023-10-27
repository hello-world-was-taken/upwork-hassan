import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/loggedin_app_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final ScrollController _controller = new ScrollController();

    var reachEnd = false;
    int selectedOption = 0;

    _listener() {
      final maxScroll = _controller.position.maxScrollExtent;
      final minScroll = _controller.position.minScrollExtent;
      if (_controller.offset >= maxScroll) {
        setState(() {
          reachEnd = true;
        });
      }

      if (_controller.offset <= minScroll) {
        setState(() {
          reachEnd = false;
        });
      }
    }

    @override
    void initState() {
      _controller.addListener(_listener);
      super.initState();
    }

    @override
    void dispose() {
      _controller.removeListener(_listener);
      _controller.dispose();
      super.dispose();
    }

    return Stack(children: [
      Positioned(
        child: LoggedInAppBar(imageUrl: "..."),
        top: 0.0,
        height: 50.h,
        width: MediaQuery.of(context).size.width,
      ),
      Positioned(
        top: 50.h,
        bottom: 50.h,
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: EdgeInsets.all(8.h),
          child: ListView(
            children: [
              Text(
                "株式会社サチ通商インターナショナル（以下「",
                style: TextStyle(height: 1.5),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text("株式会社サチ通商インターナショナル（以下「弊社」）は 株式会社サチ通",
                  style: TextStyle(height: 1.5)),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 40.h,
                color: Colors.grey.shade100,
                child: Center(
                  child: Text(
                    "株式会社サチ通商弊社」）は",
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 500.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                        color: Colors.grey.shade400,
                        width: 2.h,
                        style: BorderStyle.solid),
                    left: BorderSide(
                        color: Colors.grey.shade400,
                        width: 2.h,
                        style: BorderStyle.solid),
                    right: BorderSide(
                        color: Colors.grey.shade400,
                        width: 2.h,
                        style: BorderStyle.solid),
                    bottom: BorderSide(
                        color: Colors.grey.shade400,
                        width: 2.h,
                        style: BorderStyle.solid),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(children: [
                    Image(
                      height: 50.h,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/liquid.png"),
                    ),
                    Divider(
                      color: Colors.grey.shade400,
                    ),
                    Container(
                      padding: EdgeInsets.all(5.h),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5.h),
                            width: double.infinity,
                            height: 40.h,
                            child: Text(
                              "■ 個人情報の開示や訂正等についてお客様ご本人個人情報の開示や訂正、追加、",
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 5.h),
                            width: double.infinity,
                            height: 40.h,
                            child: Text(
                              "■ 個人情報の開示や訂正等についてお客様ご本人個人情報の開示や訂正、追加、",
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 5.h),
                            width: double.infinity,
                            height: 40.h,
                            child: Text(
                              "■ 個人情報の開示や訂正等についてお客様ご本人個人情報の開示や訂正、追加、",
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.all(5.h),
          width: double.infinity,
          height: 60.h,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 67, 165, 204),
              borderRadius: BorderRadius.circular(5.r)),
          child: Center(
              child: Text(
            "プライバシーポリシー",
            style: TextStyle(color: Colors.white, fontSize: 20.h),
          )),
        ),
      )
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Agreement extends StatefulWidget {
  const Agreement({super.key});

  @override
  State<Agreement> createState() => _AgreementState();
}

class _AgreementState extends State<Agreement> {
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
        top: 0.0,
        bottom: 50.0,
        width: MediaQuery.of(context).size.width,
        child: Container(
          padding: EdgeInsets.all(8.h),
          child: ListView(
            children: [
              Text("株式会社サチ通商インターナショナル（以下「弊社」）は"),
              Container(
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
                height: 150.h,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: <Widget>[
                        Radio(
                          value: index,
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value as int;
                            });
                          },
                        ),
                        Text('株式会社」）は '),
                      ],
                    );
                  },
                ),
              ),
              Container(
                height: 30.h,
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
              Container(
                height: 30.h,
              ),
              Container(
                height: 200.h,
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  border: Border(
                    top: BorderSide(
                        color: Colors.red.shade200,
                        width: 2.h,
                        style: BorderStyle.solid),
                    left: BorderSide(
                        color: Colors.red.shade200,
                        width: 2.h,
                        style: BorderStyle.solid),
                    right: BorderSide(
                        color: Colors.red.shade200,
                        width: 2.h,
                        style: BorderStyle.solid),
                    bottom: BorderSide(
                        color: Colors.red.shade200,
                        width: 2.h,
                        style: BorderStyle.solid),
                  ),
                ),
                child: Container(
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
              ),
              Container(
                height: 30.h,
              ),
              Container(
                  height: 40.h,
                  color: Color.fromARGB(255, 234, 255, 254),
                  child: Center(
                    child: Row(children: [
                      Checkbox(value: true, onChanged: (checked) {}),
                      Text(
                        "株式会社サチ通商弊社」）は",
                      ),
                    ]),
                  )),
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

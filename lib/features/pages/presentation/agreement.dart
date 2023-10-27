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
    var selectedOption;

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
          padding: EdgeInsets.all(8),
          child: ListView(
            children: [
              Text("株式会社サチ通商インターナショナル（以下「弊社」）は"),
              Container(
                height: 40,
              ),
              Container(
                height: 40,
                color: Colors.grey.shade100,
                child: Center(
                  child: Text(
                    "株式会社サチ通商弊社」）は",
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: <Widget>[
                        Radio(
                          value: "option 1",
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value;
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
                height: 30,
              ),
              Container(
                height: 40,
                color: Colors.grey.shade100,
                child: Center(
                  child: Text(
                    "株式会社サチ通商弊社」）は",
                  ),
                ),
              ),
              Container(
                height: 30,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  border: Border(
                    top: BorderSide(
                        color: Colors.red, width: 2, style: BorderStyle.solid),
                    left: BorderSide(
                        color: Colors.red, width: 2, style: BorderStyle.solid),
                    right: BorderSide(
                        color: Colors.red, width: 2, style: BorderStyle.solid),
                    bottom: BorderSide(
                        color: Colors.red, width: 2, style: BorderStyle.solid),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(5.h),
                  child: Column(children: [
                    Text(
                        "■ 個人情報の開示や訂正等についてお客様ご本人、またはその代理人の方より、弊社が保有するお客様ご本人に関する個人情報の開示や訂正、追加、"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "■ 個人情報の開示や訂正等についてお客様ご本人、またはその代理人の方より、弊社が保有するお客様ご本人に関する個人情報の開示や訂正、追加、"),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "■ 個人情報の開示や訂正等についてお客様ご本人、またはその代理人の方より、弊社が保有するお客様ご本人に関する個人情報の開示や訂正、追加、"),
                  ]),
                ),
              ),
              Container(
                height: 30,
              ),
              Container(
                  height: 40,
                  color: Colors.grey.shade100,
                  child: Center(
                    child: Text(
                      "株式会社サチ通商弊社」）は",
                    ),
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
          height: 50.h,
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

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
    var _radios = ["運転免許証", "在留カード", "マイナンバーカード（写真付き）"];

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

    return Scaffold(
      body: Stack(children: [
        Positioned(
          child: customAppBar(),
          top: 0.h,
          height: 50.h,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          top: 60.h,
          bottom: 50.h,
          width: MediaQuery.of(context).size.width,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: ListView(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text("ご提出いただく身分証明書を選択してください。"),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Color(0xff757575),
                    borderRadius: BorderRadius.circular(10.h),
                  ),
                  child: Center(
                    child: Text(
                      "株式会社サチ通商弊社」）は",
                      style: TextStyle(color: Colors.white),
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
                          Text(_radios[index]),
                        ],
                      );
                    },
                  ),
                ),
                Container(
                  height: 30.h,
                ),
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Color(0xff757575),
                    borderRadius: BorderRadius.circular(10.h),
                  ),
                  child: Center(
                    child: Text(
                      "ご注意事項",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  height: 30.h,
                ),
                Container(
                  height: 250.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF4EAE9),
                    borderRadius: BorderRadius.circular(10.h),
                    border: Border(
                      top: BorderSide(
                          color: Color(0xffD7C9C8),
                          width: 5.h,
                          style: BorderStyle.solid),
                      left: BorderSide(
                          color: Color(0xffD7C9C8),
                          width: 5.h,
                          style: BorderStyle.solid),
                      right: BorderSide(
                          color: Color(0xffD7C9C8),
                          width: 5.h,
                          style: BorderStyle.solid),
                      bottom: BorderSide(
                          color: Color(0xffD7C9C8),
                          width: 5.h,
                          style: BorderStyle.solid),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(5.h),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(8.h),
                          width: double.infinity,
                          height: 50.h,
                          child: Text(
                            "■ 申請の途中でブラウザを閉じた場合は、最初からやり直していただく必要があります。",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          margin: EdgeInsets.all(8.h),
                          width: double.infinity,
                          height: 50.h,
                          child: Text(
                            "■ 規定時間内（60分以内）に完了しない場合は、最初からやり直していただく必要があります。",
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          margin: EdgeInsets.all(8.h),
                          width: double.infinity,
                          height: 50.h,
                          child: Text(
                            "■ カメラへのアクセス許可ポップアップが表示されます。撮影のために許可していただく必要があります。",
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
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: Color(0xff757575),
                    borderRadius: BorderRadius.circular(10.h),
                  ),
                  child: Center(
                    child: Text(
                      "注意事項を確認しました。",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(24.h),
            width: double.infinity,
            height: 60.h,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(5.r)),
            child: Center(
                child: Text(
              "次へ進む",
              style: TextStyle(color: Colors.white, fontSize: 20.h),
            )),
          ),
        )
      ]),
    );
  }
}

class customAppBar extends StatelessWidget implements PreferredSizeWidget {
  const customAppBar({super.key});
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            "ご本人確認書類の選択",
            style: TextStyle(color: Colors.white, fontSize: 25.h),
          ),
        ),
      ),
    );
  }
}

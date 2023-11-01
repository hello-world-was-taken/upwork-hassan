import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstStepPage extends StatelessWidget {
  const FirstStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            CustomCard(title: "申請の途中でブラウザを閉じた場合は、最初からやり直していただく必要があります。", options: ["申請の途", "申請の途"]),
            SizedBox(
              height: 10.h,
            ),
            CustomCard(
              title: "申請の途中でブラウザを閉じた場合は、最初からやり直していただく必要があります。",
              subtitle: "iphone: 申請の途中でブラウザを閉じた場合は、ります。 \n申請の途中でブラウザを閉じた場合。",
              options: ["途中で", "途中で"],
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomCard(title: "申請の途中でブラウザを閉じた場合", options: ["申請の途中", "申請の途中"]),
            SizedBox(
              height: 10.h,
            ),
            CustomCard(title: "申請の途中でブラウザを閉じた場合は", options: ["申請の途中", "申請の途中"]),
            SizedBox(
              height: 10.h,
            ),
            CustomCard(title: "申請の途中でブラウ", options: ["申請", "申請の"]),
            SizedBox(
              height: 10.h,
            ),
            CustomCard(title: "申請の途中", options: ["申請の途中", "申請"]),
          ],
        ),
      ],
    );
  }
}

class CustomCard extends StatefulWidget {
  final title;
  final subtitle;
  final options;
  const CustomCard({
    super.key,
    required this.title,
    this.subtitle,
    required this.options,
  });

  @override
  State<CustomCard> createState() => _CustomeCardState();
}

class _CustomeCardState extends State<CustomCard> {
  int selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20.w, top: 20.h),
          child: Text(
            widget.title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20.h),
          ),
        ),
        widget.subtitle != null
            ? Container(
                margin: EdgeInsets.only(left: 25.h),
                child: Text(
                  widget.subtitle,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,
                    height: 1.5,
                  ),
                ),
              )
            : const SizedBox.shrink(),
        Container(
          height: 50.h,
          child: ListView.builder(
            itemCount: widget.options.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: <Widget>[
                  Transform.scale(
                    scale: 1.0.r,
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
                  Text(
                    widget.options[index],
                    style: TextStyle(fontSize: 18.h),
                  ),
                  SizedBox(
                    width: 10.w,
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}

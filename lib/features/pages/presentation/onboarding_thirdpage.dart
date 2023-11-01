import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/round_bullet_text.dart';

const List<String> dropdowns = <String>['One', 'Two', 'Three', 'Four'];

class ThirdStepPage extends StatefulWidget {
  const ThirdStepPage({super.key});

  @override
  State<ThirdStepPage> createState() => _ThirdStepPageState();
}

class _ThirdStepPageState extends State<ThirdStepPage> {
  final controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  String dropdownValue = dropdowns.first;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: AppDimension.height(10, context),
        ),
        Text(
          "申請の途中でブラウザを閉じた場",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: AppDimension.height(16, context), fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: AppDimension.height(20, context),
        ),
        Text(
          "申請の途中でブラウザを閉じた場合は、最初からやり直。",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: AppDimension.height(12, context)),
        ),
        Container(
          padding: EdgeInsets.only(left: AppDimension.width(100, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppDimension.height(10, context),
              ),
              RoundBulletText(
                text: "申ます。",
                size: AppDimension.height(12, context),
              ),
              SizedBox(
                height: AppDimension.height(5, context),
              ),
              RoundBulletText(
                text: "規定時ます。",
                size: AppDimension.height(12, context),
              ),
              SizedBox(
                height:AppDimension.height(5, context),
              ),
              RoundBulletText(
                text: "カメ。",
                size: AppDimension.height(12, context),
              )
            ],
          ),
        ),
        SizedBox(
          height: AppDimension.height(20, context),
        ),
        TextFormField(
          controller: controllers[0],
          keyboardType: TextInputType.text,
          autofocus: false,
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.done,
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            labelText: "place_holder",
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            focusedBorder: OutlineInputBorder(),
            border: OutlineInputBorder(),
            focusColor: Color(0XFF757575),
          ),
        ),
        SizedBox(height: AppDimension.height(20, context)),
        TextFormField(
          controller: controllers[1],
          keyboardType: TextInputType.text,
          autofocus: false,
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.done,
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            labelText: "place_holder",
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            focusedBorder: OutlineInputBorder(),
            border: OutlineInputBorder(),
            focusColor: Color(0XFF757575),
          ),
        ),
        SizedBox(height: AppDimension.height(20, context)),
        TextFormField(
          controller: controllers[2],
          keyboardType: TextInputType.text,
          autofocus: false,
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.done,
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            labelText: "place_holder",
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            focusedBorder: OutlineInputBorder(),
            border: OutlineInputBorder(),
            focusColor: Color(0XFF757575),
          ),
        ),
        SizedBox(height: AppDimension.height(20, context)),
        TextFormField(
          controller: controllers[3],
          keyboardType: TextInputType.text,
          autofocus: false,
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.done,
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            labelText: "place_holder",
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            focusedBorder: OutlineInputBorder(),
            border: OutlineInputBorder(),
            focusColor: Color(0XFF757575),
          ),
        ),
        SizedBox(height: AppDimension.height(20, context)),
        TextFormField(
          controller: controllers[4],
          keyboardType: TextInputType.text,
          autofocus: false,
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.done,
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            labelText: "place_holder",
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            focusedBorder: OutlineInputBorder(),
            border: OutlineInputBorder(),
            focusColor: Color(0XFF757575),
          ),
        ),
        SizedBox(height: AppDimension.height(20, context)),
        TextFormField(
          controller: controllers[5],
          keyboardType: TextInputType.text,
          autofocus: false,
          textAlign: TextAlign.start,
          textInputAction: TextInputAction.done,
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            labelText: "place_holder",
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            focusedBorder: OutlineInputBorder(),
            border: OutlineInputBorder(),
            focusColor: Color(0XFF757575),
          ),
        ),
        SizedBox(height: AppDimension.height(20, context)),
        SizedBox(
          height: AppDimension.height(100, context),
          child: TextFormField(
            controller: controllers[6],
            keyboardType: TextInputType.text,
            autofocus: false,
            expands: true,
            minLines: null,
            maxLines: null,
            textAlign: TextAlign.start,
            textInputAction: TextInputAction.done,
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
              labelText: "place_holder",
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              focusedBorder: OutlineInputBorder(),
              border: OutlineInputBorder(),
              focusColor: Color(0XFF757575),
            ),
          ),
        ),
        SizedBox(height: AppDimension.height(20, context)),
        Text(
          "Birthdate",
          style: TextStyle(fontSize: AppDimension.height(12, context)),
        ),
        SizedBox(height: AppDimension.height(10, context)),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.35,
              height: AppDimension.height(50, context),
              child: TextFormField(
                controller: controllers[7],
                keyboardType: TextInputType.text,
                autofocus: false,
                expands: true,
                minLines: null,
                maxLines: null,
                textAlign: TextAlign.start,
                textInputAction: TextInputAction.done,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  labelText: "place_holder",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  focusedBorder: OutlineInputBorder(),
                  border: OutlineInputBorder(),
                  focusColor: Color(0XFF757575),
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.03),
            SizedBox(
              height: AppDimension.height(50, context),
              width: MediaQuery.of(context).size.width * 0.17,
              child: TextFormField(
                controller: controllers[8],
                keyboardType: TextInputType.text,
                autofocus: false,
                expands: true,
                minLines: null,
                maxLines: null,
                textAlign: TextAlign.start,
                textInputAction: TextInputAction.done,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  labelText: "place_holder",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  focusedBorder: OutlineInputBorder(),
                  border: OutlineInputBorder(),
                  focusColor: Color(0XFF757575),
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.03),
            SizedBox(
              height: AppDimension.height(50, context),
              width: MediaQuery.of(context).size.width * 0.17,
              child: TextFormField(
                controller: controllers[9],
                keyboardType: TextInputType.text,
                autofocus: false,
                expands: true,
                minLines: null,
                maxLines: null,
                textAlign: TextAlign.start,
                textInputAction: TextInputAction.done,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  labelText: "place_holder",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  focusedBorder: OutlineInputBorder(),
                  border: OutlineInputBorder(),
                  focusColor: Color(0XFF757575),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: AppDimension.height(20, context)),
        DropdownButton<String>(
          isExpanded: true,
          value: dropdownValue,
          elevation: 16,
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: dropdowns.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class MFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          // Desktop layout
          return DesktopFooter();
        } else {
          // Mobile layout
          return MobileFooter();
        }
      },
    );
  }
}

class DesktopFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300], // Set the light grey background color
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Company logo goes here
                  Image.asset(
                    'assets/images/Original on Transparent.png',
                    height: AppDimension.height(50, context),
                  ),
                  SizedBox(width: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextLink(name: "企業情報", to: ""),
                      Container(
                        child: Text("|"),
                        margin: EdgeInsets.symmetric(
                          horizontal: AppDimension.width(5, context),
                        ),
                      ),
                      TextLink(name: "事業紹介", to: ""),
                      Container(
                        child: Text("|"),
                        margin: EdgeInsets.symmetric(
                          horizontal: AppDimension.width(5, context),
                        ),
                      ),
                      TextLink(name: "サステナビリティ", to: ""),
                      Container(
                        child: Text("|"),
                        margin: EdgeInsets.symmetric(
                          horizontal: AppDimension.width(5, context),
                        ),
                      ),
                      TextLink(name: "リクルート", to: ""),
                      Container(
                        child: Text("|"),
                        margin: EdgeInsets.symmetric(
                          horizontal: AppDimension.width(5, context),
                        ),
                      ),
                      TextLink(name: "お客様窓口", to: ""),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 1,
                    height: AppDimension.height(150, context),
                    color: Colors.grey.shade800,
                  ),
                  SizedBox(width: AppDimension.width(10, context)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextLink(name: "プライバシーポリシー", to: ""),
                      SizedBox(height: AppDimension.height(10, context)),
                      TextLink(name: "情報セキュリティー方針", to: ""),
                      SizedBox(height: AppDimension.height(10, context)),
                      TextLink(name: "古物営業法に基づく表記", to: ""),
                      SizedBox(height: AppDimension.height(10, context)),
                      TextLink(name: "サイトマップ", to: ""),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20), // Add separating space
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email Us: info@sachitsusho.com"),
                  SizedBox(height: AppDimension.height(10, context)),
                  Text("東京都公安委員会許可 古物商許可証 第301112004582号"),
                  SizedBox(height: AppDimension.height(10, context)),
                  Text("Copyright© (株)サチ通商インターナショナル All Rights Reserved."),
                ],
              ),
              SizedBox(height: AppDimension.height(10, context)),
              Row(
                children: [
                  Icon(Icons.facebook),
                  Icon(Icons.facebook),
                  Icon(Icons.facebook),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextLink extends StatefulWidget {
  final name;
  final to;
  const TextLink({super.key, this.name, this.to});

  @override
  State<TextLink> createState() => _TextLinkState();
}

class _TextLinkState extends State<TextLink> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        widget.name,
        style: TextStyle(
          fontWeight: hovered ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      onTap: () {},
      onHover: (value) => {
        setState(
          () => hovered = value,
        ),
      },
    );
  }
}

class MobileFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300], // Set the light grey background color
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/Original on Transparent.png',
                height: AppDimension.height(50, context),
              ),
              SizedBox(height: AppDimension.height(10, context)),
              TextLink(name: "企業情報", to: ""),
              SizedBox(height: AppDimension.height(10, context)),
              TextLink(name: "事業紹介", to: ""),
              SizedBox(height: AppDimension.height(10, context)),
              TextLink(name: "サステナビリティ", to: ""),
              SizedBox(height: AppDimension.height(10, context)),
              TextLink(name: "リクルート", to: ""),
              SizedBox(height: AppDimension.height(10, context)),
              TextLink(name: "お客様窓口", to: ""),
            ],
          ),
          SizedBox(height: AppDimension.height(10, context)),
          Divider(height: 10),
          SizedBox(height: AppDimension.height(10, context)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextLink(name: "プライバシーポリシー", to: ""),
              SizedBox(height: AppDimension.height(10, context)),
              TextLink(name: "情報セキュリティー方針", to: ""),
              SizedBox(height: AppDimension.height(10, context)),
              TextLink(name: "古物営業法に基づく表記", to: ""),
              SizedBox(height: AppDimension.height(10, context)),
              TextLink(name: "サイトマップ", to: ""),
            ],
          ),
          SizedBox(height: AppDimension.height(10, context)),
          Divider(height: 10),
          SizedBox(height: AppDimension.height(10, context)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Email Us: info@sachitsusho.com"),
              SizedBox(height: AppDimension.height(10, context)),
              Text("東京都公安委員会許可 古物商許可証 第301112004582号"),
              SizedBox(height: AppDimension.height(10, context)),
              Text("Copyright© (株)サチ通商インターナショナル All Rights Reserved."),
            ],
          ),
          SizedBox(height: AppDimension.height(10, context)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook),
              Icon(Icons.facebook),
              Icon(Icons.facebook),
            ],
          ),
        ],
      ),
    );
  }
}

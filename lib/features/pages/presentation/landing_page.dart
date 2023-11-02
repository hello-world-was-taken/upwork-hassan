import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/theme/app_color.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/box_card.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/image_grid.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/sliding_text_with_dots_indicator.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/carousel_slider_images_component.dart';
import 'package:upwork_hassan/features/pages/presentation/widgets/trade_grid.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
            child: Column(
          children: [
            SlidingImagesComponent(),
            SizedBox(height: AppDimension.height(150, context)),
            MiddleTextComponent(),
            SizedBox(height: AppDimension.height(150, context)),
            tradeGrid(),
            SizedBox(height: AppDimension.height(150, context)),
            ImageGridItem(),
            SizedBox(height: AppDimension.height(150, context)),
            SideNotes(),
            SizedBox(height: AppDimension.height(150, context)),
            CustomCardsContainer(),
            SizedBox(height: AppDimension.height(150, context)),
            BoxCardsContainer(),
            SizedBox(height: AppDimension.height(150, context)),
            SlidingTextWithDots(),
            SizedBox(height: AppDimension.height(150, context)),
          ],
        )),
      ),
    );
  }
}

class CustomCardsContainer extends StatelessWidget {
  const CustomCardsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimension.relativeWidth(80, context),
      margin: EdgeInsets.symmetric(
          horizontal: AppDimension.relativeWidth(1, context)),
      child: Column(
        children: [
          CustomCard(
            asset: "assets/images/check.png",
            headerText: "​ステップ1",
            title: "買取価格をチェックする。",
            subtitle:
                "最後に、集荷サービスもしくは営業所やコンビニからデバイスを発送します。発送手順については、確認用Eメールでご案内します。",
          ),
          SizedBox(height: AppDimension.height(50, context)),
          CustomCard(
            asset: "assets/images/check.png",
            headerText: "​ステップ1",
            title: "買取価格をチェックする。",
            subtitle:
                "最後に、集荷サービスもしくは営業所やコンビニからデバイスを発送します。発送手順については、確認用Eメールでご案内します。",
          ),
          SizedBox(height: AppDimension.height(50, context)),
          CustomCard(
            asset: "assets/images/check.png",
            headerText: "​ステップ1",
            title: "買取価格をチェックする。",
            subtitle:
                "最後に、集荷サービスもしくは営業所やコンビニからデバイスを発送します。発送手順については、確認用Eメールでご案内します。",
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final asset;
  final title;
  final subtitle;
  final headerText;
  const CustomCard(
      {super.key, this.asset, this.title, this.subtitle, this.headerText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset(asset),
          width: AppDimension.relativeWidth(60, context),
        ),
        SizedBox(height: 10),
        Container(
          color: Colors.black,
          child: Text(
            headerText,
            maxLines: 3,
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.relativeWidth(10, context)),
          child: Text(
            title,
            maxLines: 3,
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.relativeWidth(10, context)),
          child: Text(
            subtitle,
            maxLines: 3,
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class SideNotes extends StatelessWidget {
  const SideNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset("assets/images/phone.png"),
          width: AppDimension.relativeWidth(80, context),
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.relativeWidth(10, context)),
          child: Text(
            "あなたのデータは​ハヤランドが完全消去。",
            maxLines: 3,
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.relativeWidth(10, context)),
          child: Text(
            "透明な買取システムで安心を提供します。",
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            maxLines: 3,
            style: TextStyle(
              fontSize: AppDimension.height(16, context),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 50),
        Container(
          width: AppDimension.relativeWidth(80, context),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimension.width(5, context)),
                child: Text(
                  "透明な買取システムで安心を提供します。",
                  softWrap: true,
                  textScaleFactor: AppDimension.textScaleFactor(context),
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: AppDimension.height(16, context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(color: Colors.black),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimension.width(5, context)),
                child: Text(
                  "透明な買取システムで安心を提供します。",
                  softWrap: true,
                  textScaleFactor: AppDimension.textScaleFactor(context),
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: AppDimension.height(16, context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(color: Colors.black),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimension.width(5, context)),
                child: Text(
                  "透明な買取システムで安心を提供します。",
                  softWrap: true,
                  textScaleFactor: AppDimension.textScaleFactor(context),
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: AppDimension.height(16, context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(color: Colors.black),
            ],
          ),
        )
      ],
    );
  }
}

class MiddleTextComponent extends StatelessWidget {
  const MiddleTextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, size: AppDimension.height(30, context)),
            SizedBox(width: AppDimension.height(20, context)),
            Text(
              "Buyback",
              textScaleFactor: AppDimension.textScaleFactor(context),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: AppDimension.height(20, context)),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimension.relativeWidth(10, context),
          ),
          child: Text(
            "あなたのデバイス、新しい価値へ。",
            softWrap: true,
            maxLines: 3,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: AppDimension.height(20, context)),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.relativeWidth(10, context)),
          child: Text(
            "Your Device, Onto New Value.",
            maxLines: 3,
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: AppDimension.height(50, context)),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimension.relativeWidth(10, context)),
          child: Text(
            "ハヤランドBayBuckでは、デバイスの買取を通じて、地球環境に優しいサイクルを提供しています。あなたの不要なデバイスをお売りいただくことで、それらは整備を経て新たなライフサイクルを迎えます。同時に、あなたには経済的なメリットが生まれ、ハヤランドでデバイスを購入する際のコストも軽減されます。私たちはお客様に持続可能な選択を提供し、ハヤランドの利用が廃棄物削減に積極的に貢献するよう努めています。",
            softWrap: true,
            textScaleFactor: AppDimension.textScaleFactor(context),
            maxLines: 10,
            style: TextStyle(
              fontSize: AppDimension.height(16, context),
            ),
          ),
        ),
      ],
    );
  }
}

class BoxCardsContainer extends StatelessWidget {
  const BoxCardsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimension.relativeWidth(10, context),
          ),
          child: Text(
            "デバイスの買取は、ハヤランドBuyBackにお任せ。",
            softWrap: true,
            maxLines: 3,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimension.relativeWidth(10, context),
          ),
          child: BoxCard(
            title: "全スマホメーカーのモデルに対応",
            subtitle: "ハヤランドBayBuckは、全メーカーのスマホやタブレット、スマートウォッチなどを買取することが可能です。",
            asset: "assets/images/box 1.png",
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimension.relativeWidth(10, context),
          ),
          child: BoxCard(
            title: "ゼロタッチでデータ完全消去",
            subtitle:
                "ゼロタッチでデータ完全消去代表的な国際認定機関から認定を受けているソフトウェアを用いて、機能検査テストとデータ消去を実施しています。",
            asset: "assets/images/box 2.png",
          ),
        )
      ],
    );
  }
}

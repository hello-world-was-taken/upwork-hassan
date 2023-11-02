import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/box_card.dart';

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
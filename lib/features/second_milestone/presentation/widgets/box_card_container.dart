import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/box_card.dart';

class BoxCardsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          // Desktop layout
          return DesktopBoxCardsContainer();
        } else {
          // Mobile layout
          return MobileBoxCardsContainer();
        }
      },
    );
  }
}

class MobileBoxCardsContainer extends StatelessWidget {
  const MobileBoxCardsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimension.width(10, context),
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
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _buildBoxes(context, 300),
        )
      ],
    );
  }
}

class DesktopBoxCardsContainer extends StatelessWidget {
  const DesktopBoxCardsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimension.width(10, context),
          ),
          child: Text(
            "デバイスの買取は、",
            softWrap: true,
            maxLines: 3,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimension.width(10, context),
          ),
          child: Text(
            "ハヤランドBuyBackにお任せ。",
            softWrap: true,
            maxLines: 3,
            textScaleFactor: AppDimension.textScaleFactor(context),
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildBoxes(context, 150),
        )
      ],
    );
  }
}

List<Widget> _buildBoxes(BuildContext context, int width) {
  return [
    Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimension.width(5, context),
      ),
      child: BoxCard(
        title: "全スマホメーカーのモデルに対応",
        subtitle: "ハヤランドBayBuckは、全メーカーのスマホやタブレット、スマートウォッチなどを買取することが可能です。",
        asset: "assets/images/box 1.png",
        width: width,
      ),
    ),
    SizedBox(
      width: AppDimension.width(10, context),
      height: AppDimension.height(10, context),
    ),
    Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimension.width(5, context),
      ),
      child: BoxCard(
        title: "ゼロタッチでデータ完全消去",
        subtitle:
            "ゼロタッチでデータ完全消去代表的な国際認定機関から認定を受けているソフトウェアを用いて、機能検査テストとデータ消去を実施しています。",
        asset: "assets/images/box 2.png",
        width: width,
      ),
    )
  ];
}

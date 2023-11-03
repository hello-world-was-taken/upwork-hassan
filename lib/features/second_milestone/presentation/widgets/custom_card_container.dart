import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
import 'package:upwork_hassan/features/second_milestone/presentation/widgets/custom_card.dart';

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

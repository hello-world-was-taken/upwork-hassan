import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

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
import 'package:flutter/material.dart';
import 'package:upwork_hassan/core/theme/font_class.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class RoundBulletText extends StatelessWidget {
//   final String text;
//   final size;
//   const RoundBulletText({super.key, required this.text, this.size = 25});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: AppDimension.height(5, context)),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             margin: EdgeInsets.only(right: AppDimension.width(5, context), top: AppDimension.height(10, context)),
//             child: CircleAvatar(
//               radius: AppDimension.radius(3, context),
//               backgroundColor: Colors.black,
//             ),
//           ),
//           Expanded(
//             child: Container(
//               child: Text(
//                 text,
//                 style: TextStyle(
//                   fontSize: AppDimension.height(25, context),
//                 fontFamily: 'MsGothic'

//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class RoundBulletText extends StatelessWidget {
  final String text;
  final double size;
  const RoundBulletText({super.key, required this.text, this.size=20.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: AppDimension.height(5, context)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
                right: AppDimension.width(5, context),
                top: AppDimension.height(10, context)),
            child: CircleAvatar(
              radius: AppDimension.radius(3, context),
              backgroundColor: Colors.black,
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                text,
                style: TextStyle(
                    fontSize: AppDimension.height(size, context),
                    fontFamily: 'MsGothic'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

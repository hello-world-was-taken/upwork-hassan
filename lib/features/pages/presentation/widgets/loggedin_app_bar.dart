import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoggedInAppBar extends StatelessWidget {
  const LoggedInAppBar({super.key, required String imageUrl});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        key: key,
        title: Text(
          "またはその代理人の方より",
        ),
        backgroundColor: Color.fromARGB(255, 79, 177, 243),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.h),
            child: InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60.h),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/profile_placeholder.jpg"),
                ),
              ),
            ),
          )
        ]);
  }
}

import 'package:flutter/material.dart';
import 'package:hover_menu/hover_menu.dart';
import 'package:hoverover/hoverover.dart';
import 'package:upwork_hassan/core/utils/app_dimension.dart';

class AppBarComponent extends StatefulWidget {
  const AppBarComponent({Key? key}) : super(key: key);

  @override
  State<AppBarComponent> createState() => _AppBarComponentState();
}

class _AppBarComponentState extends State<AppBarComponent> {
  bool _isDrawerOpen = false;

  void _openDrawer() {
    setState(() {
      _isDrawerOpen = true;
    });
  }

  void _closeDrawer() {
    setState(() {
      _isDrawerOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
           
          },
          icon: Icon(Icons.menu),
        ),
        Image.asset("assets/images/logo_and_name.png"),
       
      ],
    );
  }
}

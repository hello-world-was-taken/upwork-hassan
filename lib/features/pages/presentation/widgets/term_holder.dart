import 'package:flutter/material.dart';

class termHolder extends StatelessWidget {
  final String text;
  const termHolder({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          
        ),
      ),
    );
  }
}

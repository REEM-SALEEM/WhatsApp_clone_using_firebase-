import 'package:flutter/material.dart';
import 'package:watsappclone/core/color/colors.dart';

class CustomElevButton extends StatelessWidget {
  final double? width;
  final VoidCallback onPressed;
  final String text;
  const CustomElevButton(
      {super.key, this.width, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: width ?? MediaQuery.of(context).size.width - 100,
      child: ElevatedButton(
          onPressed: () {},
       
          child: Text(text)),
    );
  }
}

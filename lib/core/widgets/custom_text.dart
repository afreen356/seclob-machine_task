import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_colors.dart';

class HeadingText extends StatelessWidget {
  final String text;
  const HeadingText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w500,
        color: Colors.black, 
      ),
    );
  }
}

class SubheadingText extends StatelessWidget {
  final String text;
  const SubheadingText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      // alignment: Alignment.bottomCenter,
    padding: EdgeInsets.symmetric(horizontal: 12,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Appcolors.shadecolor
      ),
      child: Text(
        text,
        style:  TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: Colors.black 
        ),
      ),
    );
  }
}
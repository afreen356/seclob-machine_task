import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_colors.dart';

Widget buildIndicator(int currentIdx) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
      3,
      (index) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.all(4),
        width: currentIdx == index ? 12.0 : 25.0,
        height: 6,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(6),
          color: currentIdx == index
              ? Appcolors.primarycolor
              : Colors.grey.withOpacity(0.4),
        ),
      ),
    ),
  );
}

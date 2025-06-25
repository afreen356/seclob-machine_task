import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';

class BigSaleBanner extends StatelessWidget {
  const BigSaleBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
           AppImages.bigsaleImg,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: index == 2 ? 10 : 6,
              height: 6,
              decoration: BoxDecoration(
                color: index == 2 ? Colors.purple : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(3),
              ),
            );
          }),
        ),
      ],
    );
  }
}

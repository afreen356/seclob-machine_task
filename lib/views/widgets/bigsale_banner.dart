import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';
import 'package:shimmer/shimmer.dart';

class BigSaleBanner extends StatefulWidget {
  const BigSaleBanner({super.key});

  @override
  State<BigSaleBanner> createState() => _BigSaleBannerState();
}

class _BigSaleBannerState extends State<BigSaleBanner> {
  bool _isLoading = true;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _isLoading
            ? Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            )
            : ClipRRect(
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

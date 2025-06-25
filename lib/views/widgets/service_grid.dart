import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Services',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        // const SizedBox(height: 12),
        GridView.count(
          shrinkWrap: true,

          physics: NeverScrollableScrollPhysics(),

          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2.5,
          children: [
            ServiceTile(title: 'E-card', imagePath: AppImages.eCardImg),
            ServiceTile(title: 'HR insight', imagePath: AppImages.handImg),
            ServiceTile(
              title: 'Recharge',
              imagePath: AppImages.rechargeImg,
              tag: 'Get 10% Extra',
            ),
            ServiceTile(title: 'DTH/Cable', imagePath: AppImages.cableImg),
          ],
        ),
      ],
    );
  }
}

class ServiceTile extends StatelessWidget {
  final String title;
  final String imagePath;
  final String? tag;

  const ServiceTile({
    super.key,
    required this.title,
    required this.imagePath,
    this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          // padding: const EdgeInsets.symmetric(vertical: 24),
          child: Row(
            children: [
              Image.asset(imagePath, height: 70, width: 70),
              // SizedBox(width: 5,),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),

        if (tag != null)
          Positioned(
            top: 0,
            left: 110,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
              child: Text(
                tag!,
                style: const TextStyle(fontSize: 10, color: Colors.white),
              ),
            ),
          ),
      ],
    );
  }
}

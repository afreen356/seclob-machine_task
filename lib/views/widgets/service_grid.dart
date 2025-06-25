import 'package:flutter/material.dart';


class ServiceSection extends StatelessWidget {
 

  const ServiceSection({super.key, });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Services',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(12),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              ServiceTile(title: 'E-card', icon: Icons.credit_card_outlined),
              ServiceTile(title: 'HR insight', icon: Icons.groups_outlined),
              ServiceTile(
                title: 'Recharge',
                icon: Icons.bolt_outlined,
                tag: 'Get 10% Extra',
              ),
              ServiceTile(title: 'DTH/Cable', icon: Icons.satellite_alt_outlined),
            ],
          ),
        )
      ],
    );
  }
}


class ServiceTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final String? tag;

  const ServiceTile({
    super.key,
    required this.title,
    required this.icon,
    this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 36),
              const SizedBox(height: 8),
              Text(title, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
        if (tag != null)
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
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


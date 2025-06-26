import 'package:flutter/material.dart';
import 'package:seclob_machine_task/views/widgets/bigsale_banner.dart';
import 'package:seclob_machine_task/views/widgets/refer_gift.dart';
import 'package:seclob_machine_task/views/widgets/service_grid.dart';
import 'package:seclob_machine_task/views/widgets/wallet_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Wallet Header 
          SliverToBoxAdapter(
            child: WalletHeaderBg(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: const [
                  SizedBox(height: 20),
                  BigSaleBanner(),
                  SizedBox(height: 24),
                  ServiceSection(),
                  SizedBox(height: 24),
                  ReferAFriendCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

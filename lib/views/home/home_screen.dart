import 'package:flutter/material.dart';
import 'package:seclob_machine_task/views/widgets/bigsale_banner.dart';
import 'package:seclob_machine_task/views/widgets/service_grid.dart';
import 'package:seclob_machine_task/views/widgets/wallet_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          const WalletHeaderBg(),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: const [
                WalletHeader(),
                SizedBox(height: 20),
                BigSaleBanner(),
                SizedBox(height: 24),
                ServiceSection(),
                SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: const Color(0xFF5E0080),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: "Revenue"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
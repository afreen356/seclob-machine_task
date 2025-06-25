import 'package:flutter/material.dart';
import 'package:seclob_machine_task/views/widgets/setting_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF5E0080),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF8041D9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(''), 
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'daniel',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      // SizedBox(height: 4),
                      Text(
                        'daniel03@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'Account',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
          const SettingItem(icon: Icons.person_outline, title: "Profile"),
           SettingSwitchItem(
            icon: Icons.dark_mode_outlined,
            title: "Darkmode",
          ),
          SettingSwitchItem(
            icon: Icons.notifications_outlined,
            title: "Notification",
          ),
          const SettingItem(
              icon: Icons.account_balance_outlined, title: "Bank Account"),
          const SettingItem(
              icon: Icons.headset_mic_outlined, title: "Help & Support"),
          const SettingItem(
              icon: Icons.policy_outlined, title: "Consumer policies"),
          // const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: LogoutButton(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
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
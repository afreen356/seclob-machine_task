// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seclob_machine_task/viewmodel/user_provider.dart';
import 'package:seclob_machine_task/views/widgets/setting_tile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    Future.microtask(() {
    Provider.of<UserProvider>(context, listen: false).loadUserDetails();
  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        backgroundColor: Color(0xFF5E0080),
      ),
      body: 
           Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Consumer<UserProvider>(
        builder: (context, provider, _) {
           if (provider.isLoading) {
      return const CircularProgressIndicator(color: Colors.white);
    }
    if (provider.error != null) {
      return Text(
        provider.error!,
        style: const TextStyle(color: Colors.white),
      );
    }
    final user = provider.userDetails;
    if (user == null) return Center(child: Text('No Data'));
          return  Container(
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
                      backgroundImage: AssetImage('assets/images/Avatar.png'), 
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                          user.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        // SizedBox(height: 4),
                        Text(
                         user.email,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
        }
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
      
    );
  }
}
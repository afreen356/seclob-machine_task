// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:seclob_machine_task/views/widgets/bottomsheet.dart';

class SettingItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const SettingItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ListTile(
      // contentPadding: EdgeInsets.only(right: 20),
      leading: Icon(icon, color: Colors.black87,size: screenWidth * 0.06),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
      ),
      trailing:  Icon(Icons.arrow_forward_ios, size: screenWidth * 0.05),
      onTap: () {},
    );
  }
}

class SettingSwitchItem extends StatelessWidget {
  final IconData icon;
  final String title;
  bool isOn;

  SettingSwitchItem({
    super.key,
    required this.icon,
    required this.title,
    this.isOn = false,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ListTile(
      leading: Icon(icon, color: Colors.black87,size: screenWidth * 0.06),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
      ),
      trailing: Icon(
        isOn ? Icons.toggle_on : Icons.toggle_off,
        color: Colors.grey.withOpacity(0.5),
       size: screenWidth * 0.1
      ),
      onTap: () {},
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ListTile(
      // contentPadding: EdgeInsets.only(right: 20),
      leading: Icon(Icons.logout, color: Colors.red,size: screenWidth*0.06,),
      title: Text(
        'Log out',
        style: TextStyle(
          color: Colors.red,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      // trailing: const Icon(Icons.arrow_forward_ios, size: 22),
      onTap: () {
        showLogoutConfirmation(context);
      },
    );
  }
}

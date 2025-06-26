import 'package:flutter/material.dart';
import 'package:seclob_machine_task/views/auth/login_screen.dart';

void showLogoutConfirmation(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: false,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (_) => const LogoutConfirmationSheet(),
  );
}

class LogoutConfirmationSheet extends StatelessWidget {
  const LogoutConfirmationSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final horizontalPadding = screenWidth * 0.06; 
    final verticalPadding = screenHeight * 0.035; 
    final titleFontSize = screenWidth * 0.05; 
    final descFontSize = screenWidth * 0.035; 

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Container(
              height: 5,
              width: 40,
              margin: const EdgeInsets.only(bottom: 24),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Icon(Icons.error_outline_outlined, color: Colors.red, size: screenWidth * 0.1), // ~40
          SizedBox(height: screenHeight * 0.02), 
          Text(
            'Log out?',
            style: TextStyle(
              fontSize: titleFontSize,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: screenHeight * 0.01), 
          Text(
            'Are you sure you want to log out?',
            style: TextStyle(
              fontSize: descFontSize,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: screenHeight * 0.03), 
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    side: BorderSide(color: Colors.grey.shade400),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text("Cancel"),
                ),
              ),
              SizedBox(width: screenWidth * 0.03), 
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text("Log out"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:seclob_machine_task/views/widgets/login_form.dart';
import 'package:seclob_machine_task/views/widgets/logo_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          // 🔵 Fixed Header with background and welcome
          SizedBox(
            height: screenHeight * 0.35,
            child: Stack(
              children: [
                SquareBg(screenHeight: screenHeight),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 50),
                        LogoHeader(),
                        SizedBox(height: 20),
                        WelcomeText(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ⚪ Scrollable white area with Login Form
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: constraints.maxHeight),
                      child: IntrinsicHeight(
                        child: Column(
                          children: const [
                            LoginFormCard(),
                            Spacer(),
                            SocialLogin(),
                            SizedBox(height: 10),
                            SignUpText(),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

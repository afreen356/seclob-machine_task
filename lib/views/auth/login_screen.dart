import 'package:flutter/material.dart';
import 'package:seclob_machine_task/views/widgets/login_form.dart';
import 'package:seclob_machine_task/views/widgets/logo_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          SquareBg(screenHeight: screenHeight),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: screenHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          SizedBox(height: 60),
                          LogoHeader(),
                          SizedBox(height: 20),
                          WelcomeText(),
                          SizedBox(height: 40),
                          LoginFormCard(),
                        ],
                      ),
                      Column(
                        children: const [
                          SocialLogin(),
                          SizedBox(height: 20),
                          SignUpText(),
                          SizedBox(height: 20),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

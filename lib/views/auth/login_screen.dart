import 'package:flutter/material.dart';
import 'package:seclob_machine_task/views/widgets/login_form.dart';
// import 'package:seclob_machine_task/core/constants/app_images.dart';
import 'package:seclob_machine_task/views/widgets/logo_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
        SquareBg(screenHeight: screenHeight),
        SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80,width: 20,),
            LogoHeader(),
            SizedBox(height: 20,),
           WelcomeText(),
           SizedBox(height: 100,),
           LoginFormCard(),
           SizedBox(height: 150,),
           SocialLogin(),
           SizedBox(height: 20,),
           SignUpText()
          ],
        ),
        )
         

        ],
      ),
    );
  }
}
// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seclob_machine_task/core/widgets/custom_button.dart';
import 'package:seclob_machine_task/viewmodel/auth_viewmodel.dart';
import 'package:seclob_machine_task/views/widgets/bottom_nav.dart';

class LoginFormCard extends StatefulWidget {
  const LoginFormCard({super.key});

  @override
  State<LoginFormCard> createState() => _LoginFormCardState();
}

class _LoginFormCardState extends State<LoginFormCard> {
  //controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  //formkey
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    final authVm = Provider.of<AuthProvider>(context);
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              validator: _validateEmail,
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Enter email',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.white70),
                ),
                // enabledBorder: OutlineInputBorder()
                // fillColor: Colors.white,
                // filled: true
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              validator: _validatePassword,
              controller: passController,
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: 'Enter password',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.lock_outline, color: Colors.grey),
                suffixIcon: IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.white70),
                ),
              ),
            ),
          ),
          // const SizedBox(height: 5),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Forget password ?",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                authVm.isLoading
                    ? Center(child: CircularProgressIndicator())
                    : CustomButton('Log In', () async {
                      _handleLogin(authVm);
                    }),
          ),
        ],
      ),
    );
  }

  void _handleLogin(AuthProvider authVm) async {
    if (formKey.currentState!.validate()) {
      final success = await authVm.login(
        emailController.text.trim(),
        passController.text.trim(),
      );

      if (success) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) =>  MainScreen()),
          (Route<dynamic> route) => false,
        );
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(authVm.error ?? 'Login failed')));
      }
    }
  }

  String? _validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$');
    if (!emailRegExp.hasMatch(value.trim())) {
      return 'Enter a valid email';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }
}

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Or Log in with",
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.go, size: 40),
            Image.asset('assets/images/1 (1).png'),
            SizedBox(width: 20),
            Icon(Icons.facebook, size: 30, color: Colors.blue),
            SizedBox(width: 20),
            Icon(Icons.apple, size: 30, color: Colors.black),
          ],
        ),
      ],
    );
  }
}

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account ? "),
        GestureDetector(
          onTap: () {},
          child: const Text(
            "Sign Up",
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton(this.text, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
          child: SizedBox(
            width: double.infinity,
            // height: 50, // consistent height
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF491B6D),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
              ),
              child: Text(text),
            ),
          ),
        );
      }
    
  }


class LoginButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
   const LoginButton(this.text, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
          child: SizedBox(
            width: double.infinity,
            // height: 50, // consistent height
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF491B6D),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
              ),
              child: Text(text),
            ),
          ),
        );
      }
    
  }
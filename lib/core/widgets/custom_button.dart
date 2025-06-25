import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_colors.dart';

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
                backgroundColor: Appcolors.primarycolor,
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
import 'package:flutter/material.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';

class WalletHeaderBg extends StatelessWidget {
  const WalletHeaderBg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.walletBlncBg),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
class WalletHeader extends StatelessWidget {
  const WalletHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(   
      mainAxisAlignment: MainAxisAlignment.spaceAround, 
      children: [   
           
            // SizedBox(width: 10,),
            Text(
              "Hey daniel! 👋",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'PoligraphGrotesk',
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            // Spacer(),
            Icon(Icons.notifications_active_outlined)
         
      ],
    );

  }
}
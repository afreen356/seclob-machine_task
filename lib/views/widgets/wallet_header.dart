// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seclob_machine_task/core/constants/app_images.dart';
import 'package:seclob_machine_task/viewmodel/wallet_viewmodel.dart';

class WalletHeaderBg extends StatefulWidget {
  const WalletHeaderBg({super.key});

  @override
  State<WalletHeaderBg> createState() => _WalletHeaderBgState();
}

class _WalletHeaderBgState extends State<WalletHeaderBg> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<BalanceProvider>(
        context,
        listen: false,
      ).loadBalanceFromStorage();
    });
  }

  @override
  Widget build(BuildContext context) {
    final balanceProvider = Provider.of<BalanceProvider>(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.3,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.05,
        vertical: screenHeight * 0.03,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.walletBlncBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.04), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hey Daniel! 👋",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'PoligraphGrotesk',
                  fontSize: screenWidth * 0.055, 
                  fontWeight: FontWeight.w400,
                ),
              ),
              Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
                size: screenWidth * 0.065, 
              ),
            ],
          ),

          Spacer(),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Available balance',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.035, 
                ),
              ),
              Consumer<BalanceProvider>(
                builder: (context, provider, _) {
                  if (provider.isLoading) {
                    return Text(
                      '0.00',
                      style: TextStyle(
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.w500,
                      ),
                    );
                  }

                  if (provider.error != null) {
                    return Text(
                      provider.error!,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: screenWidth * 0.04,
                      ),
                    );
                  }

                  return Text(
                    '₹${balanceProvider.balance.formattedAmount}',
                    style: TextStyle(
                      fontSize: screenWidth * 0.075, 
                      fontWeight: FontWeight.w500,
                    ),
                  );
                },
              ),
            ],
          ),

          SizedBox(height: screenHeight * 0.015),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.012,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(screenWidth * 0.02),
              ),
            ),
            child: Text(
              '+ Add',
              style: TextStyle(fontSize: screenWidth * 0.04),
            ),
          ),
        ],
      ),
    );
  }
}

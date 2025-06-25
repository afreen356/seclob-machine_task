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

    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.walletBlncBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35),
          // Greeting & Notification
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hey Daniel! 👋",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'PoligraphGrotesk',
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Icon(Icons.notifications_active_outlined, color: Colors.black),
            ],
          ),
          // SizedBox(height: 40,),
          const Spacer(),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Available balance',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              Consumer<BalanceProvider>(
                builder: (context, provider, _) {
                  if (provider.isLoading) {
                    return Text('0.00');
                  }

                  if (provider.error != null) {
                    return Text(
                      provider.error!,
                      style: const TextStyle(color: Colors.red),
                    );
                  }
                  return Text(
                    '₹${balanceProvider.balance.formattedAmount}',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  );
                },
              ),
            ],
          ),

          // const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('+ Add'),
          ),
        ],
      ),
    );
  }
}

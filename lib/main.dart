import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seclob_machine_task/core/services/user_service.dart';
import 'package:seclob_machine_task/core/services/wallet_service.dart';
import 'package:seclob_machine_task/viewmodel/auth_viewmodel.dart';
import 'package:seclob_machine_task/viewmodel/user_provider.dart';
import 'package:seclob_machine_task/viewmodel/wallet_viewmodel.dart';
import 'package:seclob_machine_task/views/onboarding/splash.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
          ChangeNotifierProvider(create: (_)=>AuthProvider()),
          ChangeNotifierProvider(
          create: (_) => BalanceProvider(BalanceService()),
        ),
        ChangeNotifierProvider(create: (_)=>UserProvider(UserService()))
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(        
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: SplashScreen()
      );
  
  }
}





import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seclob_machine_task/viewmodel/auth_viewmodel.dart';
import 'package:seclob_machine_task/views/onboarding/onboarding1.dart';
import 'package:seclob_machine_task/views/onboarding/splash.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
          ChangeNotifierProvider(create: (_)=>AuthViewmodel())
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(        
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: OnboardingOne()
      );
  
  }
}





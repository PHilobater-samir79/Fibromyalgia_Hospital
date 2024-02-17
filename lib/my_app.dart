import 'package:fibromyalgia_hospital/screens/ui/initial_pages/splash_screen.dart';
import 'package:flutter/material.dart';

class FibromyalgiaApp extends StatelessWidget {
  const FibromyalgiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => const SplashScreen(),
      },

    );
  }
}

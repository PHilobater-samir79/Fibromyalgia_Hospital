import 'package:fibromyalgia_hospital/screens/ui/enable_location_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/initial_pages/views/on_boarding_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/initial_pages/views/splash_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/medical_records_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/my_cart_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/sign_in/doctor_sign_in/doctor_log_in.dart';
import 'package:fibromyalgia_hospital/screens/ui/sign_in/doctor_sign_in/doctor_sign_up.dart';
import 'package:fibromyalgia_hospital/screens/ui/sign_in/join_us_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/sign_in/patient_sign_in/patient_log_in.dart';
import 'package:fibromyalgia_hospital/screens/ui/sign_in/patient_sign_in/patient_sign_up.dart';
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
        OnBoardingScreen.routeName : (context) => const OnBoardingScreen(),
        MyCartScreen.routeName : (context) => const MyCartScreen(),
        EnableLocationScreen.routeName : (context) => const EnableLocationScreen(),
        MedicalRecordsScreen.routeName : (context) => const MedicalRecordsScreen(),
        JoinUsScreen.routeName : (context) => const JoinUsScreen(),
        PatientSignUp.routeName : (context) => const PatientSignUp(),
        PatientLogIn.routeName : (context) => const PatientLogIn(),
        DoctorSignUp.routeName : (context) => const DoctorSignUp(),
        DoctorLogIn.routeName : (context) => const DoctorLogIn(),




      },
    );
  }
}

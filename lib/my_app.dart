import 'package:fibromyalgia_hospital/screens/general_doctor_home_screen.dart';
import 'package:fibromyalgia_hospital/screens/general_patient_home_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/add_record_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/doctor_appointment_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/doctor_appointment_screen_2.dart';
import 'package:fibromyalgia_hospital/screens/ui/doctor_chat_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/all_records_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/appointment_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/doctor_details_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/doctor_home_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/doctor_messages_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/doctors_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/doctors_search_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/edit_name_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/enable_location_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/find_doctors_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/help_center_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/initial_pages/views/on_boarding_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/initial_pages/views/splash_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/location_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/log_in_and_sign_in/doctor_sign_in/doctor_log_in.dart';
import 'package:fibromyalgia_hospital/screens/ui/log_in_and_sign_in/doctor_sign_in/doctor_sign_up.dart';
import 'package:fibromyalgia_hospital/screens/ui/log_in_and_sign_in/join_us_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/log_in_and_sign_in/patient_sign_in/patient_log_in.dart';
import 'package:fibromyalgia_hospital/screens/ui/log_in_and_sign_in/patient_sign_in/patient_sign_up.dart';
import 'package:fibromyalgia_hospital/screens/ui/medical_records_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/my_cart_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/my_doctors_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/ordars_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/patient_chat_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/patient_details_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/patient_home_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/patient_messages_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/patients_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/pharmaciess_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/profile_doctor_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/profile_patient_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/select_time_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/setting_screen.dart';
import 'package:flutter/material.dart';

class FibromyalgiaApp extends StatelessWidget {
  const FibromyalgiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
        MyCartScreen.routeName: (context) => const MyCartScreen(),
        EnableLocationScreen.routeName: (context) =>
            const EnableLocationScreen(),
        MedicalRecordsScreen.routeName: (context) =>
            const MedicalRecordsScreen(),
        JoinUsScreen.routeName: (context) => const JoinUsScreen(),
        PatientSignUp.routeName: (context) => const PatientSignUp(),
        PatientLogIn.routeName: (context) => const PatientLogIn(),
        DoctorSignUp.routeName: (context) => const DoctorSignUp(),
        DoctorLogIn.routeName: (context) => const DoctorLogIn(),
        FindDoctorsScreen.routeName: (context) => const FindDoctorsScreen(),
        MyDoctorsScreen.routeName: (context) => const MyDoctorsScreen(),
        AllRecordsScreen.routeName: (context) => const AllRecordsScreen(),
        LocationScreen.routeName: (context) => const LocationScreen(),
        HelpCenterScreen.routeName: (context) => const HelpCenterScreen(),
        OrdersScreen.routeName: (context) => const OrdersScreen(),
        EditNameScreen.routeName: (context) => const EditNameScreen(),
        PatientScreen.routeName: (context) => const PatientScreen(),
        ProfileDoctorScreen.routeName: (context) => const ProfileDoctorScreen(),
        ProfilePatientScreen.routeName: (context) =>
            const ProfilePatientScreen(),
        SettingScreen.routeName: (context) => const SettingScreen(),
        DoctorChatScreen.routeName: (context) => const DoctorChatScreen(),
        PatientChatScreen.routeName: (context) => const PatientChatScreen(),
        PharmaciesScreen.routeName: (context) => const PharmaciesScreen(),
        AppointmentScreen.routeName: (context) => const AppointmentScreen(),
        DoctorsSearchScreen.routeName: (context) => const DoctorsSearchScreen(),
        PatientDetailsScreen.routeName: (context) =>
            const PatientDetailsScreen(),
        DoctorsScreen.routeName: (context) => const DoctorsScreen(),
        SelectTimeScreen.routeName: (context) => SelectTimeScreen(),
        PatientHomeScreen.routeName: (context) => const PatientHomeScreen(),
        DoctorHomeScreen.routeName: (context) => const DoctorHomeScreen(),
        DoctorAppointmentScreen.routeName: (context) =>
            const DoctorAppointmentScreen(),
        DoctorAppointmentScreen2.routeName: (context) =>
            const DoctorAppointmentScreen2(),
        AddRecordScreen.routeName: (context) => const AddRecordScreen(),
        DoctorDetailsScreen.routeName: (context) => const DoctorDetailsScreen(),
        DoctorMessagesScreen.routeName: (context) => const DoctorMessagesScreen(),
        PatientMessageScreen.routeName: (context) => const PatientMessageScreen(),
        GeneralPatientHomeScreen.routeName: (context) => const GeneralPatientHomeScreen(),
        GeneralDoctorHomeScreen.routeName: (context) => const  GeneralDoctorHomeScreen(),





      },
    );
  }
}

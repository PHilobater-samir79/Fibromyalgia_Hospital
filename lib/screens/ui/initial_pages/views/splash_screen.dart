import 'package:fibromyalgia_hospital/screens/ui/all_records_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/edit_name_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/find_doctors_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/help_center_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/initial_pages/views/on_boarding_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/location_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/medical_records_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/my_doctors_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/ordars_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/patients_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/profile_doctor_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/profile_patient_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/setting_screen.dart';
import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_textstyle.dart';
import 'package:fibromyalgia_hospital/utils/styles/assets/app_assets.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routeName = 'splashScreen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, SettingScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const CustomBackground(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppAssets.splashScreenIcon),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    AppStrings.fibromyalgiaHospital,
                    style: AppTextStyle.styleRegular25,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

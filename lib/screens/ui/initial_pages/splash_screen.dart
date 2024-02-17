import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/assets/app_assets.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
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
    Future.delayed(const Duration(seconds: 3), () {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        body: Stack(
          children: [
            Opacity(
                opacity: .1,
                child: SvgPicture.asset(
                  AppAssets.backgroundApp,
                  width: double.infinity,
                  height: double.infinity,
                )),
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
                    style: TextStyle(
                        color: AppColors.blackTextColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 25),
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

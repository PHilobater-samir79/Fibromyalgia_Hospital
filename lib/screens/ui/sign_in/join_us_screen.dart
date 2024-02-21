import 'package:fibromyalgia_hospital/screens/ui/sign_in/doctor_sign_in/doctor_sign_up.dart';
import 'package:fibromyalgia_hospital/screens/ui/sign_in/patient_sign_in/patient_sign_up.dart';
import 'package:fibromyalgia_hospital/screens/ui/sign_in/widgets/custom_join_as_container.dart';
import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_textstyle.dart';
import 'package:fibromyalgia_hospital/utils/styles/assets/app_assets.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JoinUsScreen extends StatelessWidget {
  const JoinUsScreen({super.key});
  static const String routeName = "JoinUsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Stack(
        children: [
          const CustomBackground(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .2,
                  ),
                  const Text(
                    AppStrings.joinAs,
                    style: AppTextStyle.styleRegular28,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, PatientSignUp.routeName);
                    },
                    child: const CustomJoinAsContainer(
                        image: AppAssets.patientIcon,
                        textName: AppStrings.patient),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushNamed(DoctorSignUp.routeName);
                    },
                    child: const CustomJoinAsContainer(
                        image: AppAssets.doctorIcon, textName: AppStrings.doctor),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .07,
                  ),
                  const CustomElevatedButton(
                    text: AppStrings.continueText,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:fibromyalgia_hospital/screens/ui/sign_in/widgets/Custom_social_media_sign.dart';
import 'package:fibromyalgia_hospital/screens/ui/sign_in/widgets/custom_4_digit_container.dart';
import 'package:fibromyalgia_hospital/screens/ui/sign_in/widgets/custom_Text_field.dart';
import 'package:fibromyalgia_hospital/screens/ui/sign_in/widgets/custom_forget_password_container.dart';
import 'package:fibromyalgia_hospital/screens/ui/sign_in/widgets/custom_reset_password_container.dart';
import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_textstyle.dart';
import 'package:fibromyalgia_hospital/utils/styles/assets/app_assets.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PatientLogIn extends StatelessWidget {
  const PatientLogIn({super.key});
  static const String routeName = 'PatientLogIn';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const CustomBackground(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: height * .18,
                  ),
                  Text(
                    AppStrings.welcomeBack,
                    style: AppTextStyle.styleRegular28.copyWith(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    AppStrings.patientSignUpDesc,
                    style: AppTextStyle.styleRegular15,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const CustomSocialMediaSign(
                              text: AppStrings.google, image: AppAssets.google),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const CustomSocialMediaSign(
                              text: AppStrings.facebook,
                              image: AppAssets.facebook),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  const CustomTextField(text: AppStrings.email),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    text: AppStrings.password,
                    isPass: true,
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  const CustomElevatedButton(text: AppStrings.login),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        builder: (context) {
                          return const CustomForgetPassContainer();
                        },
                      );
                    },
                    child: Text(
                      AppStrings.forgotPassword,
                      style: AppTextStyle.styleRegular15
                          .copyWith(fontSize: 14, color: AppColors.greenColor),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.doNotHaveAnAccount,
                      style: AppTextStyle.styleRegular15
                          .copyWith(fontSize: 14, color: AppColors.greenColor),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

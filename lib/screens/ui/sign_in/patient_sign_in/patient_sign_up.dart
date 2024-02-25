import 'package:fibromyalgia_hospital/screens/ui/sign_in/patient_sign_in/patient_log_in.dart';
import 'package:fibromyalgia_hospital/screens/ui/sign_in/widgets/Custom_social_media_sign.dart';
import 'package:fibromyalgia_hospital/screens/ui/sign_in/widgets/custom_Text_field.dart';
import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_textstyle.dart';
import 'package:fibromyalgia_hospital/utils/styles/assets/app_assets.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PatientSignUp extends StatefulWidget {
  static const String routeName = 'PatientSignUp';

  const PatientSignUp({super.key});


  @override
  State<PatientSignUp> createState() => _PatientSignUpState();
}

class _PatientSignUpState extends State<PatientSignUp> {
  late bool currentBool = false ;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          const CustomBackground(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: ListView(
                children: [Column(
                  children: [
                    SizedBox(
                      height: height * .18,
                    ),
                    Text(
                      AppStrings.patientSignUpTitle,
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
                            onTap:(){} ,
                            child: const CustomSocialMediaSign(
                                text: AppStrings.google, image: AppAssets.google),
                          ),
                          GestureDetector(
                            onTap: (){},
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
                    const CustomTextField(text: AppStrings.name),
                    const SizedBox(height: 10,),
                    const CustomTextField(text: AppStrings.email),
                    const SizedBox(height: 10,),
                    const CustomTextField(text: AppStrings.password,isPass: true,),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Checkbox(value: currentBool, onChanged: (newValue){
                          setState(() {
                            currentBool = newValue! ;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)
                        ),
                         activeColor: AppColors.greenColor,

                        ),
                        Text(
                          AppStrings.terms,
                          style: AppTextStyle.styleRegular15.copyWith(fontSize: 12),
                        ),



                      ],
                    ),
                    SizedBox(height: height*.06,),
                    const CustomElevatedButton(text: AppStrings.signup),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, PatientLogIn.routeName);
                      },
                      child: Text(AppStrings.haveAnAccount,
                        style: AppTextStyle.styleRegular15.copyWith(fontSize: 14,color: AppColors.greenColor),
                      ) ,
                      ),
                    const SizedBox(height: 5,)
                  ],
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

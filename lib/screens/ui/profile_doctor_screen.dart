import 'package:fibromyalgia_hospital/screens/ui/custom_profile_text_field.dart';
import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/assets/app_assets.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileDoctorScreen extends StatelessWidget {
  const ProfileDoctorScreen({super.key});
  static const String routeName = 'ProfileDoctorScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .4,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25)),
                      color: AppColors.greenColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomArrowBack(),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              AppStrings.profile,
                              style: AppTextStyle.styleMedium18,
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                     const Text(
                        AppStrings.setUpYourProfile,
                        style: AppTextStyle.styleMedium18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        AppStrings.updateYourProfileDoctor,
                        style: AppTextStyle.styleRegular15.copyWith(
                            color: AppColors.blackTextColor,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 70,
                            child: Image.asset(AppAssets.circleDoctorPhoto,fit: BoxFit.scaleDown),
                          ),
                          Positioned(
                            bottom: -5,
                            right: -5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(40),
                                color: Colors.grey[400]
                              ),
                                child: IconButton(onPressed: (){}, icon: const Icon(Iconsax.camera))),
                          )
                        ],
                      )




                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding:  EdgeInsets.only(left: 20.0,right: 20),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(AppStrings.personalInformation,style: AppTextStyle.styleMedium18,),
                       SizedBox(height: 10,),
                      CustomProfileTextField(icon: Iconsax.personalcard,labelName: AppStrings.name),
                      SizedBox(height: 10,),
                      CustomProfileTextField(icon: Icons.phone,labelName: AppStrings.contactNumber),
                      SizedBox(height: 10,),
                      CustomProfileTextField(icon: Icons.date_range_rounded,labelName: AppStrings.dateOfBirth),
                      SizedBox(height: 10,),
                      CustomProfileTextField(icon: Iconsax.map,labelName: AppStrings.location),
                      SizedBox(height: 10,),
                      CustomProfileTextField(icon: Iconsax.document_text,labelName: AppStrings.addBiography),
                      SizedBox(height: 10,),
                      Center(child: CustomButton(text: AppStrings.continueText)),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

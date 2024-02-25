import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_textstyle.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});
  static const String routeName = 'HelpCenterScreen' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0,left: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomArrowBack(),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            AppStrings.helpCenter,
                            style: AppTextStyle.styleMedium18,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      cursorColor: AppColors.greenColor,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              const BorderSide(color: AppColors.greyWhite)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                              const BorderSide(color: AppColors.greyWhite)),
                          hintText: 'I have an issue with',
                          hintStyle: const TextStyle(
                              color: AppColors.greenColor, fontSize: 17),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          fillColor: AppColors.whiteColor),
                    ),
                    const SizedBox(height: 10,),



                    ListTile(
                      title: Text(AppStrings.bookingANewAppointment,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greyTextColor),),
                      trailing:const RotatedBox(
                        quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios_new,color: AppColors.greyTextColor,size:20 ,)),
                    ),
                    const SizedBox(height: 2,),
                    ListTile(
                      title: Text(AppStrings.existingAppointment,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greyTextColor),),
                      trailing:const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios_new,color: AppColors.greyTextColor,size:20 ,)),
                    ),
                    const SizedBox(height: 2,),
                    ListTile(
                      title: Text(AppStrings.onlineConsultations,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greyTextColor),),
                      trailing:const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios_new,color: AppColors.greyTextColor,size:20 ,)),
                    ),
                    const SizedBox(height: 2,),
                    ListTile(
                      title: Text(AppStrings.feedbacks,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greyTextColor),),
                      trailing:const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios_new,color: AppColors.greyTextColor,size:20 ,)),
                    ),
                    const SizedBox(height: 2,),
                    ListTile(
                      title: Text(AppStrings.medicineOrders,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greyTextColor),),
                      trailing:const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios_new,color: AppColors.greyTextColor,size:20 ,)),
                    ),
                    const SizedBox(height: 2,),
                    ListTile(
                      title: Text(AppStrings.diagnosticTests,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greyTextColor),),
                      trailing:const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios_new,color: AppColors.greyTextColor,size:20 ,)),
                    ),
                    const SizedBox(height: 2,),
                    ListTile(
                      title: Text(AppStrings.healthPlans,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greyTextColor),),
                      trailing:const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios_new,color: AppColors.greyTextColor,size:20 ,)),
                    ),
                    const SizedBox(height: 2,),
                    ListTile(
                      title: Text(AppStrings.myAccountAndPractoDrive,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greyTextColor),),
                      trailing:const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios_new,color: AppColors.greyTextColor,size:20 ,)),
                    ),
                    const SizedBox(height: 2,),
                    ListTile(
                      title: Text(AppStrings.haveAFeatureInMind,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greyTextColor),),
                      trailing:const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios_new,color: AppColors.greyTextColor,size:20 ,)),
                    ),
                    const SizedBox(height: 2,),
                    ListTile(
                      title: Text(AppStrings.otherIssues,style: AppTextStyle.styleMedium18.copyWith(color: AppColors.greyTextColor),),
                      trailing:const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios_new,color: AppColors.greyTextColor,size:20 ,)),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

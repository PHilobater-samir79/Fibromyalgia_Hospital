import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_arrow_back.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EditNameScreen extends StatelessWidget {
  const EditNameScreen({super.key});
  static const String routeName = 'EditNameScreen' ;

  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.lightGreenColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      AppStrings.editProfileName,
                      style: AppTextStyle.styleMedium18,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              SizedBox(height: height*.25,),
              const Text(AppStrings.whatIsYourName,style: AppTextStyle.styleRegular25,),
              SizedBox(height: height*.05,),
              TextFormField(
                cursorColor: AppColors.greyTextColor,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Iconsax.edit),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const BorderSide(color: AppColors.blackTextColor)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        const BorderSide(color: AppColors.blackTextColor)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),

                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}

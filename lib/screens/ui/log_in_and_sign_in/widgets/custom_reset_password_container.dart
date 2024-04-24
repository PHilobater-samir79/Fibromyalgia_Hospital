import 'package:fibromyalgia_hospital/screens/ui/log_in_and_sign_in/widgets/custom_Text_field.dart';
import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CustomResetPasswordContainer extends StatelessWidget {
  const CustomResetPasswordContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .60,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 5,
                width: 100,
                decoration: BoxDecoration(
                    color: AppColors.greyTextColor,
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Text(
                AppStrings.resetPassword,
                style: AppTextStyle.styleRegular25,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              AppStrings.resetPasswordDesc,
              style: AppTextStyle.styleRegular15
                  .copyWith(fontWeight: FontWeight.w500),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomTextField(text: AppStrings.newPassword,isPass: true,),
            const SizedBox(height: 5,),
            const CustomTextField(text: AppStrings.reEnterPassword,isPass: true,),
            const SizedBox(
              height: 30,
            ),
            const Center(
                child: CustomButton(
              text: AppStrings.updatePassword,
            )),
          ],
        ),
      ),
    );
  }
}

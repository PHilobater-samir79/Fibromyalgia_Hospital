import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/assets/app_assets.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});
  static const String routeName = 'myCartScreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const CustomBackground(),
            Column(
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
                        AppStrings.myCart,
                        style: AppTextStyle.styleMedium18,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * .1,
                ),
                CircleAvatar(
                  radius: width * .3,
                  backgroundColor: AppColors.lightGreenColor,
                  child: SvgPicture.asset(AppAssets.note),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  AppStrings.myCartScreenTitle,
                  style: AppTextStyle.styleMedium18
                      .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  AppStrings.myCartScreenDesc,
                  style: AppTextStyle.styleRegular15,
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomButton(text: AppStrings.shopNow)
              ],
            )
          ],
        ),
      ),
    );
  }
}

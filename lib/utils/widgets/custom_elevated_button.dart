import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_textstyle.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Function()? onTap ;

  const CustomElevatedButton({super.key, required this.text, this.onTap,});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width*.7,
      child: GestureDetector(
        onTap: onTap,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.greenColor,
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Text(
              text,
              style: AppTextStyle.styleMedium18.copyWith(color: AppColors.whiteColor),
            ),
          ),
        ),
      ),
    );
  }
}

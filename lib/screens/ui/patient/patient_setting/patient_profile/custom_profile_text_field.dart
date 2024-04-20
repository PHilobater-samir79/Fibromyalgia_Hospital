import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CustomProfileTextField extends StatelessWidget {
  final String? labelName ;
  final IconData icon ;


  const CustomProfileTextField({super.key, this.labelName, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.greyTextColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.whiteColor,
        suffixIcon: Icon(icon,color: AppColors.greyTextColor,),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.greenColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.greyWhite)),
        labelText: labelName,
        labelStyle: const TextStyle(color: AppColors.greenColor,fontSize: 17),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

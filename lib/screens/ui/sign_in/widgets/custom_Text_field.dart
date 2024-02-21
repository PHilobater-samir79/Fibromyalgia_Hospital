import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomTextField extends StatefulWidget {
  final IconData? icon;
  final String text;
  final bool isPass;
  const CustomTextField({
    super.key,
    this.icon,
    required this.text,
    this.isPass = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextFormField(
        validator: (value) => value!.isEmpty ? "Requird" : null,
        obscureText: widget.isPass ? obscure : false,
        cursorColor: AppColors.greyTextColor,
        decoration: InputDecoration(
          suffixIcon: widget.isPass
              ? IconButton(
              onPressed: () {
                setState(() {
                  obscure = !obscure;
                });
              },
              icon: const Icon(Iconsax.eye_slash,color: AppColors.greyTextColor,))
              : const SizedBox(),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.greyWhite)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AppColors.greyWhite)),
          labelText: widget.text,
          labelStyle: const TextStyle(color: AppColors.greyTextColor,fontSize: 17),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
import 'package:fibromyalgia_hospital/screens/ahella/Core/theming/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../utils/data/setting_model.dart';
import '../../../../../../utils/styles/Strings/app_strings.dart';
import '../../../../../../utils/styles/Text_style/app_text_style.dart';
import '../../../../../../utils/styles/colors/app_colors.dart';


class CartDetailsSection extends StatefulWidget {
   const CartDetailsSection({super.key});

  @override
  State<CartDetailsSection> createState() => _CartDetailsSectionState();
}

class _CartDetailsSectionState extends State<CartDetailsSection> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.grey.withOpacity(0.4)),
          ),
          child: Row(
            children: [
              SvgPicture.asset('assets/images/address.svg', width: 28, height: 29),
              const SizedBox(width: 30),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Address',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        'Region',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0, right: 17),
                        child: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text(
                                    'Choose your Region',
                                    style: AppTextStyle.styleMedium18,
                                  ),
                                  content: SizedBox(
                                    height: 250,
                                    width: 50,
                                    child: ListView.builder(
                                        itemBuilder: (context, index) {
                                          return Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Text(
                                                SettingModel
                                                    .regionitem[index].title,
                                                style: AppTextStyle
                                                    .styleRegular15
                                                    .copyWith(
                                                    color: AppColors
                                                        .blackTextColor),
                                              ),
                                              Checkbox(
                                                activeColor:
                                                AppColors.greenColor,
                                                value: isChecked,
                                                onChanged: (value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                },
                                              )
                                            ],
                                          );
                                        },
                                        itemCount: SettingModel.regionitem.length ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: const Text(
                                        'Cancel',
                                        style: TextStyle(
                                            color: AppColors.greenColor),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    TextButton(
                                      child: const Text(
                                        'Confirm',
                                        style: TextStyle(
                                            color: AppColors.greenColor),
                                      ),
                                      onPressed: () {
                                        // Handle the confirm action
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(AppStrings.cairo,
                                  style: AppTextStyle.styleRegular15),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),


                ],
              ),
              const Spacer(),
              SvgPicture.asset('assets/ahella/arrow-down.svg'),
            ],
          ),
        ),
        const SizedBox(height: 26),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.grey.withOpacity(0.4)),
          ),
          child: Row(
            children: [
              SvgPicture.asset('assets/ahella/shopping-cart.svg'),
              const SizedBox(width: 30),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shipping',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '2-3 days',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset('assets/ahella/arrow-down.svg'),
            ],
          ),
        ),
        const SizedBox(height: 26),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.grey.withOpacity(0.4)),
          ),
          child: Row(
            children: [
              SvgPicture.asset('assets/ahella/percent.svg'),
              const SizedBox(width: 30),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promo Code',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- \£200',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: MyColors.green,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text('ST#132'),
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset('assets/ahella/right.svg'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

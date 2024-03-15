import 'package:fibromyalgia_hospital/screens/ui/custom_availiable_time_widget.dart';
import 'package:fibromyalgia_hospital/screens/ui/custom_date_time_container.dart';
import 'package:fibromyalgia_hospital/screens/ui/custom_no_availiable_time_widget.dart';
import 'package:fibromyalgia_hospital/screens/ui/custom_search_docrors_container.dart';
import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SelectTimeScreen extends StatelessWidget {
  SelectTimeScreen({super.key});
  static const String routeName = 'SelectTimeScreen';
  bool isAvailable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
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
                          AppStrings.selectTime,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomSearchDoctorsContainer(),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const CustomDateTimeContainer();
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  isAvailable == true
                      ? const CustomAvailiableTimeWidget()
                      : const CustomNoAvailiableTimeWidget(),
                  Expanded(child: SizedBox()),
                  Center(child: CustomButton(text: 'Saved')),
                  SizedBox(height: 30,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

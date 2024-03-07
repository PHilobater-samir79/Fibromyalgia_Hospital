import 'package:fibromyalgia_hospital/screens/ui/custom_popular_doctor_container.dart';
import 'package:fibromyalgia_hospital/screens/ui/custom_search_docrors_container.dart';
import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});
  static const String routeName = 'DoctorsScreen';

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
                          AppStrings.allDoctors,
                          style: AppTextStyle.styleMedium18,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomSearchBar(),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Text(
                        AppStrings.popularDoctor,
                        style: AppTextStyle.styleMedium18,
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        AppStrings.seeAll,
                        style: AppTextStyle.styleRegular15,
                      ),
                      RotatedBox(
                          quarterTurns: 2,
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 15,
                            color: AppColors.greyTextColor,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.28,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const CustomPopularDoctorContainer();
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      Text(
                        AppStrings.categories,
                        style: AppTextStyle.styleMedium18,
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        AppStrings.seeAll,
                        style: AppTextStyle.styleRegular15,
                      ),
                      RotatedBox(
                          quarterTurns: 2,
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 15,
                            color: AppColors.greyTextColor,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const CustomSearchDoctorsContainer();
                    },
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

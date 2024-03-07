import 'package:fibromyalgia_hospital/screens/ui/category_model.dart';
import 'package:fibromyalgia_hospital/screens/ui/custom_patient_appointment_container.dart';
import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/assets/app_assets.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';

class DoctorHomeScreen extends StatelessWidget {
  const DoctorHomeScreen({super.key});
  static const String routeName = 'DoctorHomeScreen';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: width,
                    height: height * .15,
                    decoration: const BoxDecoration(
                      color: AppColors.greenColor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi Dr.Philobater samir !',
                                style: AppTextStyle.styleMedium18.copyWith(
                                  fontSize: 20,
                                    color: AppColors.whiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 5,),
                              const Text(
                                'We hope You good services',
                                style: AppTextStyle.styleMedium18
                              ),


                            ],
                          ),
                          CircleAvatar(
                            radius: 35,
                            child: Image.asset(AppAssets.circleDoctorPhoto),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          AppStrings.ourServices,
                          style: AppTextStyle.styleMedium18,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            height: height * .2,
                            width: width,
                            child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Container(
                                    width: width * .4,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: AppColors.whiteColor),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          CategoryModel.item[index].imagePath,
                                          fit: BoxFit.scaleDown,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          CategoryModel.item[index].name,
                                          style: AppTextStyle.styleMedium18,
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        const Text(
                                          '24 Hours',
                                          style: AppTextStyle.styleRegular15,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Text(
                              AppStrings.scheduleAppointment,
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
                          height: 20,
                        ),
                        SizedBox(
                          height: height,
                          child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.vertical,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return const CustomPatientAppointmentContainer();
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

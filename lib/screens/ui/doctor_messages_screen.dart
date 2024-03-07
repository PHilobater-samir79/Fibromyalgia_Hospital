import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/assets/app_assets.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';

class DoctorMessagesScreen extends StatelessWidget {
  const DoctorMessagesScreen({super.key});
  static const String routeName = 'DoctorMessagesScreen';

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height * .12,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                      color: AppColors.whiteColor),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomArrowBack(),
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset(AppAssets.circlePatientPhoto),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Philobater Samir',
                            style: AppTextStyle.styleMedium18,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: AppColors.greenColor,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Online',
                                style: AppTextStyle.styleRegular15,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.greenColor),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.phone,
                                color: AppColors.whiteColor,
                              ))),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * .77,
                          child: Container(
                            height: height * .075,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.whiteColor),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, left: 10),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: width * .54,
                                    child: TextFormField(
                                      cursorColor: AppColors.blackTextColor,
                                      decoration: InputDecoration(
                                          hintText: 'write a message',
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.mic,
                                    color: AppColors.greyTextColor,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.file_present,
                                    color: AppColors.greyTextColor,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: width * .15,
                          child: Container(
                            height: height * .075,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.greenColor),
                            child: Center(
                                child: Icon(
                              Icons.send,
                              color: AppColors.whiteColor,
                              size: 30,
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

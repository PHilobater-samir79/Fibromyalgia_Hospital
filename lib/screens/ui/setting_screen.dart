import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_textstyle.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  static const String routeName = 'SettingScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            const CustomBackground(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20),
              child: ListView(children: [
                Column(
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
                            AppStrings.settings,
                            style: AppTextStyle.styleMedium18,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      AppStrings.accountSettings,
                      style: AppTextStyle.styleRegular15
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.red,
                        child: Icon(Icons.password_sharp,
                            color: AppColors.whiteColor),
                      ),
                      title: Text(
                        AppStrings.changePassword,
                        style: AppTextStyle.styleMedium18
                            .copyWith(color: AppColors.greyTextColor),
                      ),
                      trailing: const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.greyTextColor,
                          )),
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .85,
                        child: const Divider(
                          color: AppColors.greyTextColor,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.green,
                        child: Icon(Icons.notifications_active,
                            color: AppColors.whiteColor),
                      ),
                      title: Text(
                        AppStrings.notifications,
                        style: AppTextStyle.styleMedium18
                            .copyWith(color: AppColors.greyTextColor),
                      ),
                      trailing: const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios_new,
                              color: AppColors.greyTextColor)),
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .85,
                        child: const Divider(
                          color: AppColors.greyTextColor,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.blue,
                        child: Icon(Iconsax.data, color: AppColors.whiteColor),
                      ),
                      title: Text(
                        AppStrings.statistics,
                        style: AppTextStyle.styleMedium18
                            .copyWith(color: AppColors.greyTextColor),
                      ),
                      trailing: const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios_new,
                              color: AppColors.greyTextColor)),
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .85,
                        child: const Divider(
                          color: AppColors.greyTextColor,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.orange,
                        child: Icon(Icons.group, color: AppColors.whiteColor),
                      ),
                      title: Text(
                        AppStrings.aboutUs,
                        style: AppTextStyle.styleMedium18
                            .copyWith(color: AppColors.greyTextColor),
                      ),
                      trailing: const RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back_ios_new,
                              color: AppColors.greyTextColor)),
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .85,
                        child: const Divider(
                          color: AppColors.greyTextColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      AppStrings.moreOptions,
                      style: AppTextStyle.styleRegular15
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: Text(
                        AppStrings.textMessages,
                        style: AppTextStyle.styleMedium18
                            .copyWith(color: AppColors.greyTextColor),
                      ),
                      trailing: Switch(
                        activeColor: AppColors.greenColor,
                        onChanged: (value) {},
                        value: true,
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .85,
                        child: const Divider(
                          color: AppColors.greyTextColor,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        AppStrings.phoneCalls,
                        style: AppTextStyle.styleMedium18
                            .copyWith(color: AppColors.greyTextColor),
                      ),
                      trailing: Switch(
                        activeColor: AppColors.greenColor,
                        onChanged: (value) {},
                        value: false,
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .85,
                        child: const Divider(
                          color: AppColors.greyTextColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17.0, right: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.languages,
                            style: AppTextStyle.styleMedium18
                                .copyWith(color: AppColors.greyTextColor),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(AppStrings.english,
                                  style: AppTextStyle.styleRegular15),
                              SizedBox(
                                width: 20,
                                child: RotatedBox(
                                    quarterTurns: 2,
                                    child: Icon(
                                      Icons.arrow_back_ios_new,
                                      color: AppColors.greyTextColor,
                                      size: 17,
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .85,
                        child: const Divider(
                          color: AppColors.greyTextColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17.0, right: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.currency,
                            style: AppTextStyle.styleMedium18
                                .copyWith(color: AppColors.greyTextColor),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(AppStrings.usd,
                                  style: AppTextStyle.styleRegular15),
                              SizedBox(
                                width: 20,
                                child: RotatedBox(
                                    quarterTurns: 2,
                                    child: Icon(
                                      Icons.arrow_back_ios_new,
                                      color: AppColors.greyTextColor,
                                      size: 17,
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .85,
                        child: const Divider(
                          color: AppColors.greyTextColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17.0, right: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.linkedAccounts,
                            style: AppTextStyle.styleMedium18
                                .copyWith(color: AppColors.greyTextColor),
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(AppStrings.socialMediaAccounts,
                                  style: AppTextStyle.styleRegular15),
                              SizedBox(
                                width: 20,
                                child: RotatedBox(
                                    quarterTurns: 2,
                                    child: Icon(
                                      Icons.arrow_back_ios_new,
                                      color: AppColors.greyTextColor,
                                      size: 17,
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

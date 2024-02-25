import 'package:fibromyalgia_hospital/screens/ui/custom_all_records_container.dart';
import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_arrow_back.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../utils/styles/Text_style/app_textstyle.dart';

class AllRecordsScreen extends StatelessWidget {
  const AllRecordsScreen({super.key});
  static const String routeName = 'AllRecordsScreen' ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Stack (
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
                        AppStrings.allRecords,
                        style: AppTextStyle.styleMedium18,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.05),
                Expanded(
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding:  EdgeInsets.only(right: 20.0,left: 20,bottom: 10),
                        child:  CustomAllRecordsContainer(),
                      );
                    },),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding:  EdgeInsets.only(bottom: 20.0),
                  child: CustomElevatedButton(text: AppStrings.addRecord),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

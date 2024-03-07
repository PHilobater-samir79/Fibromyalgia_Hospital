import 'package:fibromyalgia_hospital/screens/ui/custom_chat_container.dart';
import 'package:fibromyalgia_hospital/screens/ui/patient_messages_screen.dart';
import 'package:fibromyalgia_hospital/utils/styles/Strings/app_strings.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/assets/app_assets.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:fibromyalgia_hospital/utils/widgets/custom_background.dart';
import 'package:flutter/material.dart';

class PatientChatScreen extends StatelessWidget {
  const PatientChatScreen({super.key});
  static const String routeName = 'PatientChatScreen';

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
                    padding:  EdgeInsets.only(top: 20.0,),
                    child:  Padding(
                      padding: EdgeInsets.only(left: 15.0,top: 10),
                      child: Text(
                        AppStrings.chat,
                        style: AppTextStyle.styleRegular25,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, PatientMessageScreen.routeName);
                        },
                        child: const CustomChatContainer(
                          subtitle: 'Hello dear patient',
                          title: 'Dr.Ahmed Mohsen',
                          imagePath: AppAssets.doctorPhoto,
                        ),
                      );
                    },
                  )),
                  const SizedBox(height: 100,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

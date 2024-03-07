import 'package:fibromyalgia_hospital/screens/ui/appointment_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/my_doctors_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/patient_chat_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/patient_home_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/profile_patient_screen.dart';
import 'package:fibromyalgia_hospital/screens/ui/setting_screen.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';

class GeneralPatientHomeScreen extends StatefulWidget {
  const GeneralPatientHomeScreen({super.key});
  static const String routeName = 'GeneralPatientHomeScreen';

  @override
  State<GeneralPatientHomeScreen> createState() =>
      _GeneralPatientHomeScreenState();
}

class _GeneralPatientHomeScreenState extends State<GeneralPatientHomeScreen> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          tabs[selectedIndex],
          Positioned(
            bottom: 1,
            right: 10,
            left: 10,
            child: Container(
              margin: const EdgeInsets.all(20),
              height: size.width * .15,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.15),
                    blurRadius: 30,
                    offset: const Offset(0, 10),
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.only(right: 5,left: 8),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(
                      () {
                        selectedIndex = index;
                      },
                    );
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: size.width * .03),
                      Icon(
                        listOfIcons[index],
                        size: size.width * .076,
                        color: index == selectedIndex
                            ? AppColors.greenColor
                            : AppColors.greyTextColor,
                      ),
                      RotatedBox(
                        quarterTurns: 2,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.fastLinearToSlowEaseIn,
                          margin: EdgeInsets.only(
                            bottom:
                                index == selectedIndex ? 0 : size.width * .029,
                            right: size.width * .0422,
                            left: size.width * .0422,
                          ),
                          width: size.width * .120,
                          height:
                              index == selectedIndex ? size.width * .014 : 0,
                          decoration: const BoxDecoration(
                            color: AppColors.greenColor,
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> tabs = [
    const PatientHomeScreen(),
    const PatientChatScreen(),
    const SettingScreen(),
    const ProfilePatientScreen(),
  ];

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.message_outlined,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];
}

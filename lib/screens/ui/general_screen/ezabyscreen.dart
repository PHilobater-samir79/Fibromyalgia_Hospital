import 'package:flutter/material.dart';
import '../../../utils/styles/Strings/app_strings.dart';
import '../../../utils/styles/Text_style/app_text_style.dart';
import '../../../utils/styles/assets/app_assets.dart';
import '../../../utils/styles/colors/app_colors.dart';
import '../../../utils/widgets/custom_arrow_back.dart';
import '../../../utils/widgets/custom_background.dart';

class EzabyPharmacy extends StatelessWidget{
  const EzabyPharmacy({super.key});
  static const String routeName = 'EzabyPharmacy';
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: AppColors.darkBlueColor,
        body: SafeArea
        (child:Stack(
        children: [
        const CustomBackground(),
    Padding(
    padding:const EdgeInsets.only(right: 20.0, left: 20),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const Padding(
    padding: EdgeInsets.only(top: 20.0),
    child:Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    CustomArrowBack(),
    SizedBox(
    width: 20,
    ),
    Text(
    AppStrings.backButtom,
    style: AppTextStyle.styleRegular15,
    textAlign: TextAlign.center,
    )
    ],
    )
    ),
    const SizedBox(
    height: 20,
    ),
    Expanded(
    child: ListView(
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Column(
    children: [
    Container(
    width: 50,
    height: 25,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    ),
    child:
    Image.asset(AppAssets.ezabyLogo),
    ),
    const SizedBox(
    width: 10,
    ),
    const SizedBox(
    width: 600,
    child: Padding(
    padding:  EdgeInsets.only(top: 3.0),
    child: Column(
    mainAxisAlignment:
    MainAxisAlignment.start,
    crossAxisAlignment:
    CrossAxisAlignment.start,
    children: [
    Column(
    children: [
    Text(
    "25% Off",
    style: TextStyle(color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
    wordSpacing: 2,)

    ),

    ],
    ),
    SizedBox(),
    Text(
    "Get 25% off of purchases.\n Scan the Qr code from your nearest branch",
    style: TextStyle(color: Colors.white70,
    fontSize: 18,
      fontWeight: FontWeight.normal,
      wordSpacing: 1,)
    ),

    ],
    ),
    ),
    )
    ],
    ),




    )
    ],
    ))


    ],
    ),
    ),
          SizedBox(height: 20,),
          const Padding(
            padding:   EdgeInsets.only(right: 5, left: 5),
            child: Column(
              children: [
                SizedBox(
                  width:50,
                  height: 80,
                ),
                Icon(Icons.qr_code_2_rounded)

              ],
            ),

          )


        ],
        )),

    );
  }}
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/assets/app_assets.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomPopularDoctorContainer extends StatelessWidget {
  const CustomPopularDoctorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: width * .4,
        height: height * .28,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.whiteColor),
        child: Column(
          children: [
            Image.asset(
              AppAssets.largeDoctorPhoto,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Dr. Pediatrician',
              style: AppTextStyle.styleMedium18,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Specialist Cardiologist',
              style: AppTextStyle.styleRegular15.copyWith(fontSize: 12),
            ),
            const SizedBox(
              height: 5,
            ),
            RatingBar.builder(
              itemSize: 20,
              initialRating: 3,
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
            ),
          ],
        ),
      ),
    );
  }
}

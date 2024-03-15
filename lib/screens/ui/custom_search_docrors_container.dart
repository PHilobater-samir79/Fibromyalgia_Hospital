import 'package:fibromyalgia_hospital/screens/ui/patient/patient_search_doctor/widgets/doctor_details/doctor_details_screen.dart';
import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/assets/app_assets.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class CustomSearchDoctorsContainer extends StatelessWidget {
  const CustomSearchDoctorsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, DoctorDetailsScreen.routeName);
        },
        child: Container(
          width: width,
          height: height * .15,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: width * .23,
                  height: height * .12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Image.asset(AppAssets.doctorPhoto),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: width * .551,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Dr. Pediatrician',
                              style: AppTextStyle.styleMedium18,
                            ),
                            const Expanded(child: SizedBox()),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Iconsax.heart,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                        const Text(
                          'Specialist Cardiologist',
                          style: AppTextStyle.styleRegular15,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: 20,
                              initialRating: 1,
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            const Expanded(child: SizedBox()),
                            Text(
                              '5',
                              style: AppTextStyle.styleRegular15
                                  .copyWith(color: AppColors.blackTextColor),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              '(208 view)',
                              style: AppTextStyle.styleRegular15,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

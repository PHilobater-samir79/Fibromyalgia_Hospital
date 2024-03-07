import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/assets/app_assets.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomPharmaContainer extends StatelessWidget {
  const CustomPharmaContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: width,
        height: height * .16,
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
                child: Image.asset(AppAssets.pharmaPhoto),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: width * .551,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'El-Ezaby Pharmacy',
                        style: AppTextStyle.styleMedium18,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        'Central Spine, Area 101 3rd District, First Neighbourhood,Giza',
                        maxLines: 2,
                        style: AppTextStyle.styleRegular15,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        '02 35317347',
                        style: AppTextStyle.styleRegular15,
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 20,
                            initialRating: 3,
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) =>const  Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                            },
                          ),
                          const Expanded(child: SizedBox()),
                          Text(
                            '5',
                            style: AppTextStyle.styleRegular15.copyWith(color: AppColors.blackTextColor),
                          ),
                          const SizedBox(width: 5,),
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
    );
  }
}

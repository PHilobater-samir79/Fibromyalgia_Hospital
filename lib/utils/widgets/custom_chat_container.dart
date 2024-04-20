import 'package:fibromyalgia_hospital/utils/styles/Text_style/app_text_style.dart';
import 'package:fibromyalgia_hospital/utils/styles/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CustomChatContainer extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const CustomChatContainer(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imagePath
  });

  @override
  State<CustomChatContainer> createState() => _CustomChatContainerState();
}

class _CustomChatContainerState extends State<CustomChatContainer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Slidable(
        endActionPane: ActionPane(
          extentRatio: .3,
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {},
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(12),
                  topRight: Radius.circular(12)),
              backgroundColor: AppColors.greenColor,
              foregroundColor: AppColors.whiteColor,
              icon: Icons.phone,
              label: 'Call',
              autoClose: true,
            ),
          ],
        ),
        child: Container(
          width: width,
          height: height * .1,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
          child: Center(
            child: ListTile(
              leading: Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(widget.imagePath),
                  const Positioned(
                    right: -3,
                    bottom: 1,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: AppColors.greenColor,
                    ),
                  )
                ],
              ),
              title: Text(
                widget.title,
                style: AppTextStyle.styleMedium18,
              ),
              subtitle: Text(
                widget.subtitle,
                style: AppTextStyle.styleRegular15,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Column(
                children: [
                  const Text(
                    '9:22 AM',
                    style: AppTextStyle.styleRegular15,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Text(
                      '2',
                      style: AppTextStyle.styleRegular15
                          .copyWith(color: AppColors.blackTextColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

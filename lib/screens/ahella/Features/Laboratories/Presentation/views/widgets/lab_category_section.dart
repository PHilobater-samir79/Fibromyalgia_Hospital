import 'package:flutter/material.dart';
import 'package:medical_app/Core/theming/my_colors.dart';

class LabCategorySection extends StatelessWidget {
  const LabCategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: MyColors.green,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: const Text(
        'All',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

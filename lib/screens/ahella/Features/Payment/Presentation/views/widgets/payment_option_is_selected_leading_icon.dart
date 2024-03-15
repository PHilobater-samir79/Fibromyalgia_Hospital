import 'package:flutter/material.dart';
import 'package:medical_app/Core/theming/my_colors.dart';

class PaymentOptionIsSelectedLeadingIcon extends StatelessWidget {
  const PaymentOptionIsSelectedLeadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
        color: MyColors.green,
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.check,
        color: Colors.white,
        size: 16,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medical_app/Core/widgets/custom_elevated_button.dart';
import 'package:medical_app/Features/Payment/Presentation/views/payment_options_view.dart';

class CartFooterSection extends StatelessWidget {
  const CartFooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: CustomElevatedButton(
        text: 'Add a record',
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const PaymentOptionsView()),
          );
        },
      ),
    );
  }
}

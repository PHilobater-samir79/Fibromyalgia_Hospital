import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/Core/widgets/custom_elevated_button.dart';
import 'package:medical_app/Features/Payment/Presentation/views/credit_details_view.dart';
import 'package:medical_app/Features/Payment/Presentation/views/widgets/select_payment_option_widget.dart';

class PaymentOptionsViewBody extends StatefulWidget {
  const PaymentOptionsViewBody({super.key});

  @override
  State<PaymentOptionsViewBody> createState() => _PaymentOptionsViewBodyState();
}

class _PaymentOptionsViewBodyState extends State<PaymentOptionsViewBody> {
  bool isPayPalSelected = false;
  bool isVisaSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Payment Options',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 34),
          SelectPaymentOptionWidget(
            title: 'PayPal',
            isSelected: isPayPalSelected,
            trailing: SvgPicture.asset('assets/images/paypal.svg'),
            onTap: () {
              setState(() {
                isPayPalSelected = !isPayPalSelected;
                isVisaSelected = false;
              });
            },
          ),
          const SizedBox(height: 14),
          SelectPaymentOptionWidget(
            title: 'Visa',
            isSelected: isVisaSelected,
            trailing: Row(
              children: [
                SvgPicture.asset('assets/images/visa.svg'),
                const SizedBox(width: 8),
                SvgPicture.asset('assets/images/master-card.svg'),
              ],
            ),
            onTap: () {
              setState(() {
                isVisaSelected = !isVisaSelected;
                isPayPalSelected = false;
              });
            },
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CreditDetailsView(),
                      ),
                    );
                  },
                  text: 'Pay',
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

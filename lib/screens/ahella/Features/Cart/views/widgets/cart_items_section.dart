import 'package:flutter/material.dart';
import 'package:medical_app/Features/Cart/views/widgets/cart_item.dart';

class CartItemsSection extends StatelessWidget {
  const CartItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CartItem(),
        SizedBox(height: 10),
        CartItem(),
      ],
    );
  }
}

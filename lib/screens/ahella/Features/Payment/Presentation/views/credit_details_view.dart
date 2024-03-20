import 'package:flutter/material.dart';
import 'package:fibromyalgia_hospital/screens/ahella/Core/widgets/scaffold_background.dart';

import 'widgets/credit_details_view_body.dart';

class CreditDetailsView extends StatelessWidget {
  const CreditDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScaffoldBackground(
        child: SizedBox(
          height: double.infinity,
          child: SafeArea(
            child: CreditDetailsViewBody(),
          ),
        ),
      ),
    );
  }
}

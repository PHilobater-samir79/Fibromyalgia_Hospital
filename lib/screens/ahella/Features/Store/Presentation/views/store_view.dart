import 'package:flutter/material.dart';
import 'package:fibromyalgia_hospital/screens/ahella/Core/widgets/scaffold_background.dart';

import 'widgets/store_view_body.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScaffoldBackground(
        child: SafeArea(
          child: StoreViewBody(),
        ),
      ),
    );
  }
}

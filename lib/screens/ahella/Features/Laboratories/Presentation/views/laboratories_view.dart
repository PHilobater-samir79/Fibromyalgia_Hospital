import 'package:flutter/material.dart';
import 'package:medical_app/Core/widgets/scaffold_background.dart';

import 'widgets/laboratories_view_body.dart';

class LaboratoriesView extends StatelessWidget {
  const LaboratoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScaffoldBackground(
        child: SafeArea(
          child: LaboratoriesViewBody(),
        ),
      ),
    );
  }
}

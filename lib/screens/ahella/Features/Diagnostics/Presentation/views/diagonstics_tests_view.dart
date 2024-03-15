import 'package:flutter/material.dart';
import 'package:medical_app/Core/widgets/scaffold_background.dart';

import 'widgets/diagnostics_test_view_body.dart';

class DiagnosticsTestView extends StatelessWidget {
  const DiagnosticsTestView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScaffoldBackground(
        child: SafeArea(
          child: DiagnosticsTestViewBody(),
        ),
      ),
    );
  }
}

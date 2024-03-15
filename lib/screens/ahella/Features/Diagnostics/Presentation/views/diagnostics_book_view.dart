import 'package:flutter/material.dart';
import 'package:medical_app/Core/widgets/scaffold_background.dart';

import 'widgets/diagnostics_book_view_body.dart';

class DiagnosticsBookView extends StatelessWidget {
  const DiagnosticsBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScaffoldBackground(
        child: SafeArea(
          child: DiagnosticsBookViewBody(),
        ),
      ),
    );
  }
}

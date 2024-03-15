import 'package:flutter/material.dart';
import 'package:medical_app/Features/Diagnostics/Data/Models/diagnostics_model.dart';

import 'diagnostics_item.dart';

class DiagnosticsListView extends StatelessWidget {
  const DiagnosticsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemCount: DiagnosticsModel.diagnostics.length,
      itemBuilder: (context, index) {
        return DiagnosticsItem(
          diagnosticsModel: DiagnosticsModel.diagnostics[index],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fibromyalgia_hospital/screens/ahella/Features/Diagnostics/Data/Models/diagnostics_model.dart';

class DiagnosticsItemHeader extends StatelessWidget {
  const DiagnosticsItemHeader({super.key, required this.diagnosticsModel});

  final DiagnosticsModel diagnosticsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            diagnosticsModel.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            diagnosticsModel.subTitle,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Color(0xff677294),
            ),
          ),
        ),
        const SizedBox(height: 18),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: const Color(0xff0EBE7F)),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 14),
          child: Text(
            '${diagnosticsModel.tests} tests included',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff0EBE7F),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medical_app/Core/widgets/custom_text_form_field.dart';

class LabSearchSection extends StatelessWidget {
  const LabSearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomTextFormField(
      suffixIcon: Icon(Icons.close),
      prefixIcon: Icon(Icons.search_rounded),
      hintText: 'Search',
      keyboardType: TextInputType.text,
    );
  }
}

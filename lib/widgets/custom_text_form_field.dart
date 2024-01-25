import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLine = 1,
  });
  final String hintText;
  final int maxLine;
  // final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // onChanged: onChanged,
      maxLines: maxLine,
      decoration: InputDecoration(
        border: CreateBorder(),
        focusedBorder: CreateBorder(),
        enabledBorder: CreateBorder(),
        hintText: hintText,
      ),
    );
  }

  OutlineInputBorder CreateBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.white));
  }
}

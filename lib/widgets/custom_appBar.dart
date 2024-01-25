import 'package:flutter/material.dart';
import 'package:note_app_with_hive/widgets/custom_iconButton.dart';
import 'package:note_app_with_hive/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.appBarName,
      required this.icon,
      required this.onpressed});
  final String appBarName;
  final IconData icon;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: appBarName,
            fontSize: 32,
          ),
          CustomIconButton(
            icon: icon,
            onpressed: onpressed,
          ),
        ],
      ),
    );
  }
}

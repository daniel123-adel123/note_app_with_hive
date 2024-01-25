import 'package:flutter/material.dart';
import 'package:note_app_with_hive/constants.dart';
import 'package:note_app_with_hive/widgets/custom_text.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.buttonName,
  });
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: KPrimaryColor,
      minWidth: MediaQuery.of(context).size.width,
      height: 45,
      onPressed: () {},
      child: CustomText(text: buttonName, color: Colors.black, fontSize: 20),
    );
  }
}

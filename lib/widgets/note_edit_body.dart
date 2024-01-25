import 'package:flutter/material.dart';
import 'package:note_app_with_hive/widgets/custom_appBar.dart';
import 'package:note_app_with_hive/widgets/custom_material_button.dart';
import 'package:note_app_with_hive/widgets/custom_text_form_field.dart';

class NoteEditBody extends StatelessWidget {
  const NoteEditBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              appBarName: 'Edit Note',
              icon: Icons.done,
              onpressed: () {},
            ),
            const CustomTextFormField(
              hintText: 'Title',
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextFormField(
              hintText: 'Content',
              maxLine: 5,
            ),
          ],
        ),
      ),
    );
  }
}

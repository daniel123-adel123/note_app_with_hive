import 'package:flutter/material.dart';
import 'package:note_app_with_hive/widgets/custom_material_button.dart';
import 'package:note_app_with_hive/widgets/custom_text_form_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
        child: Column(children: [
          CustomTextFormField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            hintText: 'Content',
            maxLine: 5,
          ),
          SizedBox(
            height: 30,
          ),
          CustomMaterialButton(
            buttonName: 'Add',
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app_with_hive/constants.dart';
import 'package:note_app_with_hive/views/edit_note_view.dart';
import 'package:note_app_with_hive/widgets/custom_iconButton.dart';
import 'package:note_app_with_hive/widgets/custom_text.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onDoubleTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return NoteEditView();
            },
          ));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
              color: KPrimaryColor, borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                title: const CustomText(
                  text: 'Flutter Tips',
                  fontSize: 26,
                  color: Colors.black,
                ),
                trailing: CustomIconButton(
                  color: Colors.black,
                  icon: Icons.delete,
                  onpressed: () {},
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: CustomText(
                    text: 'Build your carrer with\ntharwat samy',
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ),
              CustomText(
                text: 'may21,2022',
                fontSize: 16,
                color: Colors.black.withOpacity(0.4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app_with_hive/constants.dart';
import 'package:note_app_with_hive/widgets/add_note_bottom_sheet.dart';
import 'package:note_app_with_hive/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: KPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 28,
        ),
      ),
    );
  }
}

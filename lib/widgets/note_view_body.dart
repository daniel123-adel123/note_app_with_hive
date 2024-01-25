import 'package:flutter/material.dart';
import 'package:note_app_with_hive/widgets/custom_appBar.dart';
import 'package:note_app_with_hive/widgets/note_list_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              appBarName: 'Notes',
              icon: Icons.search,
              onpressed: () {},
            ),
            const Expanded(
              child: NoteListItem(),
            )
          ],
        ),
      ),
    );
  }
}

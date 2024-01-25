import 'package:flutter/material.dart';
import 'package:note_app_with_hive/widgets/note_item.dart';

class NoteListItem extends StatelessWidget {
  const NoteListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const NoteItem();
      },
    );
  }
}

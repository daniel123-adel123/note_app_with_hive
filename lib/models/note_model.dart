import 'dart:ui';

class NoteModel {
  final String title;
  final String subTitle;
  final String date;
  final Color color;
  NoteModel(
    this.color, {
    required this.title,
    required this.subTitle,
    required this.date,
  });
}

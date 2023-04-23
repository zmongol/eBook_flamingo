import 'package:book_app/models/books/book_chapter_model.dart';
import 'package:book_app/models/books/book_model.dart';
import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

class ReadingScreen extends StatelessWidget {
  final int chapterIndex;
  final Book book;

  const ReadingScreen({
    Key? key,
    required this.book,
    required this.chapterIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BookChapter chapter = book.chapters[chapterIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: SingleChildScrollView(
        child: MongolText(chapter.content),
      ),
    );
  }
}

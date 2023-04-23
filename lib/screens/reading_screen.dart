import 'package:book_app/models/books/book_chapter_model.dart';
import 'package:book_app/models/books/book_model.dart';
import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

import '../Component/MongolFonts.dart';
import 'Donate.dart';

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
        title: Text(book.title,
            style: TextStyle(
                fontFamily: MongolFonts.z52ordostig, color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 164, 166, 168),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite), //Go to Donation page
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Donation()), //Go to Donation page
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: MongolText(chapter.content,
            style: TextStyle(
                fontFamily: MongolFonts.z52ordostig,
                color: Colors.black,
                fontSize: 18)),
      ),
    );
  }
}

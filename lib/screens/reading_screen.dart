import 'package:book_app/Component/MongolFonts.dart';
import 'package:book_app/models/books/book_chapter_model.dart';
import 'package:book_app/models/books/book_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mongol/mongol.dart';

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
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 16, 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Container(
            height: context.height,
            // width: context.width,
            child: MongolText(
              chapter.content,
              // textAlign: MongolTextAlign.l,
              style: TextStyle(
                fontFamily: MongolFonts.z52ordostig,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

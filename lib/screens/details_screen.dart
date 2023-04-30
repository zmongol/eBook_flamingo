import 'package:book_app/Component/MongolFonts.dart';
import 'package:book_app/models/books/book_model.dart';
import 'package:book_app/screens/reading_screen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Component/find_ctrls.dart';
import '../widgets/book_info.dart';
import '../widgets/chapter_card.dart';
import '../widgets/reading_card_list.dart';
import 'Donate.dart';

final _bookCtrl = FindCtrl.book;

class DetailsScreen extends StatelessWidget {
  final Book book;

  DetailsScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(
                      top: size.height * .12,
                      left: size.width * .1,
                      right: size.width * .02),
                  // height: size.height * .48,
                  height: size.height * 0.48,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: BookInfo(
                    size: size,
                    book: book,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: size.height * .48 - 20, right: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.only(right: 60),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: book.chapters
                          .mapIndexed(
                            (e, i) => ChapterCard(
                              chapter: e,
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ReadingScreen(
                                      book: book,
                                      chapterIndex: i,
                                    ),
                                  ), //Go to Donation page
                                );
                              },
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headlineSmall,
                      children: [
                        TextSpan(
                          text: "ᢘᡪᡧ ᢙᡳ ᢘᡪᡱᡱᡪᢑᡪᡪᡪᢙᡪᡪᡪᡳ ᡴᡭᢔᡭᡭᡧ ᡯᡭᢍ ᡭᡭᡧ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: MongolFonts.z52agolatig),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  //detailed book list
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(right: 30),
                    child: Column(
                      children: _bookCtrl.randombooksList
                          .map((e) => ReadingListCard(
                                book: e,
                                pressDetails: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return DetailsScreen(
                                          book: e,
                                        );
                                      },
                                    ),
                                  );
                                },
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

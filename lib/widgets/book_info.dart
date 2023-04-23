import 'package:book_app/models/books/book_model.dart';
import 'package:book_app/screens/reading_screen.dart';
import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

import '../Component/MongolFonts.dart';
import '../consttants.dart';
import 'book_rating.dart';

class BookInfo extends StatelessWidget {
  final Book book;

  const BookInfo({
    Key? key,
    this.size,
    required this.book,
  }) : super(key: key);

  final Size? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: Row(
        children: [
          MongolText(
            book.title,
            maxLines: 2,
            style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontFamily: MongolFonts.z52dardastig),
          ),
          MongolText(
            book.content,
            maxLines: 7,
            style: TextStyle(
              fontSize: 10,
              fontFamily: MongolFonts.z52ordostig,
              color: kLightBlackColor,
            ),
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  size: 20,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              BookRating(score: 4.9),
              SizedBox(height: 10),
              // TextBox decoration
              GestureDetector(
                onTap: () {
                  if (book.chapters.isEmpty) return;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReadingScreen(
                        book: book,
                        chapterIndex: 0,
                      ),
                    ), //Go to Donation page
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Color.fromARGB(255, 143, 146, 148),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 80,
                    margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: RotatedBox(
                      quarterTurns: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: MongolText('ᡥᡭᡪᢊᢔᡬᡫᡨ',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: MongolFonts.z52ordostig)),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
              flex: 1,
              child: Container(
                // width: 200,
                color: Colors.transparent,
                child: Image.asset(
                  book.image,
                  height: double.infinity,
                  alignment: Alignment.topRight,
                  fit: BoxFit.fitWidth,
                ),
              )),
        ],
      ),
    );

    // return Container(
    //   child: Flex(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     direction: Axis.horizontal,
    //     children: <Widget>[
    //       Expanded(
    //           flex: 1,
    //           child: Column(
    //             children: <Widget>[
    //               Container(
    //                 alignment: Alignment.centerLeft,
    //                 child: Text(
    //                   "Crushing &",
    //                   style: Theme.of(context)
    //                       .textTheme
    //                       .headline4
    //                       .copyWith(fontSize: 28),
    //                 ),
    //               ),
    //               Row(
    //                 children: <Widget>[
    //                   Column(
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: <Widget>[
    //                       Container(
    //                         width: this.size.width * .3,
    //                         padding:
    //                             EdgeInsets.only(top: this.size.height * .02),
    //                         child: Container(
    //                           height: 150,
    //                           child: MongolText(
    //                             "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
    //                             maxLines: 5,
    //                             style: TextStyle(
    //                               fontSize: 10,
    //                               color: kLightBlackColor,
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                       Container(
    //                         margin:
    //                             EdgeInsets.only(top: this.size.height * .015),
    //                         padding: EdgeInsets.only(left: 10, right: 10),
    //                         decoration: BoxDecoration(
    //                           color: Colors.white,
    //                           borderRadius: BorderRadius.circular(30),
    //                         ),
    //                         child: ElevatedButton(
    //                           onPressed: () {},
    //                           child: MongolText(
    //                             "ᡥᡭᡪᢊᢔᡬᡪᡪᡳ",
    //                             style: TextStyle(fontWeight: FontWeight.bold, fontFamily: MongolFonts.z52ordostig),
    //                           ),
    //                         ),
    //                       )
    //                     ],
    //                   ),
    //                   Column(
    //                     children: <Widget>[
    //                       IconButton(
    //                         icon: Icon(
    //                           Icons.favorite_border,
    //                           size: 20,
    //                           color: Colors.grey,
    //                         ),
    //                         onPressed: () {},
    //                       ),
    //                       BookRating(score: 4.9),
    //                     ],
    //                   )
    //                 ],
    //               )
    //             ],
    //           )),
    //       Expanded(
    //           flex: 1,
    //           child: Container(
    //             color: Colors.transparent,
    //             child: Image.asset(
    //               "assets/images/book-1.png",
    //               height: double.infinity,
    //               alignment: Alignment.topRight,
    //               fit: BoxFit.fitWidth,
    //             ),
    //           )),
    //     ],
    //   ),
    // );
  }
}

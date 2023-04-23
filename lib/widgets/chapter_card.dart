import 'package:book_app/screens/reading_screen.dart';
import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

import '../Component/MongolFonts.dart';
import '../consttants.dart';

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final Function press;
  const ChapterCard({
    Key key,
    this.name,
    this.tag,
    this.chapterNumber,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
                onTap: () {
            ReadingScreen();
          },
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 164, 166, 168)),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              height: 280,
              margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: RotatedBox(
                quarterTurns: 0,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: MongolText('ᡴᡭᡬᢑᡭᡬᡨ $chapterNumber : \n$name',
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: MongolFonts.z52ordostig)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

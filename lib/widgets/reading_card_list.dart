import 'package:book_app/Component/MongolFonts.dart';
import 'package:book_app/consttants.dart';
import 'package:book_app/widgets/book_rating.dart';
import 'package:book_app/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final Function pressDetails;
  final Function pressRead;

  const ReadingListCard({
    Key key,
    this.image,
    this.title,
    this.auth,
    this.rating,
    this.pressDetails,
    this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 33,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        image,
                        width: 100,
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                            ),
                            onPressed: () {},
                          ),
                          BookRating(score: rating),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 130,
                    child: MongolText(
                      "$title\n",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: MongolFonts.z52dardastig,
                          fontSize: 22,),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: pressDetails,
                    child: Container(
                      width: 101,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      child: Text("ᠲᠤᠪᠴᠢ"),
                    ),
                  ),
                  Expanded(
                    child: TwoSideRoundedButton(
                      text: "ᠤᠩᠰᠢᠬᠤ",
                      press: pressRead,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

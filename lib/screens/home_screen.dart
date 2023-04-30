import 'package:book_app/screens/details_screen.dart';
import 'package:book_app/widgets/reading_card_list.dart';
import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

import '../Component/MongolFonts.dart';
import '../Component/find_ctrls.dart';
import 'Donate.dart';

final _bookCtrl = FindCtrl.book;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
          PopupMenuButton<String>(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(
                  "ᡥᡭᡬᢔᡭᡬᡨ ᡭᡧ ᢜᡪᢊᡪᡨ ᡳᡪᢉᡨ",
                  style: TextStyle(fontFamily: MongolFonts.z52ordostig),
                ),
                value: "FontSize",
              ),
              PopupMenuItem(
                child: Text(
                  "ᢘᡬᡬᡨ ᢔᡭᢑᡬᡪᡪᡳ",
                  style: TextStyle(fontFamily: MongolFonts.z52ordostig),
                ),
                value: "FontFamily",
              ),
            ],
            onSelected: (val) {
              if (val == "FontSize") {
                _bookCtrl.changeFontScale();
                print(_bookCtrl.fontScale.value);
              }
              if (val == "FontFamily") {
                _bookCtrl.changeFontFamily();
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * .1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        // style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(text: "What are you \nreading "),
                          TextSpan(
                              text: "today?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(right: 30),
                    child: Row(
                      children: _bookCtrl.booksList
                          .map((e) => ReadingListCard(
                                book: e,
                                pressDetails: () {
                                  _bookCtrl.randombooksList.shuffle();
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 270,
                          child: Center(
                            child: MongolText(
                              "ᢊᡪᢞᡳᡪᡨ ᢚᡫ ᡸᡪᡬᡬᢝᡨ ᡳᡪᡧ ᡥᡭᢑᡭᢉᡨ ᡥᡭᡬᢊᡪᡫ ᢜᡪᡴᡭᢉᡨ ᡴᡭᢐ ᡯᡭᢍ ᡥᡭᡪᢊᢔᡫ ᡒ ᢘᡭᢞᡪᢑᡪᢛᡳ ᡴᡭᢑᡪᡪᡳ ᡥᡭᡬᡫ ᡥᡭᢑᡪᡧ ᢋᡭᡬᢎᡭᡧ ᡛ ᢘᡪᡪᢙᡧ ᡜ ᡴᡭᡫ ᠃ \n\nᢊᡪᢞᡳᡪᡨ ᢚᡫ ᢌᡭᡬᢞᡭᢊᡪᢙᡭᢐ ᡥᡭᡬᢊᡪᡫ ᡴᡭᢐ ᡯᡭᢍ ᡥᡭᡪᢊᢔᡫ ᡒ ᡥᡬᢞᢎᡪᢋᡭᡧ ᢋᡭᡬᢔᡪᢐ ᡬᡬᡪᢝ ᡬᡬᢞᡭᢊᡪᡨ ᢚᡬᡱᡫ ᡸᡪᢑᢊᡬᢛᡳ ᢚᡪᢑᢊᡬᡱᡱᡪᡭᡧ ᢏᡧ ᡥᢊᡬᢑᡪᡰᡨ ᠃ \n\nᢊᡪᢞᡳᡪᡨ ᢜᡪᢙᡪᡱᡱᡳ ᡴᡭᢐ ᡯᡭᢍ ᡥᡭᡪᢊᢔᡫ ᡒ ᡯᡬᢊᡪᡨ ᢏᡧ ᡥᢙᡭᢝ ᢚᡫ ᡸᡪᢎᡭᢇ ᡭᡧ ᡳᡪᢜᡪᡧ ᢋᡭᡬᢎᡭᡧ ᡴᡭᢑᡭᡪᡪᢔᡪᡧ ᡬᡬᡪᡧ ᢌᡪᢙᡪᡰᡨ ᠃ \n       ᡢ ᢏ ᠂ ᡥᡭᡬᢑᢛᡪᡬᡬᢙᡪᢋᡭᢓ ",
                              style: TextStyle(
                                fontFamily: MongolFonts.z52enkiragotig,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 500,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: MongolText(
                              "          ᡥᢊᡪᡨ ᡳᡬᢚᡬᡬᡨ ᡸᡪᡪᢊᡱᡱᡪᡪᡪᢚᡫ᠄\n          ᡕ ᡥᢊᡪᡨ ᡳᡬᢚᡬᡬᡨ ᡭᡧ ᢘᡪᢞᡪᡱᡱᡪᢑᡪᢐ ᡬᡬᡪᢝ ᡬᡬᡪᡪᢔᡪᡱᡱᡪᡳᡪᡨᡖ\n1᠂ ᡴᡭᢑᡭᡭᡧ: ᢔᡬᢑᡫ ᡬᡬᡧ ᢈᡭᡭᢐ ᢙᡳ ᡯᡭᢙᡭᢇ ᢘᡪᡫ᠂ ᡴᡭᡬᢊᡪᡨ ᡬᡬᡧ ᡸᡭᢞᡭᡪᡪᡪᡬᡬᢙᡪᡧ᠃ \n2᠂ ᡥᡭᢞᡪᡪᢙᡭᡱᡱᡭᢓ᠄   ᢔᡬᢑᡫ ᡬᡬᡧ ᢈᡭᡭᢐ ᡥᡪᡬᡬᢎᡪᢇ ᡭᡧ ᢔᡭᡬᡱᡬᡭᡧ ᡳᡪᢞᡪᡱᡱᡭᡧ ᡸᡭᢔᡬᡱᡱᡭᡧ ᡳ ᡥᡪᢚᡬᢙᡳ ᡥᡪᡱᡱᡭᢑᡧ ᢔᡭᢎᡭᡧ ᡳ ᡥᡭᡬᢞᢊᡪᡪᡱᡱᡭᡭᢐ ᢈᡪᢚᡪᢉᡨ ᡳᡪᢝ ᡯᡭᢙᡭᢇ ᢘᡪᡫ ᠂ ᢌᡪᢐ ᡥᡪᢛᡳ ᡥᡪᡪᡪᡭᡫ ᡬᡬᡧ ᢘᡭᢔᡪᡪᡪᡫ ᢌᡪᢞᢊᡪᢛᡬᢐ ᢔᡭᢞᡭᡪᡪᢔᡪᡧ ᠂ ᢘᡭᢓ ᢌᡪᢞᢊᡪᢛᡬᢐ ᡬᡬᡪᢝ ᡬᡬᡪᡧ ᡥᡪᢛᡬᢑᢑᡪᢛᡳ ᡳᡪᡬᡬᡪᡪᡳ ᡬᡬᡧ ᢘᡪᡱᡱᡪᡳ ᡳᡪᡬᡬᡱᡱᡭᢑᢉᡨ ᡬᡬᡧ ᡬᡬᡪᡧ ᡥᢙᡦ ᡭᡧ ᢜᡪᡴᡭᢙᡪᢐ ᡭᡧ ᡥᡪᢛᡬᢐ ( ᡯᡬᢞᡳᡪᡨ ) ᡫ ᡸᡪᡳᢔᡭᢞᡱᡱᡪᡧ ᢊᡬᢛᡳ ᡳᡪᡬᡬᡰᡨ ᠃\n3᠂ ᡯᡭᢎᡭᢚᡬᡧ᠄ ᢊᡪᡬᡬᢎᡭᢞᡫ ᡸᡭᢑᡴᡭᢉᡨ ᡬᡬᡧ ᡥᢞᢊᡬᢑᡪᢊᢚᡫ᠂ IT ᢌᡪᢞᢊᡪᢛᡬᢑᢙᡪᡧ᠃ \n4᠂ ᢔᡭᢙᡭᢑᢙᡳ᠄ ᡸᡪᢞᡬᢜᡪᢙᡳ ᢘᡭᢎᢙᡪᢙᡳ ᡬᡬᡧ ᢔᡭᢙᡭᡧ᠃ \n5᠂ ᡥᡪᢞᡬᡱᡱᡭᡪᢊᡪᢞᡪᢐ: ᡬᡭᡳ ᡥᡭᢙᡧ ᡬᡬᡧ ᢚᡬᡱᡱᡭᢑᡱᡱᡪᡧ ᡳ ᡥᡪᢞᡳ ᡸᡭᢞᢚᡬᡧ ᡳ ᡥᡭᡭᡱᡱᡪᢐ ᠂ ᢈᡭᢚᡬᡧ ᢘᡪᡴᡭᡧ ᡬᡬᢐ ᢘᡪᢊᡪᢙᡳ ᢘᡭᢎᢙᡪᢙᡳ ‍ᢘᡳ ᢊᡪᢑᡧ ᡳᡬᢚᡬᡬᡨ ᡭᡧ ᢊᡬᢚᡬᢜᡪᢐ ᡬᡬᡱᡱᡪᡪᡪᢔᡪᡧ ᡬᡬᡪᢊᢊᡬᡱᡫ ᢘᡪᢊᡪᢙᡳ ᢘᡪᢓ ‍ᡭᡧ ᢘᡭᢔᡬᢜᡪᢐ ᢘᡪᡫ ᡳᡪᡪᡪᢔᡫ ᠃\n6᠂ ᢌᡭᡬᡪᢊᢊᡪᢛᡬᢞᡱᡱᡪᢐ ᠂ ᡴᡭᡱᡱᡭᢙᡳ ᡸᡭᢙᡧ ᡬᡬᡧ ᢘᡪᢞᡪᡪᡪᡧ ᢌᡭᡭᢎᡬᡪᡪᡪᡱᡱᡪᡧ ᡯᡭᢙᡭᢇ ᢘᡪᡫ ᠂ ᡸᡪᢞᡬᢜᡪᢙᡳ ᢘᡭᢎᢙᡪᢙᡳ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᡥᢚᡧ ᢘᡪᢋᡭᢔᡭᢊᢔᡪᡧ᠃\n7᠂ ᢔᡬᢑᡭᡱᡱᡭᡧ᠄ ᡯᡪᡬᢎᡪᡧ ᡸᡭᢔᡬᡱᡱᡭᡧ ᡳ ᡸᡭᡪᢊᡪᡪᡭᢞᢙᡪᢐᡨ ᢔᡭᢎᡳ ᡬᡬᡧ ᡥᡭᡭᡱᡱᡪᢐ ᠂ ᢋᡭᡬᢑᡭᡧ ᡴᡭᡬᡬᢝ ᡭᡧ ᡸᡪᡬᡬᢑᡪᢝ ᢘᡳ ᡴᡭᡫ ᠃\n8᠂ ᡥᢞᢙᡪᡱᡬᢚᡪᡪᢊᢊᡪᢐ ᠄ \n9᠂ ᡥᡭᢙᡭᡪᢊᢊᡪᢞᡪᢐ᠄ ᢔᡭᡬᡱᡬᡭᡧ ᡳᡪᢞᡪᡱᡱᡭᡧ ᡸᡭᢔᡬᡱᡱᡭᡧ ᡳ ᡬᡬᢞᡭᢊᡪᡨ ᡳᡪᢑᡱᡱᡪᢔᡭᡧ ᡳ ᡥᡭᡭᡱᡱᡪᢐ ᠃ 2010 ᡥᡭᡧ ᢙᡳ ᢔᡭᡬᡱᡬᡭᡧ ᡳᡪᢞᡪᡱᡱᡭᡧ ᡸᡭᢔᡬᡱᡱᡭᡧ ᡳ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡥᡭᡬᡪᢙᡭᢔᡭᢙᡪᡧ ᡳ ᢘᡭᢎᢙᡪᢙᡳ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᢙᡳ ᡥᡪᡪᢊᢇᡨ ᢘᡭᢎᢙᡪᢙᡳ ᡬᡬᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᢊᡪᢑᡪᡧ ᡳ ᡳᡪᡪᡪᢔᡫ ᡳᡪᢝ ᡥᡪᡪᢊᢇᡨ ᡥᡪᢛᡬᢐ ᡭᡧ ᡳᡪᡬᡬᢞᡫ ᢙᡳ ᢈᡪᢞᢚᡪᡫ᠃ \n10᠂ ᢔᡪᢚᡪᡪᢚᡬᢎᡪᡬᡨ᠄  ᢘᡭᡬᡪᢊᢑᡬᢜᡭᡳ ᡸᡭᢙᡧ ᡬᡬᡧ ᡯᡪᡬᢎᡪᡧ ᡸᡭᢔᡬᡱᡱᡭᡧ ᡳ ᢨᡫ  ᡥᡪᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡳᡪᢉᡨ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᡬᡬᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᢊᡪᢑᡪᡧ ᡳ  ᡳᡪᡪᡪᢔᡫ ᠃\n11᠂ ᡥᡪᡫ ᡬᡬᢜᡭᡬᡧ ᠄ ᢋᡭᡬᢑᡭᡧ ᡴᡭᡬᡬᢝ ᢜᡪᢊᡪᡨ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᡬᡬᡧ ᡳᡪᡪᡪᢔᡫ ᠃\n12᠂ ᢘᡪᢞᡬᢋᡭᡧ ᠄ ᢜᡪᢞᡳ ᡬᡬᡧ ᡯᡬᢊᡪᡧ ᡬᡪᢑᡪᡱᡱᡳ ᠃ \n13᠂ ᢘᡪᢐᡨ ᡬᡬᡧ ᢚᡬᡱᡳᡨ᠄  \n14᠂ ᢏᡭᡬᡪᡬᡨ ᡳᡪᡪᡪᢔᡫ᠄  ᡬᡭᡳ ᡥᡭᢙᡧ ᢚᡬᡱᡱᡭᢑᡱᡱᡪᡧ ᡳ ᡥᡪᢞᡳ ᡸᡭᢞᢚᡬᡧ ᡳ ᡥᡭᡭᡱᡱᡪᢐ ᠃ ᢚᡬᡳᡪᢉᡨ ᢘᡪᡴᡭᢙᡭᡱᡱᡪᢝ ᢘᡭᢎᢙᡪᢙᡳ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᡥᢚᡧ ᡥᡪᢛᡬᢐ ᡭᡧ ᡥᡪᢎᡪᢞᡪᢑᢙᡧ ᡳᡪᡧ ᡥᡪᡴᡭᡪᡪᢔᡪᡧ ᢘᡭᢎᢙᡪᢙᡳ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᡬᡬᡧ ᢘᡪᢊᡪᢙᡳ ᢘᡪᢓ ᡭᡧ ᢌᡪᢞᢊᡪᢛᡬᢐ ᡭᡧ ᢚᡭᢑᡧ ᢘᡪᡫ ᡬᡬᢝ ᡭᡧ ᡯᡬᢊᡪᡨ ᢘᡭᡱᡱᡪᡧ ᡳ ᡳᡪᡪᡪᢔᡫ ᠃\n15᠂ ᢘᡭᡬᡳᢔᡬᡧ ᠄ \n16᠂ ᢗᡭᡪᢊᡪᡪᡭᢝ ᠄ \n17᠂ ᢚᡬᢑᡪᡱᡱᡭᡪᡳᡪᡱᡱᡪᡰᡨ ᠄ ᡸᡭᢞᢚᡬᡧ ᡳ ᡸᡭᡬᡬᢙᡳ ᡸᡭᢔᡬᡱᡱᡳ ᡯᡭᢙᡭᢇ ᢘᡪᡫ ᠂ ᡥᡭᢙᡳ ᡳᡪᢜᡪᡪᡱᡪᡱᡱᡭᢝ ᡸᡭᢙᡧ ᡬᡬᡧ ᢔᡭᢞᡱᡱᡪᡧ ᢋᡭᡬᢎᡭᢛᡬᢐ ᡭᡧ  ᢘᡭᡳᢚᡬᢜᡪᡧ ᡳ ᡳᡪᡪᡪᢔᡫ ᡬᡬᡧ ᢋᡭᡬᢊ᠋ᢛᡬᢋᡭᢑᡭᢑᢙᡧ ᡬᡬᡧ ᢘᡭᡬᡲ ᢘᡳ ᡥᡪᢛᡬᢑᢑᡪᢛᡳ ᡳᡪᡬᡬᡰᡨ ᠃ ᡥᡭᡬᡴᡭᢝ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡭᡧ ᡳᡪᡪᡪᢔᡫ ᡬᡬᡧ ᢜᡪᢊᡪᡨ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᡬᡬᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᢊᡪᢑᡧ ᡥᡭᡭᡪᢇᡨ ᡬᡭᢊᡬᢜᡪᢐ ᡭᡧ ᢔᡪᢑᡴᡭᢞᡫ ᡥᢚᡧ ᢘᡪᢋᡭᢔᢚᡳ ᠂ ᢜᡪᡷᡭᡧ ᡳ ᢊᡬᢢᡭ ᢜᡪᢊᡪᡨ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᠂ ᢈᡪᢥᡭᡪᡪ᠋ᢟᡦ ᢜᡪᢊᡪᡨ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᢙᡳ ᢔᡭᢞᡭᢑᢚᡪᡳᡪᡨ᠃\n18᠂ ᢋᡭᡬᢊᡪᡨ ᢌᡭᡪᢊᡱᡱᡭᢐ \n19᠂ ᡯᡭᢜᡪᡧ ᢚᡬᢎᡪᡭᡧ᠂ ᢋᡭᡬᢊᢛᡬᢑᢙᡳ᠄ ᡥᡪᢞᡳ ᡸᡭᢞᢚᡬᡧ ᡳ ᢗᡭᡳ ᡳᡪᢑᡱᡱᡪᢔᡭᡧ ᡳ ᡥᡭᡭᡱᡱᡪᢐ ᠃\n20᠂ ᢚᡭᡪᡪᡱᡪᢎᢛᡬᢐ᠄ ᡳᡪᢞᡱᡱᡳ ᢜᡪᢔᡭᢙᡪᡧ ᠂ ᢋᡭᡬᢑᡭᡧ ᡴᡭᡬᡬᢝ ᡭᡧ ᡥᡭᡭᡱᡱᡪᢐ ᠂ Zcode ᡭᡧ ᡥᢋᡭᢔᢊᡪᡧ ᡳᡪᡬᡬᡱᡱᡭᢑᡭᡪᡪᢚᡫ᠂ ᢘᡭᢓ ᡥᡪᡶᡵ ᡬᡬᡧ ᡥᢋᡭᢔᢊᡪᡧ ᡳᡪᡬᡬᡱᡱᡭᢑᡭᡪᡪᢚᡫ",
                              style: TextStyle(
                                fontFamily: MongolFonts.z52ordostig,
                                // fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 270,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: MongolText(
                              "     ᢚᡪᢊᡬᢎᢛᡬᡪᡪᢔᡪᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡯᡭᢍ ᡥᡬᡪᢘᢟᢞᡱᢟᢘᡦ ᢔᡭᡬᢑᢛᡬᡫᡨ ᢘᡪᢊᡪᢝᡨ ᡳᡪᢞᡭᢇ ᡳᡪᡬᡬᢙᡪᢇ ᡥᡭᡬᢊᡪᡫ᠂ ᡬᡭᡬᡳᢊᡪᡧ PDF ᡬᡬᢞᡭᢇ ᢊᡪᢑᡳᡪᢞᡫ ᡥᡭᢚᡬᢝ ᡥᢚᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡳᡬᢚᡬᡬᡨ ᡭᡧ ᢋᡭᡬᢊᢛᡬᢑᢙᡧ ᡫ ᡸᡪᢞᢔᡬᢑᡪᢛᡳ ᡴᡭᡫ᠃ \n     ᡥᡪᢞᡪᡭᡧ ᡭᡧ ᢘᡭᢎᢙᡧ ᡥᢚᡧ ᡥᡭᡬᢔᡭᡬᡨ ᡥᡪᢎᡬᢑᡪᡱᡱᡭᢑᢛᡳ ᠂ ᡥᡪᢞᡪᡭᡧ ᡭᡧ ᡬᡭᢊᡬᢜᡪᡪᡪᢔᡪᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡥᡪᡶᡵ ᡯᡫ ᢘᡪᡱᡪᢝ ᢘᡪᡫ ᡬᡭᢑᡱᡱᡪᢛᡳ ᡳᡪᡬᡬᡰᡨ᠃ \n     ᢊᡪᡳᢑᡪᢐ ᡭᡧ ᡥᢞᢊᡪᡨ ᢗᡪᡱᡱᡪᢞᢙᡭᡪᡪᡳ ᡥᡭᡬᢊᡪᡫ ᡬᡭᢊᡬᢜᡪᢑᢚᡬᡭᡧ ᡬᡭᢊᡬᢜᡪᢐ ᡴᡭᡬᢙᡭᢊᡪᢐ ᡬᡬᡪᡧ ᡯᡪᢔᡫ ᡯᡫ ᢜᡪᡴᡭᡱᡱᡭᢑᡪᡪᡳ ᡴᡭᢑᡳᡪᡳ ᠃ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡬᡬᡪᢝ ᡬᡬᡪᡧ ᡳᡬᢚᡬᢛᡳ ᡥᡭᡪᢊᢔᡬᢛᡳ ᢔᡭᢞᡭᡫᡨ᠃",
                              style: TextStyle(
                                fontFamily: MongolFonts.z52ordostig,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Center(child: Text("Email: Zmongolcode@gmail.com")),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

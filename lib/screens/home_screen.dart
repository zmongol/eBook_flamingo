import 'package:book_app/consttants.dart';
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
                        // RichText(
                        //   text: TextSpan(
                        //     // style: Theme.of(context).textTheme.display1,
                        //     children: [
                        //       TextSpan(text: "Best of the "),
                        //       TextSpan(
                        //         text: "day",
                        //         style: TextStyle(fontWeight: FontWeight.bold),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // bestOfTheDayCard(size, context), // Disabled the middle part.
                        Container(
                          height: 230,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: MongolText(
                              "     ᢚᡪᢊᡬᢎᢛᡬᡪᡪᢔᡪᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡯᡭᢍ ᡥᡬᡪᢘᢟᢞᡱᢟᢘᡦ ᢔᡭᡬᢑᢛᡬᡫᡨ ᢘᡪᢊᡪᢝᡨ ᡳᡪᢞᡭᢇ ᡳᡪᡬᡬᢙᡪᢇ ᡥᡭᡬᢊᡪᡫ᠂ ᡬᡭᡬᢊᡪᢝ ᢏᡧ PDF ᡬᡬᢞᡭᢇ ᢊᡪᢑᡳᡪᢞᡫ ᡥᡭᢚᡬᢝ ᡥᢚᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡳᡬᢚᡬᡬᡨ ᡭᡧ ᢋᡭᡬᢊᢛᡬᢑᢙᡧ ᡫ ᡸᡪᢞᢔᡬᢑᡪᢛᡳ ᡴᡭᡫ᠃ \n     ᡥᡪᢞᡪᡭᡧ ᡭᡧ ᢘᡭᢎᢙᡧ ᡥᢚᡧ ᡥᡭᡬᢔᡭᡬᡨ ᡥᡪᢎᡬᢑᡪᡱᡱᡭᢑᢛᡳ ᠂ ᡥᡪᢞᡪᡭᡧ ᡭᡧ ᡬᡭᢊᡬᢜᡪᡪᡪᢔᡪᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡥᡪᡶᡵ ᡯᡫ ᢘᡪᡱᡪᢝ ᢘᡪᡫ ᡬᡭᢑᡱᡱᡪᢛᡳ ᡳᡪᡬᡬᡰᡨ᠃ \n     ᢊᡪᡳᢑᡪᢐ ᡭᡧ ᡥᢞᢊᡪᡨ ᢗᡪᡱᡱᡪᢞᢙᡭᡪᡪᡳ ᡥᡭᡬᢊᡪᡫ ᡬᡭᢊᡬᢜᡪᢑᢚᡬᡭᡧ ᡬᡭᢊᡬᢜᡪᢐ ᡴᡭᡬᢙᡭᢊᡪᢐ ᡬᡬᡪᡧ ᡯᡪᢔᡫ ᡯᡫ ᢜᡪᡴᡭᡱᡱᡭᢑᡪᡪᡳ ᡴᡭᢑᡳᡪᡳ ᠃ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡬᡬᡪᢝ ᡬᡬᡪᡧ ᡳᡬᢚᡬᢛᡳ ᡥᡭᡪᢊᢔᡬᢛᡳ ᢔᡭᢞᡭᡫᡨ᠃",
                              style: TextStyle(
                                fontFamily: MongolFonts.z52ordostig,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 400,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: MongolText(
                              "          ᢔᡭᢙᡭᢝ ᡭᡧ ᡥᢊᡪᡨ ᡳᡬᢚᡬᡬᡨ ᡸᡪᡪᢊᡱᡱᡪᡱᡱᡪᡪᡪᢚᡫ᠄\n          ᡕ ᡥᢊᡪᡨ ᡳᡬᢚᡬᡬᡨ ᡭᡧ ᢘᡪᢞᡪᡱᡱᡪᢑᡪᢐ ᡬᡬᡪᢝ ᡬᡬᡪᡪᢔᡪᡱᡱᡪᡳᡪᡨᡖ\n1᠂ ᡴᡭᢑᡭᡭᡧ: ᢔᡬᢑᡫ ᡬᡬᡧ ᢈᡭᡭᢐ ᢙᡳ ᡯᡭᢙᡭᢇ ᢘᡪᡫ᠂ ᡴᡭᡬᢊᡪᡨ ᡬᡬᡧ ᡸᡭᢞᡭᡪᡪᡪᡬᡬᢙᡪᡧ᠃ \n2᠂ ᡥᡭᢞᡪᡪᢙᡭᡱᡱᡭᢓ᠄   ᢔᡬᢑᡫ ᡬᡬᡧ ᢈᡭᡭᢐ ᡥᡪᡬᡬᢎᡪᢇ ᡭᡧ ᢔᡭᡬᡱᡬᡭᡧ ᡳᡪᢞᡪᡱᡱᡭᡧ ᡸᡭᢔᡬᡱᡱᡭᡧ ᡳ ᡥᡪᢚᡬᢙᡳ ᡥᡪᡱᡱᡭᢑᡧ ᢔᡭᢎᡭᡧ ᡳ ᡥᡭᡬᢞᢊᡪᡪᡱᡱᡭᡭᢐ ᢈᡪᢚᡪᡪᡪ᠋ᡨ ᡳᡪᢝ ᡯᡭᢙᡭᢇ ᢘᡪᡫ ᠂ ᢌᡪᢐ ᡥᡪᢛᡳ ᡥᡪᡪᡪᡭᡫ ᡬᡬᡧ ᢘᡭᢔᡪᡪᡪᡫ ᢌᡪᢞᢊᡪᢛᡬᢐ ᢔᡭᢞᡭᡪᡪᢔᡪᡧ ᠂ ᢘᡭᢓ ᢌᡪᢞᢊᡪᢛᡬᢐ ᡬᡬᡪᢝ ᡬᡬᡪᡧ ᡥᡪᢛᡬᢑᢑᡪᢛᡳ ᡳᡪᡬᡬᡪᡪᡳ ᡬᡬᡧ ᢘᡪᡱᡱᡪᡳ ᡳᡪᡬᡬᡱᡱᡭᢑᡪᡪ᠋ᡨ ᡬᡬᡧ ᡬᡬᡪᡧ ᡥᢙᡦ ᡭᡧ ᢜᡪᡴᡭᢙᡪᢐ ᡭᡧ ᡥᡪᢛᡬᢐ ( ᡯᡬᢞᡳᡪᡨ ) ᡫ ᡸᡪᡳᢔᡭᢞᡱᡱᡪᡧ ᢊᡬᢛᡳ ᡳᡪᡬᡬᡰᡨ ᠃\n3᠂ ᡯᡭᢎᡭᢚᡬᡧ᠄ ᢊᡪᡬᡬᢎᡭᢞᡫ ᡸᡭᢑᡴᡭᢉᡨ ᡬᡬᡧ ᡥᢞᢊᡬᢑᡪᢊᢚᡫ᠂ IT ᢌᡪᢞᢊᡪᢛᡬᢑᢙᡪᡧ᠃ \n4᠂ ᢔᡭᢙᡭᢑᢙᡳ᠄ ᡸᡪᢞᡬᢜᡪᢙᡳ ᢘᡭᢎᢙᡪᢙᡳ ᡬᡬᡧ ᢔᡭᢙᡭᡧ᠃ \n5᠂ ᡥᡪᢞᡬᡱᡱᡭᡪᢊᡪᢞᡪᢐ: ᡬᡭᡳ ᡥᡭᢙᡧ ᡬᡬᡧ ᢚᡬᡱᡱᡭᢑᡱᡱᡪᡧ ᡳ ᡥᡪᢞᡳ ᡸᡭᢞᢚᡬᡧ ᡳ ᡥᡭᡭᡱᡱᡪᢐ ᠂ ᢈᡭᢚᡬᡧ ᢘᡪᡴᡭᡧ ᡬᡬᢐ ᢘᡪᢊᡪᢙᡳ ᢘᡭᢎᢙᡪᢙᡳ ‍ᢘᡳ ᢊᡪᢑᡧ ᡳᡬᢚᡬᡬᡨ ‍ᡥᡭᡬᡧ ᢊᡬᢚᡬᢜᡪᢐ ᡬᡬᡱᡱᡪᡪᡪᢔᡪᡧ ᡬᡬᡪᢊᢊᡬᡱᡫ ᢘᡪᢊᡪᢙᡳ ᢘᡪᢓ ‍ᡭᡧ ᢘᡭᢔᡬᢜᡪᢐ ᢘᡪᡫ ᡳᡪᡪᡪᢔᡫ ᠃\n6᠂ ᢌᡭᡬᡪᢊᢊᡪᢛᡬᢞᡱᡱᡪᢐ ᠂ ᡴᡭᡱᡱᡭᢙᡳ ᡸᡭᢙᡧ ᡬᡬᡧ ᢘᡪᢞᡪᡪᡪᡧ ᢌᡭᡭᢎᡬᡪᡪᡪᡱᡱᡪᡧ ᡯᡭᢙᡭᢇ ᢘᡪᡫ ᠂ ᡸᡪᢞᡬᢜᡪᢙᡳ ᢘᡭᢎᢙᡪᢙᡳ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᡥᢚᡧ ᢘᡪᢋᡭᢔᡭᢊᢔᡪᡧ᠃\n7᠂ ᢔᡬᢑᡭᡱᡱᡭᡧ᠄ ᡯᡪᡬᢎᡪᡧ ᡸᡭᢔᡬᡱᡱᡭᡧ ᡳ ᡸᡭᡪᢊᡪᡪᡭᢞᢙᡪᢐᡨ ᢔᡭᢎᡳ ᡬᡬᡧ ᡥᡭᡭᡱᡱᡪᢐ ᠂ ᢋᡭᡬᢑᡭᡧ ᡴᡭᡬᡬᢝ ᡭᡧ ᡸᡪᡬᡬᢑᡪᢝ ᢘᡳ ᡴᡭᡫ ᠃\n8᠂ ᡥᢞᢙᡪᡱᡬᢚᡪᡪᢊᢊᡪᢐ ᠄ \n9᠂ ᡥᡭᢙᡭᡪᢊᢊᡪᢞᡪᢐ᠄ ᢔᡭᡬᡱᡬᡭᡧ ᡳᡪᢞᡪᡱᡱᡭᡧ ᡸᡭᢔᡬᡱᡱᡭᡧ ᡳ ᡬᡬᢞᡭᢊᡪᡨ ᡳᡪᢑᡱᡱᡪᢔᡭᡧ ᡳ ᡥᡭᡭᡱᡱᡪᢐ ᠃ 2010 ᡥᡭᡧ ᢙᡳ ᢔᡭᡬᡱᡬᡭᡧ ᡳᡪᢞᡪᡱᡱᡭᡧ ᡸᡭᢔᡬᡱᡱᡭᡧ ᡳ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡥᡭᡬᡪᢙᡭᢔᡭᢙᡪᡧ ᡳ ᢘᡭᢎᢙᡪᢙᡳ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᢙᡳ ᡥᡪᡪᢊᢇᡨ ᢘᡭᢎᢙᡪᢙᡳ ᡬᡬᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᢊᡪᢑᡪᡧ ᡳ ᡳᡪᡪᡪᢔᡫ ᡳᡪᢝ ᡥᡪᡪᢊᢇᡨ ᡥᡪᢛᡬᢐ ᡭᡧ ᡳᡪᡬᡬᢞᡫ ᢙᡳ ᢈᡪᢞᢚᡪᡫ᠃ \n10᠂ ᢔᡪᢚᡪᡪᢚᡬᢎᡪᡬᡨ᠄  ᢘᡭᡬᡪᢊᢑᡬᢜᡭᡳ ᡸᡭᢙᡧ ᡬᡬᡧ ᡯᡪᡬᢎᡪᡧ ᡸᡭᢔᡬᡱᡱᡭᡧ ᡳ ᢨᡫ  ᡥᡪᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡳᡪᢉᡨ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᡬᡬᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᢊᡪᢑᡪᡧ ᡳ  ᡳᡪᡪᡪᢔᡫ ᠃\n11᠂ ᡥᡪᡫ ᡬᡬᢜᡭᡬᡧ ᠄ ᢋᡭᡬᢑᡭᡧ ᡴᡭᡬᡬᢝ ᢜᡪᢊᡪᡨ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᡬᡬᡧ ᡳᡪᡪᡪᢔᡫ ᠃\n12᠂ ᢘᡪᢞᡬᢋᡭᡧ ᠄ ᢜᡪᢞᡳ  ᡬᡬᡧ  ᡯᡬᢊᡪᡧ ᡬᡪᢑᡪᡱᡱᡳ ᠃ \n13᠂ ᢘᡪᢐᡨ ᡬᡬᡧ ᢚᡬᡱᡳᡨ᠄  \n14᠂ ᢏᡭᡬᡪᡬᡨ ᡳᡪᡪᡪᢔᡫ᠄  ᡬᡭᡳ ᡥᡭᢙᡧ ᢚᡬᡱᡱᡭᢑᡱᡱᡪᡧ ᡳ ᡥᡪᢞᡳ ᡸᡭᢞᢚᡬᡧ ᡳ ᡥᡭᡭᡱᡱᡪᢐ ᠃ ᢚᡬᡳᡪᢉᡨ ᢘᡪᡴᡭᢙᡭᡱᡱᡪᢝ ᢘᡭᢎᢙᡪᢙᡳ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᡥᢚᡧ ᡥᡪᢛᡬᢐ ᡭᡧ ᡥᡪᢎᡪᢞᡪᢑᢙᡧ ᡳᡪᡧ ᡥᡪᡴᡭᡪᡪᢔᡪᡧ ᢘᡭᢎᢙᡪᢙᡳ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᡬᡬᡧ ᢘᡪᢊᡪᢙᡳ ᢘᡪᢓ ᡭᡧ ᢌᡪᢞᢊᡪᢛᡬᢐ ᡭᡧ ᢚᡭᢑᡧ ᢘᡪᡫ ᡬᡬᢝ ᡭᡧ ᡯᡬᢊᡪᡨ ᢘᡭᡱᡱᡪᡧ ᡳ ᡳᡪᡪᡪᢔᡫ ᠃\n15᠂ ᢘᡭᡬᡳᢔᡬᡧ ᠄ \n16᠂ ᢗᡭᡪᢊᡪᡪᡭᢝ ᠄ \n17᠂ ᢚᡬᢑᡪᡱᡱᡭᡪᡳᡪᡱᡱᡪᡰᡨ ᠄ ᡸᡭᢞᢚᡬᡧ ᡳ ᡸᡭᡬᡬᢙᡳ ᡸᡭᢔᡬᡱᡱᡳ ᡯᡭᢙᡭᢇ ᢘᡪᡫ ᠂ ᡥᡭᢙᡳ ᡳᡪᢜᡪᡪᡱᡪᡱᡱᡭᢝ ᡸᡭᢙᡧ ᡬᡬᡧ ᢔᡭᢞᡱᡱᡪᡧ ᢋᡭᡬᢎᡭᢛᡬᢐ ᡭᡧ  ᢘᡭᡳᢚᡬᢜᡪᡧ ᡳ ᡳᡪᡪᡪᢔᡫ ᡬᡬᡧ ᢋᡭᡬᢊ᠋ᢛᡬᢋᡭᢑᡭᢑᢙᡧ ᡬᡬᡧ ᢘᡭᡬᡲ ᢘᡳ ᡥᡪᢛᡬᢑᢑᡪᢛᡳ ᡳᡪᡬᡬᡰᡨ ᠃ ᡥᡭᡬᡴᡭᢝ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡭᡧ ᡳᡪᡪᡪᢔᡫ ᡬᡬᡧ ᢜᡪᢊᡪᡨ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᡬᡬᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᢊᡪᢑᡧ ᡥᡭᡭᡪᢇᡨ ᡬᡭᢊᡬᢜᡪᢐ ᡭᡧ ᢔᡪᢑᡴᡭᢞᡫ ᡥᢚᡧ ᢘᡪᢋᡭᢔᢚᡳ ᠂ ᢜᡪᡷᡭᡧ ᡳ ᢊᡬᢢᡭ ᢜᡪᢊᡪᡨ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᠂ ᢈᡪᢥᡭᡪᡪ᠋ᢟᡦ ᢜᡪᢊᡪᡨ ᢔᡭᢞᡱᡱᡪᡱᡱᡭᢑᡫ ᢙᡳ ᢔᡭᢞᡭᢑᢚᡪᡳᡪᡨ᠃\n18᠂ ᢋᡭᡬᢊᡪᡨ ᢌᡭᡪᢊᡱᡱᡭᢐ \n19᠂ ᡯᡭᢜᡪᡧ ᢚᡬᢎᡪᡭᡧ᠂ ᢋᡭᡬᢊᢛᡬᢑᢙᡳ᠄ ᡥᡪᢞᡳ ᡸᡭᢞᢚᡬᡧ ᡳ ᢗᡭᡳ ᡳᡪᢑᡱᡱᡪᢔᡭᡧ ᡳ ᡥᡭᡭᡱᡱᡪᢐ ᠃\n20᠂ ᢚᡭᡪᡪᡱᡪᢎᢛᡬᢐ᠄ ᡳᡪᢞᡱᡱᡳ ᢜᡪᢔᡭᢙᡪᡧ ᠂ ᢋᡭᡬᢑᡭᡧ ᡴᡭᡬᡬᢝ ᡭᡧ ᡥᡭᡭᡱᡱᡪᢐ ᠂ Zcode ᡭᡧ ᡥᢞᢊᡬᢑᡪᢊᢚᡫ᠂ ᢘᡭᢓ ᡥᡪᡶᡵ ᡬᡬᡧ ᡥᢞᢊᡬᢑᡪᢊᢚᡫ",
                              style: TextStyle(
                                fontFamily: MongolFonts.z52ordostig,
                                // fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        // RichText(
                        //   text: TextSpan(
                        //     // style: Theme.of(context).textTheme.display1,
                        //     children: [
                        //       TextSpan(text: "Continue "),
                        //       TextSpan(
                        //         text: "reading...",
                        //         style: TextStyle(fontWeight: FontWeight.bold),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: Color(0xFFD3D3D3).withOpacity(.84),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 30, right: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Crushing & Influence",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                "Gary Venchuk",
                                                style: TextStyle(
                                                  color: kLightBlackColor,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text(
                                                  "Chapter 7 of 10",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          "assets/images/book-1.png",
                                          width: 55,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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

  // Container bestOfTheDayCard(Size size, BuildContext context) {
  //   return Container(
  //     margin: EdgeInsets.symmetric(vertical: 20),
  //     width: double.infinity,
  //     height: 245,
  //     child: Stack(
  //       children: <Widget>[
  //         Positioned(
  //           bottom: 0,
  //           left: 0,
  //           right: 0,
  //           child: Container(
  //             padding: EdgeInsets.only(
  //               left: 24,
  //               top: 24,
  //               right: size.width * .35,
  //             ),
  //             height: 230,
  //             width: double.infinity,
  //             decoration: BoxDecoration(
  //               color: Color(0xFFEAEAEA).withOpacity(.45),
  //               borderRadius: BorderRadius.circular(29),
  //             ),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: <Widget>[
  //                 Container(
  //                   margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
  //                   child: Text(
  //                     "New York Time Best For 11th March 2020",
  //                     style: TextStyle(
  //                       fontSize: 9,
  //                       color: kLightBlackColor,
  //                     ),
  //                   ),
  //                 ),
  //                 Text(
  //                   "How To Win \nFriends &  Influence",
  //                   // style: Theme.of(context).textTheme.title,
  //                 ),
  //                 Text(
  //                   "Gary Venchuk",
  //                   style: TextStyle(color: kLightBlackColor),
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.only(top: 10, bottom: 10.0),
  //                   child: Row(
  //                     children: <Widget>[
  //                       Padding(
  //                         padding: EdgeInsets.only(right: 10.0),
  //                         child: BookRating(score: 4.9),
  //                       ),
  //                       Expanded(
  //                         child: Text(
  //                           "When the earth was flat and everyone wanted to win the game of the best and people….",
  //                           maxLines: 3,
  //                           overflow: TextOverflow.ellipsis,
  //                           style: TextStyle(
  //                             fontSize: 10,
  //                             color: kLightBlackColor,
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //         Positioned(
  //           right: 0,
  //           top: 0,
  //           child: Image.asset(
  //             "assets/images/book-3.png",
  //             width: size.width * .37,
  //           ),
  //         ),
  //         Positioned(
  //           bottom: 0,
  //           right: 0,
  //           child: SizedBox(
  //             height: 40,
  //             width: size.width * .3,
  //             child: TwoSideRoundedButton(
  //               text: "ᠤᠩᠰᠢᠬᠤ",
  //               radious: 24,
  //               press: () {},
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

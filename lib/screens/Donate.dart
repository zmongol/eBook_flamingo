import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mongol/mongol.dart';

import '../Component/MongolFonts.dart';

class Donation extends StatelessWidget {
  const Donation({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zcode ᡭᡧ ᡳᡪᢇ ᡥᢚᡧ',
            style: TextStyle(
                fontFamily: MongolFonts.z52ordostig, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 164, 166, 168),
        actions: [],
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          top: 16,
          bottom: 16,
          left: 16,
          right: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 180,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: MongolText(
                    'Zcode ᡯᡫ ᡬᡭᡬᡲ ᢜᡭᡬᡱᡬᢥᡭᢙᡦ ᢔᢘᡪᡪᢙᡪᢞᢘᡦ ᡬᡫ ᡥᢞᡬᢑᢊᡬᢑᡪᢊᢔᡪᡧ ᡥᡪᢜᡪᡧ ᡴᡭᡬᢑᡭᢊᡪᡨ᠃ ᡸᡪᡬᡬᢑᢙᡧ ᡬᡬᡧ ᡥᡪᢔᡪᡱᡱᡭᢙᡪᢐ ᡫ ᡴᡭᡬᢞᡬᡧ ᢔᡬᡬᡭᡪᢋᡭ ᡬᡬᡧ ᢘᡭᡬᢑᡭᢊᡪᡨ ᢊᡪᢙᡭᡧ ᢔᡬᡰᡨ ᡥᡪᡶᡵ ᡬᡭᢊᡬᢜᡪᡳᡪᡨ᠃\nᡴᡭᢔᡭᢉᡨ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡳᡬᢚᡬᡬᡨ ᢌᡬᡱᡫ ᢌᡭᡬᡪᢊᢊᡪᡨ ᡥᡭᢞᡭᢔᡬᡰᡨᡒ\n\n    ᡢ ᡬᡭᢊᡬᢜᡪᡪᡪᢚᡫ ᠄ \n       ᡳᡪᢞᡱᡱᡳ ᠂ ᢚᡭᡪᡪᡱᡪᢎᢛᡬᢐ\n       2023 ᡥᡭᡧ',
                    style: TextStyle(
                      fontFamily: MongolFonts.z52ordostig,
                    ),
                  ),
                ),
              ),
              Text(
                'In order to write and search Traditional Mongolian script correctly, we developed our own Z52 unicode standard, 45 beautifully designed fonts, an Artificial Intelligence Input Method Editor and word suggestion software packages for various platforms including iOS, Android, Macbook, and Windows. We also established a website and code conversion software. To build these mobile applications, we used Python/ Flutter/ VSC/ Xcode and many more packages.\nLet us celebrate the longevity of the Mongolian script!',
                style: TextStyle(
                  fontFamily: MongolFonts.z52saitig,
                  // color: Color(0xFF0072AA),
                ),
              ),
              Text(
                '@Chuck Namujila',
                style: TextStyle(
                  fontFamily: MongolFonts.z52saitig,
                  // color: Color(0xFF0072AA),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "ZmongolCag",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF0072AA),
                        fontWeight: FontWeight.bold,
                        fontFamily: MongolFonts.z52haratig,
                      ),
                    ),
                    Container(
                      height: 210,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MongolText(
                              'ᢌᡭᡪᢊᡱᡱᡭᢐ ᢚᡪᢇ ZmongolCag ᡯᡫ ᢚᡪᢇ ᡸᡭᡱᡱᡭᢚᡪᢉᡨ ᡬᡫ ᢘᡪᢎᢙᡪᢊᢑᡪᢛᡳ ᠂ ᡥᡪᢛᡬᢐ ᢔᡭᢞᡭᢑᢉᡨ ᡳᡪᡧ ᢘᡭᡬᢔᡭᡳᢑᡪᢛᡳ ᠂ ᡸᡭᡱᡱᡭᢚᡪᢉᡨ ᡯᡫ ᢘᡭᢑᡳᡪᢐ ᢔᡪᡱᡪᡱᡱᡭᢑᢉᡨ ᡥᡭᡬᢊᢋᡭᡰᡨ ᠃',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: MongolFonts.z52agolatig,
                                fontWeight: FontWeight.normal,
                                // color: Color(0xFF0072AA),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/calendar1.png',
                              width: 130,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/calendar2.png',
                              width: 130,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/calendar3.png',
                              width: 130,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Mongolian!",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF0072AA),
                        fontWeight: FontWeight.bold,
                        fontFamily: MongolFonts.z52haratig,
                      ),
                    ),
                    Container(
                      height: 210,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MongolText(
                              'ᢌᡭᡪᢊᡱᡱᡭᢐ ᡳᡬᢚᡬᡬᡨ Mongolian! ᡯᡫ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡳᡬᢚᡬᡬᡨ ᡭᡧ ᡥᡪᡪᢊᢇᡨ ᢗᡪᢙᡭᡧ ᡳ ᢔᡭᢞᡭᡪᡪᢚᡫ ᢙᡳ ᢘᡭᢔᡧ ᡴᡭᢑᡭᡰᡨ ᠃ ᢘᡪᡱᡱᡭᡳ ᢘᡪᡫ ᡴᡭᡬᢊᡪᡭᡧ ᡬᡬᢞᡭᢇ ᢘᡪᡫ ᠂ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡳᡬᢚᡬᡬᡨ ᡬᡬᡪᡧ ᢔᡭᢞᡪᡪᡳ ᢙᡳ ᢊᡪᢞᡪᢊᢙᡪᡫ ᠃',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: MongolFonts.z52agolatig,
                                fontWeight: FontWeight.normal,
                                // color: Color(0xFF0072AA),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/learn1.png',
                              width: 130,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/learn2.png',
                              width: 130,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/learn3.png',
                              width: 130,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Zmongol2.0",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF0072AA),
                        fontWeight: FontWeight.bold,
                        fontFamily: MongolFonts.z52haratig,
                      ),
                    ),
                    Container(
                      height: 210,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MongolText(
                              'Zmongol 2.0 ᡯᡫ ᢘᡭᡬᢚᡬᡧ ᢘᡪᡴᡭᡧ ᢈᡭᢜᡭᢎᢔᡭᢇ ᢘᡬᡬᡨ ᢘᡪᡫ ᠂ ᢚᡪᢊᡬᢍ ᡥᡭᢜᡭᡧ ᡥᡪᢔᡬᡪᡪᢑᡪᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡥᡭᡬᢔᡭᡬᡨ ᢔᡪᡱᡪᡱᡱᡭᢑᢛᡳ ᠂ ᡬᡬᢞᡭᢇ ᢈᡭᢜᡭᢑᡪᡧ ᢌᡭᡪᢊᡱᡱᡭᢐ ᡳᡬᢚᡬᡬᡨ ᡭᡧ photoshop ᢊᡪᢎᡪᢎᡭᡫ ᠃',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: MongolFonts.z52agolatig,
                                fontWeight: FontWeight.normal,
                                // color: Color(0xFF0072AA),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/mongol6.png',
                              width: 130,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/mongol1.png',
                              width: 130,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/mongol2.png',
                              width: 130,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/mongol3.png',
                              width: 130,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/mongol4.png',
                              width: 130,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/mongol5.png',
                              width: 130,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/mongol7.png',
                              width: 130,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/images/mongol8.png',
                              width: 130,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "www.zvvnmod.com",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF0072AA),
                  fontWeight: FontWeight.bold,
                  fontFamily: MongolFonts.z52haratig,
                ),
              ),
              Container(
                height: 180,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: MongolText(
                    'ᡬᡪᢋᡭᡧ ᢌᡭᢙᡳ ᢔᡭᡬᢑᢛᡬᡫᡨ ᡴᡭᢐ Zcode ᡥᡭᡬᢔᡭᡬᡨ ᢔᡬᡳᡪᢋᡭ ᡬᡫ ᡴᡭᡬᢞᡬᡧ ᢘᡪᢎᢛᡬᢙᡪᡬᡨ ᢔᡭᡬᢑᢛᡬᡫᡨ ᡴᡭᢑᡭᡰᡨ᠃ ᡥᡭᢑᡪᡧ ᡬᡬᡪᢝ ᡬᡬᡪᡧ ᢘᡭᢞᢔᡬᢛᡳ ᡥᡭᡬᢛᡪᢊᡪᢞᡪᡫ ᠃ \n\nᢊᡪᡬᡬᢎᡭᢞᡫ ᢔᡭᡬᢑᢛᡬᡫᡨ ᢙᡳ ᡥᡭᢑᡪᡧ ᢘᡭᡱᡱᡪᡧ ᡳ ᢌᡭᡪᢊᡱᡱᡭᢐ ᢌᡪᢘᢟᢞᡬᢜᡪᢐ ᡴᡭᡫ ᠂ ᡳᡪᢔᡧ Z ᢌᡭᡪᢊᡱᡱᡭᢐ ᡭᡧ ᢥᡭᢎᡶᡬᡭᡬᢘᢟᢝ ᢊᡪᡲ ᡫ ᡳᡪᡱᡱᡭᢑᡱᡱᡪᢛᡳ ᡴᡭᢑᡭᡰᡨ᠃',
                    style: TextStyle(
                      fontFamily: MongolFonts.z52ordostig,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Хандив  Support  打赏",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF0072AA),
                        fontWeight: FontWeight.bold,
                        fontFamily: MongolFonts.z52haratig,
                      ),
                    ),
                    Container(
                      height: 290,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MongolText(
                              'ᢌᡭᡪᢊᡱᡱᡭᢐ ᡳᡬᢚᡬᡬᡨ ᡭᡧ ᢘᡭᡪᡪᡪᡫ ᢔᡭᢙᡭᢑᡭᢉᡨ ᢊᡬᢛᡳ ᡥᡭᢑᡪᡧ ᡥᢙᡭᢝ ᡬᡭᢛᡪᡱᡱᡪᡧ ᡸᡭᡱᡭᢇ ᢔᡬᢞᡱᡱᡪᡱᡱᡳ ᢋᡭᡬᢙᡪᢑᢎᡭᢞᡬᢑᡪᢊᢔᡪᡧ ᢘᡭᢑᡧ ᡥᢑᡬᢊᡪᡧ ᡸᡪᡬᡬᢞᡪᢙᡳ ᢌᡭᡪᢊᡱᡱᡭᢑᢚᡭᡭᡧ ᢌᡬᡱᡫ ᡥᡬᡳᡪᢊᡪᡧ ᢘᡪᡭᡪᢋᡭᢋᡭ ᡴᡭᢑᡳᡪᡳ ᠃ ᡳᡪᢜᡪᢞᢑᡪᢐᡨ᠃',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: MongolFonts.z52agolatig,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFF21AA47),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "PayPal᠄   Bilegt_@live.com",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.red,
                                    fontFamily: MongolFonts.z52xanadutig,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Wechat  微信赞赏",
                                  style: TextStyle(
                                    fontSize: 16,
                                    // color: Color(0xFF0072AA),
                                    fontFamily: MongolFonts.z52ordostig,
                                  ),
                                ),
                                Image.asset(
                                  'assets/images/wechatpay.jpg',
                                  width: 200,
                                  height: 200,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "Thank you 谢谢您 감사합니다 Спасибо ありがとう",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        // color: Color(0xFF0072AA),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35,),
              Text(
                "Вэбсайт  RelatedWebsite  相关网站",
                style: TextStyle(
                  fontSize: 18,
                  // color: Color(0xFF0072AA),
                  fontWeight: FontWeight.bold,
                  fontFamily: MongolFonts.z52saitig,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "https://www.zvvnmod.com/#/home",
                style: TextStyle(fontFamily: MongolFonts.z52chimegtig),
              ),
              SizedBox(height: 5),
              Text(
                "https://hiimor.com/soft/",
                style: TextStyle(fontFamily: MongolFonts.z52chimegtig),
              ),
              SizedBox(height: 20),
              Text(
                "Contact 联系",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF0072AA),
                  fontWeight: FontWeight.bold,
                  fontFamily: MongolFonts.z52saitig,
                ),
              ),
              Text(
                "zmongolcode@gmail.com",
                style: TextStyle(fontFamily: MongolFonts.z52chimegtig),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

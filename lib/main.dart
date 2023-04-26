import 'package:book_app/Component/MongolFonts.dart';
import 'package:book_app/Component/find_ctrls.dart';
import 'package:book_app/consttants.dart';
import 'package:book_app/global_controllers/books_ctrl.dart';
import 'package:book_app/screens/home_screen.dart';
import 'package:book_app/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mongol/mongol.dart';

void main() async {
  await GetStorage.init();

  _putCtrls();
  runApp(MyApp());
}

final _book = FindCtrl.book;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Book App',
        // builder: (context, child) {
        //   return MediaQuery(
        //     data: MediaQuery.of(context).copyWith(
        //       textScaleFactor: _book.fontSize.value,
        //     ),
        //     child: child!,
        //   );
        // },
        theme: _book.appTheme.value.copyWith(
          textTheme: Theme.of(context).textTheme.apply(
                displayColor: kBlackColor,
                fontSizeFactor: _book.fontScale.value,
              ),
        ),
        /* theme: ThemeData(
          fontFamily:
              _book.fontFamily.value.isEmpty ? null : _book.fontFamily.value,
          scaffoldBackgroundColor: Colors.white,
          textTheme: Theme.of(context).textTheme.apply(
                displayColor: kBlackColor,
              ),
        ), */
        home: WelcomeScreen(),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                // style: Theme.of(context).textTheme.display3,
                children: [
                  TextSpan(
                    text: "flamin",
                  ),
                  TextSpan(
                    text: "go.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            MongolText(
              "ᡯᡭᢍ",
              style:
                  TextStyle(fontFamily: MongolFonts.z52xanadutig, fontSize: 26),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedButton(
                text: "уншиж эхлэх",
                fontSize: 20,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _putCtrls() {
  Get.put(BookCtrl());
}

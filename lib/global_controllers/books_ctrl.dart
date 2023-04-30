import 'package:book_app/Component/MongolFonts.dart';
import 'package:book_app/Component/app_theme.dart';
import 'package:book_app/dialogues/show_font_family_sheet.dart';
import 'package:book_app/dialogues/show_font_size_sheet.dart';
import 'package:book_app/extensions/storage_ext.dart';
import 'package:book_app/functions/load_book_json.dart';
import 'package:book_app/models/books/book_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookCtrl extends GetxService {
  List<Book> booksList = <Book>[];
  List<Book> randombooksList = <Book>[];
  var appTheme = appLightTheme().obs;

  var contentStyle = TextStyle().obs;

  var fontScale = 1.0.obs;
  var fontFamily = "".obs;

  @override
  void onInit() {
    setUps();
    loadBooks();
    super.onInit();
  }

  void setUps() {
    fontScale.value = double.tryParse("".boxfontScale) ?? 1;
    if ("".boxfontFamily.isEmpty) {
      final family = MongolFonts.fontList[0][0].toString();
      family.boxfontFamily;
      fontFamily.value = family;
    } else {
      fontFamily.value = "".boxfontFamily;
    }
    updateContentFontFamily();
  }

  void updateContentFontFamily() {
    print(fontFamily.value);
    if (fontFamily.value.isEmpty) {
      contentStyle.value = TextStyle(
        fontFamily: MongolFonts.z52ordostig,
      );
    } else {
      contentStyle.value = TextStyle(
        fontFamily: fontFamily.value,
      );
    }
  }

  void changeFontScale() {
    showFontSizeDialogue(
      selectedScale: fontScale.value,
      onTap: (val) {
        Get.back();
        fontScale.value = val;
        val.toString().boxfontScale;
        fontScale.refresh();
      },
    );
  }

  void changeFontFamily() {
    showFontFamilyDialogue(
      selectedFamily: fontFamily.value,
      onTap: (val) {
        print("val.familyName : ${val.familyName} : ${val.mongolName}");
        Get.back();
        fontFamily.value = val.familyName;
        val.familyName.boxfontFamily;
        updateContentFontFamily();
        // appTheme.value = appLightTheme(fontFamily: val.familyName);
        appTheme.refresh();
      },
    );
  }

  Future<void> loadBooks() async {
    final booksFiles = await loadBookFiles();
    if (booksFiles.isEmpty) return;
    for (var bookfile in booksFiles) {
      final book = await loadBookJson(bookfile);

      if (book != null && book["items"] != null) {
        final dd = await compute<List<dynamic>, Book>(
            Book.fetch, (book["items"] as List<dynamic>));
        booksList.add(dd);
        randombooksList.add(dd);
      }
    }

    //

    randombooksList.shuffle();
  }
}

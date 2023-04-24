import 'package:book_app/Component/MongolFonts.dart';

class MongolFamily {
  String familyName;
  String mongolName;
  MongolFamily({
    this.familyName = "",
    this.mongolName = "",
  });

  static List<MongolFamily> fetchList() {
    return MongolFonts.fontList
        .map((e) => MongolFamily(familyName: e[0], mongolName: e[1]))
        .toList();
  }
}

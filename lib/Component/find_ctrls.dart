import 'package:book_app/global_controllers/ads_ctrl.dart';
import 'package:book_app/global_controllers/books_ctrl.dart';
import 'package:get/get.dart';

class FindCtrl {
  static BookCtrl book = Get.find<BookCtrl>();
  static AppAdsCtrl ads = Get.find<AppAdsCtrl>();
}

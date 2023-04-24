import 'package:get_storage/get_storage.dart';

final _box = GetStorage();

extension KbGetStorageExt on String {
  String get boxfontScale => _finder("boxfontScale");
  String get boxfontFamily => _finder("boxfontFamily");

  String _finder(String key) {
    if (isNotEmpty) {
      if (this == "--") {
        _box.write(key, '');
      } else {
        _box.write(key, this);
      }
    }

    return _box.read(key) ?? "";
  }
}

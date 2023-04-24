import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

Future<Map<String, dynamic>?> loadBookJson(String path) async {
  try {
    return jsonDecode(await rootBundle.loadString(path))
        as Map<String, dynamic>?;
  } catch (e) {
    return null;
  }
}

Future<String?> readAssetFile(String path) async {
  try {
    final dd = await rootBundle.loadString(path);
    print("dd : $dd");
    return dd;
  } catch (e) {
    print("dd : $e");
    return null;
  }
}

Future<List<String>> loadBookFiles() async {
  List<String> booksFiles = [];
  final manifestContent = await rootBundle.loadString('AssetManifest.json');

  final Map<String, dynamic> manifestMap = json.decode(manifestContent);

  booksFiles =
      manifestMap.keys.where((String key) => key.contains('json/')).toList();

  // print("imagePaths : $booksFiles");
  return booksFiles;
}

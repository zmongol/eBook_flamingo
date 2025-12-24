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
  // Directly return the list of JSON files instead of loading from AssetManifest
  return [
    'assets/json/Compendium of Chronicles.json',
    'assets/json/LookingForBook.json',
    'assets/json/SecretHistoryOfMongols.json',
    'assets/json/ᠭᠠᠩᠭ᠎ᠠ_ᠢᠨ_ᠤᠷᠤᠰᠬᠠᠯ.json',
  ];
}

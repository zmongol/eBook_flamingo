import 'package:book_app/extensions/storage_ext.dart';
import 'package:flutter/material.dart';

ThemeData appLightTheme({String? fontFamily}) {
  final family = fontFamily ?? "".boxfontFamily;
  return ThemeData(
    fontFamily: family.isEmpty ? null : family,
    scaffoldBackgroundColor: Colors.white,
  );
}

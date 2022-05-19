import 'package:flutter/material.dart';

class Methods {
  static String? checkTitle(String? value) {
    String title = "Title text";
    if (value == null || value.trim().isEmpty) {
      return "$title can't be empty";
    }
    // else if (value.startsWith(" ")) {
    //   // return "$title must have at least a word";
    //   return "Please Enter a Valid $title";
    // }
    return null;
  }

  static String? checkDescription(String? value) {
    String title = "Description text";
    if (value == null || value.trim().isEmpty) {
      return "$title can't be empty";
    }
    // else if (value.startsWith(" ")) {
    //   // return "$title must have at least a word";
    //   return "Please Enter a Valid $title";
    // }
    return null;
  }

  static TextStyle? checkedTextStyle(
      {double? fontSize, FontWeight? fontWeight}) {
    // if (!checkBoxValue) {
    return TextStyle(
        color: Colors.red,
        decoration: TextDecoration.lineThrough,
        fontStyle: FontStyle.italic,
        fontSize: fontSize,
        fontWeight: fontWeight);
    // }
    // return null;
  }
}

import 'package:flutter/material.dart';
import 'package:untitled/src/constants/colors.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
       InputDecorationTheme(
        prefixIconColor: tSecondaryColor,
        floatingLabelStyle: TextStyle(color: tSecondaryColor),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: tSecondaryColor),
        )
      );


  static InputDecorationTheme darkInputDecorationTheme =
   InputDecorationTheme(
      prefixIconColor: tPrimaryColor,
      floatingLabelStyle: TextStyle(color: tPrimaryColor),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: tPrimaryColor),
      )
  );





}
import 'package:ecommerce/core/resources/fonts_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(Color color, double fontSize, FontWeight fontWeight) {
  return TextStyle(
      color: color,
      fontFamily: FontConstants.fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight);
}

TextStyle getRegularStyle(
    {required Color color, double fontSize = FontSize.s12}) {
  return _getTextStyle(color, fontSize, FontWeightManager.regular);
}

TextStyle getMediumStyle(
    {required Color color, double fontSize = FontSize.s12}) {
  return _getTextStyle(color, fontSize, FontWeightManager.medium);
}

TextStyle getLightStyle(
    {required Color color, double fontSize = FontSize.s12}) {
  return _getTextStyle(color, fontSize, FontWeightManager.light);
}

TextStyle getSemiBoldStyle(
    {required Color color, double fontSize = FontSize.s12}) {
  return _getTextStyle(color, fontSize, FontWeightManager.semiBold);
}

TextStyle getBoldStyle({required Color color, double fontSize = FontSize.s12}) {
  return _getTextStyle(color, fontSize, FontWeightManager.bold);
}

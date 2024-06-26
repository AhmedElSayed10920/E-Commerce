import 'package:ecommerce/core/resources/colors_manager.dart';
import 'package:ecommerce/core/resources/fonts_manager.dart';
import 'package:ecommerce/core/resources/styles.dart';
import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getAppThemeData() {
  return ThemeData(
    //app colors
    primaryColor: ColorsManager.primary,
    primaryColorLight: ColorsManager.lightPrimary,
    primaryColorDark: ColorsManager.darkPrimary,
    disabledColor: ColorsManager.gery1,
    splashColor: ColorsManager.lightPrimary,
    //card theme
    cardTheme: const CardTheme(
      color: ColorsManager.white,
      shadowColor: ColorsManager.gery,
      elevation: AppSize.s4,
    ),
    //appBar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorsManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorsManager.lightPrimary,
      titleTextStyle:
          getRegularStyle(color: ColorsManager.white, fontSize: FontSize.s16),
    ),
    //button theme
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorsManager.gery1,
      splashColor: ColorsManager.lightPrimary,
      buttonColor: ColorsManager.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(
              color: ColorsManager.white, fontSize: FontSize.s17),
          backgroundColor: ColorsManager.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s12))),
    ),
    //text theme
    textTheme: TextTheme(
      headlineLarge:
          getSemiBoldStyle(color: ColorsManager.white, fontSize: FontSize.s16),
      titleSmall:
          getRegularStyle(color: ColorsManager.gery, fontSize: FontSize.s14),
      bodyLarge: getRegularStyle(color: ColorsManager.gery),
    ),
    //text form field theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p12),
      hintStyle:
          getRegularStyle(color: ColorsManager.gery, fontSize: FontSize.s14),
      labelStyle:
          getMediumStyle(color: ColorsManager.gery, fontSize: FontSize.s14),
      errorStyle: getRegularStyle(color: ColorsManager.error),
      enabledBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorsManager.gery, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s12))),
      focusedBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorsManager.primary, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s12))),
      errorBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorsManager.error, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s12))),
      focusedErrorBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: ColorsManager.primary, width: AppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s12))),
    ),
  );
}

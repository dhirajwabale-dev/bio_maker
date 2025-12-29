import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utility/app_color.dart';

class AppTheme {
  AppTheme._();

  static ThemeData commonThemeData = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),

    primaryColor: AppColor.primaryColor,

    scaffoldBackgroundColor: AppColor.white,

    //App Bar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.white,
      elevation: 12,
      shadowColor: AppColor.grey,
      surfaceTintColor: AppColor.white,
      foregroundColor: AppColor.black,
      iconTheme: IconThemeData(color: AppColor.primaryColor),
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
    ),

    // outline Button Theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColor.primaryColor,
        side: BorderSide(color: AppColor.primaryColor),
        overlayColor: AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    ),

    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColor.primaryColor),
    ),

    //Datetime Picker Theme
    datePickerTheme: DatePickerThemeData(
      backgroundColor: AppColor.white,
      surfaceTintColor: AppColor.white,
      headerBackgroundColor: AppColor.primaryColor,
      headerForegroundColor: AppColor.white,
      dayForegroundColor: WidgetStatePropertyAll(AppColor.black),
    ),

    //dropdown Button Theme
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStatePropertyAll(AppColor.white),
        surfaceTintColor: WidgetStatePropertyAll(AppColor.white),
        maximumSize: WidgetStatePropertyAll(Size(200.w, 300.h)),
      ),
    ),

    visualDensity: VisualDensity.adaptivePlatformDensity,
    useMaterial3: true,
  );
}

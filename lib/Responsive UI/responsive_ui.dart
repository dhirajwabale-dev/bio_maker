import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveUi extends StatelessWidget {
  const ResponsiveUi({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  //for Mobile UI Width < 600
  static bool isMobile(BuildContext context) => Get.width < 600;

  // for Tablet UI Width >= 600 and Width <= 1100
  static bool isTablet(BuildContext context) =>
      Get.width >= 600 && Get.width <= 1100;

  // for Desktop UI Width > 1100
  static bool isDesktop(BuildContext context) => Get.width > 1100;

  @override
  Widget build(BuildContext context) {
    final size = Get.size;

    // If our width is more than 1100 then we consider it a desktop
    if (size.width >= 1100) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}

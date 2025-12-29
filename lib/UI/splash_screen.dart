import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Routes/routes_name.dart';
import '../Utility/assets_image.dart';
import '../Widget/general_safe_area.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(RoutesName.homeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GeneralSafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100.h,
                width: 100.w,
                child: Image.asset(AssetsImage.icon),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                height: 140.h,
                width: Get.width,
                child: Image.asset(AssetsImage.welcome2, fit: BoxFit.fill),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Responsive UI/responsive_ui.dart';
import '../Utility/app_color.dart';
import '../Utility/common_code.dart';
import '../Widget/general_safe_area.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveUi.isDesktop(context);

    return GeneralSafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 12,
          title: Text(
            'Marathi Biodata Maker',
            style: TextStyle(
              fontSize: ResponsiveUi.isMobile(context) ? 16.sp : 20.sp,
              color: AppColor.black,
            ),
          ),
        ),

        body: Column(
          children: [
            Expanded(
              child: CarouselSlider(
                items: sampleData.map((item) {
                  return Container(
                    padding: EdgeInsets.all(10.r),
                    height: Get.height,
                    width: isDesktop ? Get.width / 1.6 : Get.width,
                    child: Image.asset(item, fit: BoxFit.fill),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: Get.height,
                  viewportFraction: 1,
                  autoPlay: true,
                  reverse: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

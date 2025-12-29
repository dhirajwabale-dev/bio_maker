import 'package:bio_maker_app/Utility/common_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Responsive UI/responsive_ui.dart';
import '../Utility/assets_image.dart';

class ImageOfGodWidget extends StatelessWidget {
  const ImageOfGodWidget({super.key, required this.flag});

  final int flag;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 100.h,
          width: 100.w,
          child: Image.asset(AssetsImage.godImage, fit: BoxFit.fill),
        ),

        SizedBox(height: 12.h),

        buildCommonText(
          flag == 0 ? "|| श्री गणेशाय नम: ||" : "|| Shri Ganeshay Namah ||",
        ),

        SizedBox(height: 12.h),

        Container(
          width: ResponsiveUi.isMobile(context) ? (Get.width / 2).w : 400.w,
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 10.w,
            vertical: 8.h,
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: buildCommonText(
            flag == 0 ? "वैयक्तिक माहिती" : "Personal Information",
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 12.h),
      ],
    );
  }
}

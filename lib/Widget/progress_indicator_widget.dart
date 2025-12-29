import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utility/app_color.dart';
import '../Utility/assets_image.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 60.h,
              width: 60.w,
              child: CircularProgressIndicator(
                strokeWidth: 4.sp,
                color: AppColor.primaryColor,
              ),
            ),

            Image.asset(AssetsImage.icon, height: 40.h, width: 40.w),
          ],
        ),
      ),
    );
  }
}

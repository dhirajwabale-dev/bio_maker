import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Responsive UI/responsive_ui.dart';
import '../Utility/app_color.dart';
import '../Widget/general_safe_area.dart';

class SampleScreen extends StatelessWidget {
  const SampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

        body: Column(),
      ),
    );
  }
}

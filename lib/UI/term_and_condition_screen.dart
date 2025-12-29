import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Responsive UI/responsive_ui.dart';
import '../Routes/routes_name.dart';
import '../Utility/app_color.dart';
import '../Utility/assets_image.dart';
import '../Utility/common_code.dart';
import '../Widget/bottom_container_widget.dart';
import '../Widget/general_safe_area.dart';

class TermAndConditionScreen extends StatelessWidget {
  const TermAndConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GeneralSafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: SizedBox(
            height: 20.h,
            width: 20.w,
            child: Image.asset(AssetsImage.icon),
          ),
          title: Text(
            'Marathi Biodata Maker',
            style: TextStyle(
              fontSize: ResponsiveUi.isMobile(context) ? 16.sp : 20.sp,
              color: AppColor.black,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Get.offAllNamed(RoutesName.homeScreen),
              child: Text("HOME"),
            ),

            TextButton(
              onPressed: () => Get.offAllNamed(RoutesName.contactScreen),
              child: Text("Contact us"),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),

              buildCommonText(
                "Terms and Conditions",
                fontWeight: FontWeight.bold,
                fontSize: 32.sp,
                color: AppColor.primaryColor,
              ),

              SizedBox(height: 20.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: buildCommonText(
                      "By accessing, shopping on this site, you indicate your unconditional acceptance of these terms & conditions.",
                      fontSize: 16.sp,
                      textAlign: TextAlign.center,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h),

              buildCommonText(
                "Last updated on December 3, 2025",
                color: Colors.black54,
              ),

              SizedBox(height: 20.h),

              SizedBox(
                width: ResponsiveUi.isMobile(context)
                    ? (Get.width / 1.2).w
                    : (Get.width / 1.8).w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildCommonText(
                      "Thank you for visiting marathibiodatamaker.com. This website is owned and developed by the proprietorship firm ARTMAKER TECHNOLOGIES, with its registered/operational office located at 1758, Anand, Karad Tasgaon Road, Palus, Sangli, Maharashtra - 416310. By accessing or making a purchase on this site, you unconditionally agree to abide by these terms and conditions.",
                      color: Colors.black54,
                    ),
                    SizedBox(height: 8.h),
                    buildCommonText(
                      "Your use of the website and/or purchase from us are governed by following Terms and Conditions:",
                      color: Colors.black54,
                    ),
                    SizedBox(height: 8.h),

                    buildCommonText(
                      "The content of the pages of this website is subject to change without notice.",
                      color: Colors.black54,
                    ),
                    SizedBox(height: 8.h),

                    buildCommonText(
                      "Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.",
                      color: Colors.black54,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "Your use of any information or materials on our website and/or product pages is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services or information available through our website and/or product pages meet your specific requirements.",
                      color: Colors.black54,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "Our website contains material which is owned by or licensed to us. This material includes, but are not limited to, the design, layout, look, appearance and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.\nAll trademarks reproduced in our website which are not the property of, or licensed to, the operator are acknowledged on the website.",
                      color: Colors.black54,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "Changes to These Terms and Conditions",
                      color: AppColor.black,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "We may update our Terms and Conditions from time to time. Therefore, we recommend that you review this page periodically for any updates. Any changes will be posted on this page to keep you informed.",
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),

              BottomContainerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:bio_maker_app/Routes/routes_name.dart';
import 'package:bio_maker_app/Widget/general_safe_area.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Responsive UI/responsive_ui.dart';
import '../Utility/app_color.dart';
import '../Utility/assets_image.dart';
import '../Utility/common_code.dart';
import '../Widget/bottom_container_widget.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

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
                "About Us",
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
                      "Our mission is to create a perfect and gorgeous marriage biodata in Marathi.",
                      fontSize: 16.sp,
                      textAlign: TextAlign.center,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h),

              buildCommonText("Our Story", color: Colors.black54),

              SizedBox(height: 20.h),

              SizedBox(
                width: ResponsiveUi.isMobile(context)
                    ? (Get.width / 1.2).w
                    : (Get.width / 1.8).w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildCommonText(
                      "At marathibiodatamaker.com, our mission is to make the process of creating marriage biodata simple, quick, and stress-free. We understand that preparing a biodata for marriage can sometimes feel like a time-consuming task, and we believe your time is better spent doing the things that truly make you happy. That's why we built a tool to make the experience easier for you.",
                      color: Colors.black54,
                    ),
                    SizedBox(height: 8.h),
                    buildCommonText(
                      "We proudly operate from Maharashtra, India, and are committed to offering fast-loading, easy-to-use tools that help you create professional-quality marriage biodata in Marathi. What began as a personal need has grown into one of the most trusted and widely used Marathi marriage biodata creation platforms. It brings us immense joy to know that our service has helped thousands of people across the country.",
                      color: Colors.black54,
                    ),
                    SizedBox(height: 8.h),

                    buildCommonText(
                      "marathibiodatamaker.com is proudly owned and managed by ARTMAKER TECHNOLOGIES.",
                      color: Colors.black54,
                    ),
                    SizedBox(height: 8.h),

                    buildCommonText(
                      "marathibiodatamaker.com is proudly owned and managed by ARTMAKER TECHNOLOGIES.",
                      color: Colors.black54,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "We are constantly working to improve the platform and ensure that it remains a reliable and enjoyable experience for all users. Your feedback and suggestions inspire us to keep innovating and refining our service.",
                      color: Colors.black54,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "If you have any ideas, comments, or improvements to share, we’d love to hear from you. Together, we can continue making the best marriage biodata maker for the Marathi-speaking community.",
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

import 'package:bio_maker_app/Responsive%20UI/responsive_ui.dart';
import 'package:bio_maker_app/Routes/routes_name.dart';
import 'package:bio_maker_app/Utility/common_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Utility/app_color.dart';

class BottomContainerWidget extends StatelessWidget {
  const BottomContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveUi.isMobile(context)
        ? Container(
            padding: EdgeInsets.fromLTRB(14.w, 24.h, 14.w, 8.h),
            width: Get.width,
            height: 380.h,

            decoration: BoxDecoration(
              color: AppColor.black.withValues(alpha: 0.9),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildCommonText(
                  "About Marathi Biodata Maker",
                  fontWeight: FontWeight.bold,
                  fontSize: ResponsiveUi.isMobile(context)
                      ? 14.sp
                      : ResponsiveUi.isMobile(context)
                      ? 14.sp
                      : 16.sp,
                  color: AppColor.white,
                ),

                buildCommonText(
                  "Create and download your perfect marriage biodata in Marathi with ease! Marathi Biodata Maker lets you design a beautiful and impressive biodata for marriage in Marathi, complete with an image and downloadable PDF format. Start now and make the best impression!",
                  color: AppColor.grey,
                  fontSize: ResponsiveUi.isMobile(context) ? 14.sp : 16.sp,
                ),

                SizedBox(height: 14.h),

                buildCommonText(
                  "Discover",
                  fontWeight: FontWeight.bold,
                  color: AppColor.white,
                  fontSize: ResponsiveUi.isMobile(context) ? 14.sp : 16.sp,
                ),

                GestureDetector(
                  onTap: () => Get.toNamed(RoutesName.aboutUsScreen),
                  child: buildCommonText(
                    "About us",
                    color: AppColor.grey,
                    fontSize: ResponsiveUi.isMobile(context) ? 14.sp : 16.sp,
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(RoutesName.faqScreen),
                  child: buildCommonText(
                    "FAQs",
                    color: AppColor.grey,
                    fontSize: ResponsiveUi.isMobile(context) ? 14.sp : 16.sp,
                  ),
                ),

                SizedBox(height: 14.h),

                buildCommonText(
                  "Resources",
                  fontWeight: FontWeight.bold,
                  color: AppColor.white,
                  fontSize: ResponsiveUi.isMobile(context) ? 14.sp : 16.sp,
                ),

                GestureDetector(
                  onTap: () => Get.toNamed(RoutesName.privacyPolicyScreen),
                  child: buildCommonText(
                    "Privacy Policy",
                    color: AppColor.grey,
                    fontSize: ResponsiveUi.isMobile(context) ? 14.sp : 16.sp,
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed(RoutesName.termAndConditionScreen),
                  child: buildCommonText(
                    "Terms & Conditions",
                    color: AppColor.grey,
                    fontSize: ResponsiveUi.isMobile(context) ? 14.sp : 16.sp,
                  ),
                ),

                SizedBox(height: 20.h),

                Divider(color: AppColor.white),

                SizedBox(height: 10.h),

                buildCommonText(
                  "© 2025 ARTMAKER TECHNOLOGIES. All rights reserved.",
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                  color: AppColor.grey,
                  fontSize: ResponsiveUi.isMobile(context) ? 14.sp : 16.sp,
                ),
              ],
            ),
          )
        : Container(
            padding: EdgeInsets.fromLTRB(14.w, 24.h, 14.w, 8.h),
            width: Get.width,
            height: ResponsiveUi.isMobile(context)
                ? 280.h
                : ResponsiveUi.isTablet(context)
                ? 280.h
                : 220.h,
            decoration: BoxDecoration(
              color: AppColor.black.withValues(alpha: 0.9),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 65,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildCommonText(
                            "About Marathi Biodata Maker",
                            fontWeight: FontWeight.bold,
                            fontSize: ResponsiveUi.isMobile(context)
                                ? 14.sp
                                : ResponsiveUi.isMobile(context)
                                ? 14.sp
                                : 16.sp,
                            color: AppColor.white,
                          ),
                          SizedBox(height: 8.h),
                          buildCommonText(
                            "Create and download your perfect marriage biodata in Marathi with ease! Marathi Biodata Maker lets you design a beautiful and impressive biodata for marriage in Marathi, complete with an image and downloadable PDF format. Start now and make the best impression!",
                            color: AppColor.grey,
                            fontSize: ResponsiveUi.isMobile(context)
                                ? 14.sp
                                : 16.sp,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 10.w),

                    Expanded(
                      flex: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildCommonText(
                            "Discover",
                            fontWeight: FontWeight.bold,
                            color: AppColor.white,
                            fontSize: ResponsiveUi.isMobile(context)
                                ? 14.sp
                                : 16.sp,
                          ),
                          SizedBox(height: 8.h),

                          GestureDetector(
                            onTap: () => Get.toNamed(RoutesName.aboutUsScreen),
                            child: buildCommonText(
                              "About us",
                              color: AppColor.grey,
                              fontSize: ResponsiveUi.isMobile(context)
                                  ? 14.sp
                                  : 16.sp,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Get.toNamed(RoutesName.faqScreen),
                            child: buildCommonText(
                              "FAQs",
                              color: AppColor.grey,
                              fontSize: ResponsiveUi.isMobile(context)
                                  ? 14.sp
                                  : 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(width: 10.w),

                    Expanded(
                      flex: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildCommonText(
                            "Resources",
                            fontWeight: FontWeight.bold,
                            color: AppColor.white,
                            fontSize: ResponsiveUi.isMobile(context)
                                ? 14.sp
                                : 16.sp,
                          ),
                          SizedBox(height: 8.h),

                          GestureDetector(
                            onTap: () =>
                                Get.toNamed(RoutesName.privacyPolicyScreen),
                            child: buildCommonText(
                              "Privacy Policy",
                              color: AppColor.grey,
                              fontSize: ResponsiveUi.isMobile(context)
                                  ? 14.sp
                                  : 16.sp,
                            ),
                          ),
                          GestureDetector(
                            onTap: () =>
                                Get.toNamed(RoutesName.termAndConditionScreen),
                            child: buildCommonText(
                              "Terms & Conditions",
                              color: AppColor.grey,
                              fontSize: ResponsiveUi.isMobile(context)
                                  ? 14.sp
                                  : 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.h),

                Divider(color: AppColor.white),

                SizedBox(height: 10.h),

                buildCommonText(
                  "© 2025 ARTMAKER TECHNOLOGIES. All rights reserved.",
                  fontWeight: FontWeight.bold,
                  color: AppColor.grey,
                  fontSize: ResponsiveUi.isMobile(context) ? 14.sp : 16.sp,
                ),
              ],
            ),
          );
  }
}

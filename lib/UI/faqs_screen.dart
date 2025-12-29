import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Controller/fqa_controller.dart';
import '../Responsive UI/responsive_ui.dart';
import '../Routes/routes_name.dart';
import '../Utility/app_color.dart';
import '../Utility/assets_image.dart';
import '../Utility/common_code.dart';
import '../Widget/bottom_container_widget.dart';
import '../Widget/general_safe_area.dart';

class FaqsScreen extends StatelessWidget {
  FaqsScreen({super.key});

  final faqController = Get.put(FqaController());

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
                "Frequently Asked Questions",
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
                      "Our support team answers the following questions nearly every week.",
                      fontSize: 16.sp,
                      textAlign: TextAlign.center,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h),

              buildCommonText(
                "Here are our answers to some of the most common ones",
                color: Colors.black54,
              ),

              SizedBox(height: 20.h),

              Container(
                width: ResponsiveUi.isMobile(context)
                    ? (Get.width / 1.2).w
                    : (Get.width / 1.8).w,

                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    topRight: Radius.circular(10.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFirstContainer(),

                    _buildSecondContainer(),

                    _buildThirdContainer(),

                    _buildFourthContainer(),

                    _buildFifthContainer(),

                    _buildSixContainer(),

                    _buildSeventhContainer(),

                    _buildEighthContainer(),

                    _buildNinethContainer(),
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

  Widget _buildFirstContainer() {
    return Obx(() {
      final firstClick = faqController.firstDropdownClick.value;
      return Column(
        children: [
          GestureDetector(
            onTap: faqController.firstClick,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: firstClick
                    ? AppColor.primaryColor.withValues(alpha: 0.4)
                    : AppColor.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.r),
                  topRight: Radius.circular(10.r),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: buildCommonText(
                      "Do you store a copy of my biodata file?",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(width: 4.w),

                  Icon(
                    firstClick
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),

          // if (!firstClick) Divider(color: AppColor.black),
          if (firstClick) ...[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
              child: buildCommonText(
                "Absolutely not, we do not store, copy, or analyze any biodata files you create. Your biodata is completely private and belongs solely to you.",

                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ],
      );
    });
  }

  Widget _buildSecondContainer() {
    return Obx(() {
      final secondClick = faqController.secondDropdownClick.value;
      return Column(
        children: [
          GestureDetector(
            onTap: faqController.secondClick,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: secondClick
                        ? AppColor.primaryColor.withValues(alpha: 0.4)
                        : AppColor.black,
                  ),
                ),
                color: secondClick
                    ? AppColor.primaryColor.withValues(alpha: 0.4)
                    : AppColor.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: buildCommonText(
                      "What are your system required?",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(width: 4.w),

                  Icon(
                    secondClick
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),

          if (secondClick)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
              child: buildCommonText(
                fontWeight: FontWeight.w500,
                "We've developed Marathi Biodata Maker to be user-friendly, but if you need help, our support team is ready to assist you. Whether you have questions, suggestions, or technical issues, reach out to us via email, and we'll respond within 24-48 hours.",
              ),
            ),
        ],
      );
    });
  }

  Widget _buildThirdContainer() {
    return Obx(() {
      final thirdClick = faqController.thirdDropdownClick.value;
      return Column(
        children: [
          GestureDetector(
            onTap: faqController.thirdClick,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: thirdClick
                        ? AppColor.primaryColor.withValues(alpha: 0.4)
                        : AppColor.black,
                  ),
                ),
                color: thirdClick
                    ? AppColor.primaryColor.withValues(alpha: 0.4)
                    : AppColor.white,
                // border:Border(
                //   top:
                // ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: buildCommonText(
                      "I need help. How can I reach you?",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  SizedBox(width: 4.w),

                  Icon(
                    thirdClick
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),

          if (thirdClick) ...[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: buildCommonText(
                fontWeight: FontWeight.w500,
                "No design skills are required! Just fill in your details, pick a template, and voilà – your beautiful marriage biodata will be ready to download in PDF format. It's that simple!",
              ),
            ),
          ],
        ],
      );
    });
  }

  Widget _buildFourthContainer() {
    return Obx(() {
      final fourthClick = faqController.fourthDropdownClick.value;
      return Column(
        children: [
          GestureDetector(
            onTap: faqController.fourthClick,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: fourthClick
                        ? AppColor.primaryColor.withValues(alpha: 0.4)
                        : AppColor.black,
                  ),
                ),
                color: fourthClick
                    ? AppColor.primaryColor.withValues(alpha: 0.4)
                    : AppColor.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: buildCommonText(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      "Do I need design skills to createa stunning marriage biodata?",
                    ),
                  ),

                  SizedBox(width: 4.w),

                  Icon(
                    fourthClick
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),

          if (fourthClick)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: buildCommonText(
                fontWeight: FontWeight.w500,
                "No design skills are required! Just fill in your details, pick a template, and voilà – your beautiful marriage biodata will be ready to download in PDF format. It's that simple!",
              ),
            ),
        ],
      );
    });
  }

  Widget _buildFifthContainer() {
    return Obx(() {
      final fifthClick = faqController.fifthDropdownClick.value;
      return Column(
        children: [
          GestureDetector(
            onTap: faqController.fifthClick,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: fifthClick
                        ? AppColor.primaryColor.withValues(alpha: 0.4)
                        : AppColor.black,
                  ),
                ),
                color: fifthClick
                    ? AppColor.primaryColor.withValues(alpha: 0.4)
                    : AppColor.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: buildCommonText(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      "Can I include a profile photo in my biodata?",
                    ),
                  ),

                  SizedBox(width: 4.w),

                  Icon(
                    fifthClick
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),

          if (fifthClick)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: buildCommonText(
                fontWeight: FontWeight.w500,
                "Absolutely! You can feature your profile photo right on the first page of your biodata. Just keep in mind that currently, you can upload only one photo. Make it count!",
              ),
            ),
        ],
      );
    });
  }

  Widget _buildSixContainer() {
    return Obx(() {
      final sixClick = faqController.sixDropdownClick.value;
      return Column(
        children: [
          GestureDetector(
            onTap: faqController.sixthClick,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: sixClick
                        ? AppColor.primaryColor.withValues(alpha: 0.4)
                        : AppColor.black,
                  ),
                ),
                color: sixClick
                    ? AppColor.primaryColor.withValues(alpha: 0.4)
                    : AppColor.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: buildCommonText(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      "Do I need to sign up or register to create a biodata?",
                    ),
                  ),

                  SizedBox(width: 4.w),

                  Icon(
                    sixClick
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),

          if (sixClick)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: buildCommonText(
                fontWeight: FontWeight.w500,
                "No sign-up or registration is necessary! Just enter your details, choose your template, and your personalized marriage biodata will be ready for download - no hassle, no extra steps!",
              ),
            ),
        ],
      );
    });
  }

  Widget _buildSeventhContainer() {
    return Obx(() {
      final seventhClick = faqController.seventhDropdownClick.value;
      return Column(
        children: [
          GestureDetector(
            onTap: faqController.seventhClick,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: seventhClick
                        ? AppColor.primaryColor.withValues(alpha: 0.4)
                        : AppColor.black,
                  ),
                ),
                color: seventhClick
                    ? AppColor.primaryColor.withValues(alpha: 0.4)
                    : AppColor.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: buildCommonText(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      "Can I add custom fields or modify existing data in my marriage biodata?",
                    ),
                  ),

                  SizedBox(width: 4.w),

                  Icon(
                    seventhClick
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),

          if (seventhClick)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: buildCommonText(
                fontWeight: FontWeight.w500,
                "Yes, you can! With our Marathi Biodata Maker, you have the flexibility to add, remove, or modify any fields to suit your needs. Tailor your biodata to reflect your unique story - it's all in your hands!",
              ),
            ),
        ],
      );
    });
  }

  Widget _buildEighthContainer() {
    return Obx(() {
      final eighthClick = faqController.eighthDropdownClick.value;
      return Column(
        children: [
          GestureDetector(
            onTap: faqController.eighthClick,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: eighthClick
                        ? AppColor.primaryColor.withValues(alpha: 0.4)
                        : AppColor.black,
                  ),
                ),
                color: eighthClick
                    ? AppColor.primaryColor.withValues(alpha: 0.4)
                    : AppColor.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: buildCommonText(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      "I couldn't download my biodata due to technical issues or internet problems.How can I get back?",
                    ),
                  ),

                  SizedBox(width: 4.w),

                  Icon(
                    eighthClick
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),

          if (eighthClick)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: buildCommonText(
                fontWeight: FontWeight.w500,
                "Don't worry! We've got you covered. If you encounter any issues, just fill out the form on our Contact Us page to get in touch with our support team. You’ll be able to download the biodata you've already paid for - as long as it's within 48 hours of your payment.",
              ),
            ),
        ],
      );
    });
  }

  Widget _buildNinethContainer() {
    return Obx(() {
      final ninethClick = faqController.ninethDropdownClick.value;
      return Column(
        children: [
          GestureDetector(
            onTap: faqController.ninethClick,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: ninethClick
                        ? AppColor.primaryColor.withValues(alpha: 0.4)
                        : AppColor.black,
                  ),
                ),
                color: ninethClick
                    ? AppColor.primaryColor.withValues(alpha: 0.4)
                    : AppColor.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: buildCommonText(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      "How do I create a Marathi biodata?",
                    ),
                  ),

                  SizedBox(width: 4.w),

                  Icon(
                    ninethClick
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                ],
              ),
            ),
          ),

          if (ninethClick)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: buildCommonText(
                fontWeight: FontWeight.w500,
                "Creating your Marathi marriage biodata is super easy! Simply use our online tool - choose a template, fill in your details, customize it to your liking, and then download or share your completed biodata. Fast, simple, and hassle-free!",
              ),
            ),
        ],
      );
    });
  }
}

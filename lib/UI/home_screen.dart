import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Responsive UI/responsive_ui.dart';
import '../Routes/routes_name.dart';
import '../Utility/app_color.dart';
import '../Utility/assets_image.dart';
import '../Utility/common_code.dart';
import '../Widget/bottom_container_widget.dart';
import '../Widget/general_safe_area.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          elevation: 12,
          title: Text(
            'Marathi Biodata Maker',
            style: TextStyle(
              fontSize: ResponsiveUi.isMobile(context) ? 16.sp : 20.sp,
              color: AppColor.black,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.toNamed(RoutesName.contactScreen);
              },
              child: Text("Contact Us"),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),

              buildCommonText(
                'Welcome to Marathi Biodata Maker',
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
                fontSize: 32.sp,
              ),

              SizedBox(height: 20.h),

              Padding(
                padding: EdgeInsets.all(16.sp),
                child: buildCommonText(
                  'Create and download a beautiful and impressive biodata for marriage in Marathi within minutes.',
                  textAlign: TextAlign.center,
                  fontSize: 24.sp,
                ),
              ),

              buildCommonText(
                "Customize, download, and print—it's quick, easy, and classy.",
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 12.h),

              //BTN WIdget
              _buildRowBtnWidget(),

              SizedBox(height: 20.h),

              SizedBox(
                width: (Get.width / 1.2).w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildCommonText(
                      "Marriage Biodata Format in Marathi",
                      fontSize: 32.sp,
                      color: AppColor.black,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 8.h),
                    buildCommonText(
                      "Easily create and download biodata for marriage in Marathi using Marathi Biodata Maker. Instantly get marriage biodata format in Marathi in image & PDF format!",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),
                    SizedBox(height: 8.h),

                    buildCommonText(
                      "Marriage Biodata Format in Marathi is a collection of information about a boy or girl given in the Marathi language while searching for a suitable life partner.",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),
                    SizedBox(height: 8.h),

                    buildCommonText(
                      "In simple words, for marriage, the information of a boy or girl is arranged in a very nice way in a specific format; we call it Marriage Biodata Format in Marathi.",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "Biodata format for marriage in Marathi is pdf, image, and word file which contains information about a boy or girl.",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "In our Maharashtrian culture, when a boy and a girl are of marriageable age, they want to find a suitable partner. Their acquaintance sends their information to each other to find the right partner.",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "Suppose marriage biodata is to send in digital form. In that case, it is in the image, pdf, or word file format, and if it is to give physically, then it is in hard copy, i.e., printed PDF.",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),

                    SizedBox(height: 12.h),

                    buildCommonText(
                      "Why is it necessary to prepare biodata for marriage in Marathi?",
                      fontSize: 32.sp,
                      color: AppColor.black,
                      fontWeight: FontWeight.bold,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "To find the perfect life partner, you should know everything about the person who will be with you for the rest of your life.",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "So relatives from both sides share girl or boy details while meeting. These details send to each other online, i.e., through email, WhatsApp, or other social media apps.",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "If the marriage biodata is to be sent online, then it is sent in digital format, i.e., image and PDF format, and if it is to be sent physically, then it is sent in hard copy, i.e., PDF printout.",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "The main reason for making a marriage biodata in Marathi is that two people who live with each other throughout their lives understand the complete information about each other from the biodata.",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),

                    SizedBox(height: 12.h),

                    buildCommonText(
                      "What information does the Marathi Biodata format contain?",
                      fontSize: 32.sp,
                      color: AppColor.black,
                      fontWeight: FontWeight.bold,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "As mentioned above, if a boy or girl wants to find a suitable partner, they must send their information to each other. Then, you may wonder what information includes in a biodata.",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),
                    SizedBox(height: 8.h),

                    buildCommonText(
                      "The biodata format in Marathi contains the personal, family, and contact information of the boy (male, groom) or girl (female, bride). In Marathi Biodata format, information is written separately in three points.",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "1.Personal Information (वैयक्तिक माहिती)",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),
                    SizedBox(height: 8.h),

                    buildCommonText(
                      "2.Family Information (कौटुंबिक माहिती)",
                      color: Colors.black54,
                      fontSize: 16.sp,
                    ),
                    SizedBox(height: 8.h),

                    buildCommonText(
                      "3.Contact Information (संपर्क माहिती)",
                      color: Colors.black54,
                      fontSize: 16.sp,
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

  Widget _buildRowBtnWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.toNamed(RoutesName.createBiodataScreen);
            },
            child: const Text('Create Biodata'),
          ),
          SizedBox(width: 16.w),
          OutlinedButton(
            onPressed: () => Get.toNamed(RoutesName.sampleScreen),
            child: const Text('View Samples'),
          ),
        ],
      ),
    );
  }
}

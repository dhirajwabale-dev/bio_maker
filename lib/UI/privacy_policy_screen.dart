import 'package:bio_maker_app/Routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Responsive UI/responsive_ui.dart';
import '../Utility/app_color.dart';
import '../Utility/assets_image.dart';
import '../Utility/common_code.dart';
import '../Widget/bottom_container_widget.dart';
import '../Widget/general_safe_area.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

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
                "Privacy Policy",
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
                      "Our main priority is the protecting privacy of our visitors. Your Privacy, Our Priority",
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
                      "ARTMAKER TECHNOLOGIES, a proprietorship firm, has developed marathibiodatamaker.com as a commercial application. This service is provided by marathibiodatamaker.com and is intended for use as is.",
                      color: Colors.black54,
                    ),
                    SizedBox(height: 8.h),
                    buildCommonText(
                      "This page is intended to inform visitors about our policies regarding the collection, use, and disclosure of personal information for those who choose to use our service.",
                      color: Colors.black54,
                    ),
                    SizedBox(height: 8.h),

                    buildCommonText(
                      "We respect and are committed towards protecting your privacy. Publishing, selling or renting any personal data or information to any third party, without your consent, is against our ethics.",
                      color: Colors.black54,
                    ),
                    SizedBox(height: 8.h),

                    buildCommonText(
                      "The privacy practices of this statement apply to our services available under the domain and subdomains of the Site. By visiting this Site you agree to be bound by the terms and conditions of this privacy policy. If you do not agree, please do not use or access our site.",
                      color: Colors.black54,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "This privacy policy does not apply to sites maintained by other companies or organizations to which we link and we are not responsible for any personal information you submit to third parties via our website. Please ensure that you read the privacy policy of such other companies or organizations before submitting your details.",
                      color: Colors.black54,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "This privacy policy describes the information, as part of the normal operation of our services, we collect from you and what may happen to that information. This policy is inter alia formulated and displayed, to inform you about our information collection/retention policies and practices so that you can make an informed decision, in relation to the sharing of your personal information with us. By accepting the privacy policy and the user agreement or the use of the site in general, you give your consent to our use and disclosure of your personal information in accordance with this privacy policy. This Privacy Policy is incorporated into and subject to the terms of the User Agreement. This privacy policy is effective upon acceptance of access by you to the site.",
                      color: Colors.black54,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText("Privacy Guarantee", color: AppColor.black),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "We agree that we will not sell or rent your personal information to third parties for their marketing purposes without your explicit consent. From time to time, we may reveal general statistical information about our Site and visitors, such as number of visitors, number and type of goods and services purchased, etc. Only those of our employees who need access to your information in order to perform their duties, are allowed such access. Any employee who violates our privacy and/or security policies is subjected to disciplinary action, including possible termination and civil and/or criminal prosecution.",
                      color: Colors.black54,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "Information We Collect",
                      color: AppColor.black,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "In furtherance of the confidentiality with which we treat Personal Information, we have put in place appropriate physical, electronic, and managerial procedures to safeguard and secure the information we collect online. We use data collection devices such as cookies on certain pages of the Site to help and analyze our web page flow, measure promotional effectiveness, and promote trust and safety. Cookies are small files placed on your hard drive that assist us in providing our services. We offer certain features that are only available through the use of a cookie. Cookies can also help us provide information that is targeted to your interests. Most cookies are session cookies, which means that they are automatically deleted from your hard drive at the end of a session. You are always free to decline our cookies if your browser permits. Additionally, you may encounter cookies  or other similar devices on certain pages of the Site that are placed by third parties. For example, if you view a web page created by a user, there may be a cookie placed within that web page. We do not control the use of cookies by third parties.",
                      color: Colors.black54,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "Changes to This Privacy Policy",
                      color: AppColor.black,
                    ),

                    SizedBox(height: 8.h),

                    buildCommonText(
                      "We may update our Privacy Policy from time to time. Therefore, we encourage you to review this page periodically for any changes. Any updates will be posted here, and we will notify you by publishing the revised Privacy Policy on this page.",
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

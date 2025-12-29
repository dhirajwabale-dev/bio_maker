import 'package:bio_maker_app/Utility/common_code.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/contact_controller.dart';
import '../Responsive UI/responsive_ui.dart';
import '../Routes/routes_name.dart';
import '../Utility/app_color.dart';
import '../Utility/assets_image.dart';
import '../Widget/bottom_container_widget.dart';
import '../Widget/general_safe_area.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});

  final controller = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GeneralSafeArea(
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
            ],
          ),

          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.h),

                buildCommonText(
                  "Contact Us",
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
                        "Contact us and clarify any doubts you have about marathibiodatamaker.com or report a problem.",
                        fontSize: 16.sp,
                        textAlign: TextAlign.center,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.h),

                buildCommonText(
                  "Our team loves to help!",
                  color: Colors.black54,
                ),

                SizedBox(
                  width: (Get.width / 1.2).w,
                  child: Column(
                    children: [
                      //Email TextField
                      _buildEmailTextField(),

                      //mobile TextField
                      _buildMobileTextField(),

                      //Message Textfield
                      _buildMsgTextField(),

                      SizedBox(height: 20.h),

                      OutlinedButton.icon(
                        onPressed: () {},
                        label: Text("Send Message"),
                        icon: Icon(Icons.send_sharp),
                      ),

                      SizedBox(height: 30.h),

                      SizedBox(
                        width: 400.h,
                        child: buildCommonText(
                          "Marathi Biodata Maker | Owned by \nARTMAKER TECHNOLOGIES",
                          fontSize: 24.sp,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 20.h),

                      buildCommonText("📧 Email", fontWeight: FontWeight.bold),

                      TextButton(
                        onPressed: () => controller.launchEmail(
                          toEmail: "wdhiraj287@gmail.com",
                        ),
                        child: Text(
                          "wdhiraj287@gmail.com",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: AppColor.primaryColor,
                          ),
                        ),
                      ),

                      SizedBox(height: 20.h),

                      buildCommonText(
                        "📞 Mobile Number",
                        fontWeight: FontWeight.bold,
                      ),

                      TextButton(
                        onPressed: () => controller.launchCall("9922856963"),
                        child: Text(
                          "9922856963",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: AppColor.primaryColor,
                          ),
                        ),
                      ),

                      SizedBox(height: 20.h),

                      buildCommonText(
                        "📍 Address",
                        fontWeight: FontWeight.bold,
                      ),

                      SizedBox(height: 8.h),

                      buildCommonText(
                        "At/post-Madhewadgaon, Tal-Shrigonda, Dist-Ahilyanagar,pin-413726",
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 20.h),
                    ],
                  ),
                ),

                BottomContainerWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return Form(
      key: controller.emailFormKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),

          buildCommonText("Your Email Address", fontWeight: FontWeight.w700),

          SizedBox(
            width: 400.w,
            child: TextFormField(
              controller: controller.emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(),
                hintText: "Enter your Email address",
              ),

              validator: (value) => controller.emailValidation(value),

              onChanged: (value) {
                controller.emailFormKey.currentState?.validate();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileTextField() {
    return Form(
      key: controller.mobileFormKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),

          buildCommonText("Your Mobile Number", fontWeight: FontWeight.w700),

          SizedBox(
            width: 400.w,
            child: TextFormField(
              controller: controller.mobileController,
              keyboardType: TextInputType.phone,
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(),
                hintText: "Enter your mobile number",
              ),

              validator: (value) => controller.mobileValidation(value),

              onChanged: (value) {
                controller.mobileFormKey.currentState?.validate();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMsgTextField() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),

        buildCommonText("Message", fontWeight: FontWeight.w700),

        SizedBox(
          width: 400.w,
          child: TextFormField(
            controller: controller.msgController,
            keyboardType: TextInputType.emailAddress,
            maxLines: 3,
            decoration: InputDecoration(
              isDense: true,
              border: OutlineInputBorder(),
              hintText: "Enter your message",
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/biodata_create_controller.dart';
import '../Responsive UI/responsive_ui.dart';
import '../Utility/app_color.dart';
import '../Utility/assets_image.dart';
import '../Utility/common_code.dart';
import '../Widget/common_button_widget.dart';
import '../Widget/common_dropdown_widget.dart';
import '../Widget/common_text_field_widget.dart';
import '../Widget/content_widget.dart';
import '../Widget/general_safe_area.dart';
import '../Widget/image_of_god_widget.dart';
import '../Widget/progress_indicator_widget.dart';

class CreateBiodataScreen extends StatelessWidget {
  CreateBiodataScreen({super.key});

  final controller = Get.put(BiodataCreateController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
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
          ),

          body: Obx(() {
            final langFlag = controller.langSelectionflag.value;

            return Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 12.h),

                      ContentWidget(),

                      //Language BTN
                      _buildRowButton(langFlag),

                      //Image Of God
                      ImageOfGodWidget(flag: langFlag),

                      //Full Name
                      _buildRowWidget(
                        context,
                        controller: controller.fullNameController,
                        firstName: langFlag == 0 ? "नाव : " : "Full Name : ",
                        hintText: langFlag == 0
                            ? 'पूर्ण नाव लिहा'
                            : "Enter Full Name",
                      ),

                      //Birth Date
                      _buildDateRow(context, langFlag),

                      //Bith Time
                      _buildRowWidget(
                        context,
                        controller: controller.birthTimeController,
                        firstName: langFlag == 0
                            ? "जन्म वेळ : "
                            : "Birth Time : ",
                        hintText: langFlag == 0
                            ? 'जन्म वेळ लिहा'
                            : "Enter Birth Time",
                      ),

                      //Caste
                      _buildRowWidget(
                        context,
                        controller: controller.casteController,
                        firstName: langFlag == 0 ? "जात : " : "Caste : ",
                        hintText: langFlag == 0
                            ? 'हिंदू - मराठा, मुस्लिम - शिया etc.'
                            : "Enter Caste e.g. Hindu - Maratha, Muslim - Shia etc.",
                      ),

                      //Devak
                      _buildRowWidget(
                        context,
                        controller: controller.devakController,
                        firstName: langFlag == 0 ? "देवक : " : "Devak : ",
                        hintText: langFlag == 0 ? 'देवक' : "Enter Devak",
                      ),

                      //Birth Place
                      _buildRowWidget(
                        context,
                        controller: controller.birthPlaceController,
                        firstName: langFlag == 0
                            ? "जन्म स्थळ : "
                            : "Birth Place : ",
                        hintText: langFlag == 0
                            ? 'जन्म स्थळ'
                            : "Enter Birth Place",
                      ),

                      //Rashi
                      _buildRashiRow(context, langFlag),

                      //Varn
                      _buildWarnRow(context, langFlag),

                      //Education
                      _buildRowWidget(
                        context,
                        controller: controller.educationController,
                        firstName: langFlag == 0 ? "शिक्षण : " : "Education : ",
                        hintText: langFlag == 0 ? 'शिक्षण' : "Enter Education",
                      ),

                      //Nokari
                      _buildRowWidget(
                        context,
                        controller: controller.jobController,
                        firstName: langFlag == 0
                            ? "नोकरी/व्यवसाय : "
                            : "Job : ",
                        hintText: langFlag == 0 ? 'नोकरी/व्यवसाय' : "Enter Job",
                      ),

                      //Nokari
                      _buildRowWidget(
                        context,
                        controller: controller.incomeController,
                        firstName: langFlag == 0
                            ? "वेतन/उत्पन्न : "
                            : "Income : ",
                        hintText: langFlag == 0
                            ? 'वेतन/उत्पन्न'
                            : "Enter Income",
                      ),

                      SizedBox(height: 16.h),

                      //Family Information Header
                      Container(
                        width: ResponsiveUi.isMobile(context)
                            ? (Get.width / 2).w
                            : 400.w,
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
                          langFlag == 0
                              ? "कौटुंबिक माहिती"
                              : "Family Information",
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 6.h),

                      //Father Name
                      _buildRowWidget(
                        context,
                        controller: controller.fatherNameController,
                        firstName: langFlag == 0
                            ? "वडिलांचे नाव : "
                            : "Father's Name : ",
                        hintText: langFlag == 0
                            ? 'वडिलांचे नाव'
                            : "Enter Father's Name",
                      ),

                      //Mother Name
                      _buildRowWidget(
                        context,
                        controller: controller.motherNameController,
                        firstName: langFlag == 0
                            ? "आईचे नाव : "
                            : "Mother's Name : ",
                        hintText: langFlag == 0
                            ? 'आईचे नाव'
                            : "Enter Mother's Name",
                      ),

                      //Sister Name
                      _buildRowWidget(
                        context,
                        controller: controller.sisterNameController,
                        firstName: langFlag == 0
                            ? "बहिणीचे नाव : "
                            : "Sister's Name : ",
                        hintText: langFlag == 0
                            ? 'बहिणीचे नाव'
                            : "Enter Sister's Name",
                      ),

                      //Brother Name
                      _buildRowWidget(
                        context,
                        controller: controller.brotherNameController,
                        firstName: langFlag == 0
                            ? "भाऊचे नाव : "
                            : "Brother's Name : ",
                        hintText: langFlag == 0
                            ? 'भाऊचे नाव'
                            : "Enter Brother's Name",
                      ),

                      //Mama Name
                      _buildRowWidget(
                        context,
                        controller: controller.mamaNameController,
                        firstName: langFlag == 0
                            ? "मामाचे नाव : "
                            : "Mama's Name : ",
                        hintText: langFlag == 0
                            ? 'मामाचे नाव'
                            : "Enter Mama's Name",
                      ),

                      //Nate Name
                      _buildRowWidgetForLongContent(
                        context,
                        maxLine: 2,
                        controller: controller.nateNameController,
                        firstName: langFlag == 0
                            ? "नातेसंबंध नाव : "
                            : "Relatives Name : ",
                        hintText: langFlag == 0
                            ? 'नातेसंबंध'
                            : "Relatives Name",
                      ),

                      //Apeksha Name
                      _buildRowWidget(
                        context,
                        controller: controller.apekshaController,
                        firstName: langFlag == 0 ? "अपेक्षा : " : "Required : ",
                        hintText: langFlag == 0 ? 'अपेक्षा' : "Required",
                      ),

                      SizedBox(height: 16.h),

                      //Family Information Header
                      Container(
                        width: ResponsiveUi.isMobile(context)
                            ? (Get.width / 2).w
                            : 400.w,
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
                          langFlag == 0 ? "संपर्क" : "Contact Information",
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 6.h),

                      //Address Name
                      _buildRowWidgetForLongContent(
                        context,
                        maxLine: 3,
                        controller: controller.addressController,
                        firstName: langFlag == 0 ? "पत्ता : " : "Address : ",
                        hintText: langFlag == 0 ? 'पत्ता' : "Address",
                      ),

                      //Mobile Number
                      _buildRowWidget(
                        context,
                        controller: controller.mobileController,
                        keyboardType: TextInputType.phone,
                        firstName: langFlag == 0
                            ? "मोबाइल नंबर : "
                            : "Mobile Number : ",
                        hintText: langFlag == 0
                            ? 'मोबाइल नंबर'
                            : "Mobile Number",
                      ),

                      SizedBox(height: 20.h),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 12.h,
                        ),
                        child: SizedBox(
                          height: 50.h,
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () => controller.clickONCheckBtn(),

                                  child: Text(
                                    langFlag == 0
                                        ? "परत चेक करा"
                                        : "Preview Biodata",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Loader Widget
                Obx(() {
                  return controller.isLoading.value
                      ? ProgressIndicatorWidget()
                      : Container();
                }),
              ],
            );
          }),
        ),
      ),
    );
  }

  //Row Btn widget
  Widget _buildRowButton(int langFlag) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 10.h),
        buildCommonText(
          langFlag == 0 ? "बायोडाटाची भाषा" : "Langauge Of Bio-Data",
          fontSize: 22.sp,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonButtonWidget(
              backgroundColor: controller.langSelectionflag.value == 0
                  ? AppColor.primaryColor
                  : AppColor.white,
              foregroundColor: controller.langSelectionflag.value == 0
                  ? AppColor.white
                  : AppColor.primaryColor,
              btnName: "मराठी",
              onPressed: controller.isMarathiSelected,
            ),
            SizedBox(width: 20.w),
            CommonButtonWidget(
              backgroundColor: controller.langSelectionflag.value == 1
                  ? AppColor.primaryColor
                  : AppColor.white,
              foregroundColor: controller.langSelectionflag.value == 1
                  ? AppColor.white
                  : AppColor.primaryColor,
              btnName: "English",
              onPressed: controller.isEnglishSelected,
            ),
          ],
        ),
        SizedBox(height: 14.h),
      ],
    );
  }

  Widget _buildRowWidget(
    BuildContext context, {
    required TextEditingController controller,
    required String firstName,
    required String hintText,
    TextInputType? keyboardType,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
      child: ResponsiveUi.isMobile(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                buildCommonText(
                  firstName,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),

                CommonTextFieldWidget(
                  controller: controller,
                  keyboardType: keyboardType,
                  hintText: hintText,
                ),
              ],
            )
          : Row(
              children: [
                Expanded(
                  flex: 20,
                  child: buildCommonText(
                    firstName,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                //SizedBox(width: 8.w),
                Expanded(
                  flex: 80,
                  child: CommonTextFieldWidget(
                    controller: controller,
                    keyboardType: keyboardType,
                    hintText: hintText,
                  ),
                ),
              ],
            ),
    );
  }

  //Bith Date Row
  Widget _buildDateRow(BuildContext context, int langFlag) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
      child: ResponsiveUi.isMobile(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                buildCommonText(
                  langFlag == 0 ? "जन्म तारीख :" : "Birth Date :",
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
                TextFormField(
                  onTap: () => controller.selectDateOfBith(context),
                  readOnly: true,
                  controller: controller.birthDateController,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: langFlag == 0
                        ? 'जन्म तारीख लिहा'
                        : "Enter Birth Date",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    suffixIcon: const Icon(Icons.calendar_month),
                  ),
                ),
              ],
            )
          : Row(
              children: [
                Expanded(
                  flex: 20,
                  child: buildCommonText(
                    langFlag == 0 ? "जन्म तारीख :" : "Birth Date :",
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                //SizedBox(width: 8.w),
                Expanded(
                  flex: 80,
                  child: TextFormField(
                    onTap: () => controller.selectDateOfBith(context),
                    readOnly: true,
                    controller: controller.birthDateController,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: langFlag == 0
                          ? 'जन्म तारीख लिहा'
                          : "Enter Birth Date",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      suffixIcon: const Icon(Icons.calendar_month),
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  //Rashi
  Widget _buildRashiRow(BuildContext context, int langFlag) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
      child: ResponsiveUi.isMobile(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                buildCommonText(
                  langFlag == 0 ? "राशी :" : "Rashi :",
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
                CommonDropdownWidget(
                  items: langFlag == 0
                      ? rashiListInMarathi
                            .map(
                              (rashi) => DropdownMenuItem<String>(
                                value: rashi,
                                child: Text(rashi),
                              ),
                            )
                            .toList()
                      : rashiListInEnglish
                            .map(
                              (rashi) => DropdownMenuItem<String>(
                                value: rashi,
                                child: Text(rashi),
                              ),
                            )
                            .toList(),
                  value: controller.selectedRashi.value.isEmpty
                      ? null
                      : controller.selectedRashi.value,
                  hint: langFlag == 0 ? "राशी निवडा" : "Select Rashi",
                  onChanged: (value) {
                    if (value != null) {
                      controller.selectedRashi.value = value;
                    }
                  },
                ),
              ],
            )
          : Row(
              children: [
                Expanded(
                  flex: 20,
                  child: buildCommonText(
                    langFlag == 0 ? "राशी :" : "Rashi :",
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                //SizedBox(width: 8.w),
                Expanded(
                  flex: 80,
                  child: CommonDropdownWidget(
                    items: langFlag == 0
                        ? rashiListInMarathi
                              .map(
                                (rashi) => DropdownMenuItem<String>(
                                  value: rashi,
                                  child: Text(rashi),
                                ),
                              )
                              .toList()
                        : rashiListInEnglish
                              .map(
                                (rashi) => DropdownMenuItem<String>(
                                  value: rashi,
                                  child: Text(rashi),
                                ),
                              )
                              .toList(),
                    value: controller.selectedRashi.value.isEmpty
                        ? null
                        : controller.selectedRashi.value,
                    hint: langFlag == 0 ? "राशी निवडा" : "Select Rashi",
                    onChanged: (value) {
                      if (value != null) {
                        controller.selectedRashi.value = value;
                      }
                    },
                  ),
                ),
              ],
            ),
    );
  }

  //Warn
  Widget _buildWarnRow(BuildContext context, int langFlag) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
      child: ResponsiveUi.isMobile(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                buildCommonText(
                  langFlag == 0 ? "वर्ण :" : "Complexion :",
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
                CommonDropdownWidget(
                  items: langFlag == 0
                      ? varnListInMarathi
                            .map(
                              (rashi) => DropdownMenuItem<String>(
                                value: rashi,
                                child: Text(rashi),
                              ),
                            )
                            .toList()
                      : varnListInEnglish
                            .map(
                              (rashi) => DropdownMenuItem<String>(
                                value: rashi,
                                child: Text(rashi),
                              ),
                            )
                            .toList(),
                  value: controller.selectedVarn.value.isEmpty
                      ? null
                      : controller.selectedVarn.value,
                  hint: langFlag == 0 ? "वर्ण निवडा" : "Select Complexion",
                  onChanged: (value) {
                    if (value != null) {
                      controller.selectedVarn.value = value;
                    }
                  },
                ),
              ],
            )
          : Row(
              children: [
                Expanded(
                  flex: 20,
                  child: buildCommonText(
                    langFlag == 0 ? "वर्ण :" : "Complexion :",
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                //SizedBox(width: 8.w),
                Expanded(
                  flex: 80,
                  child: CommonDropdownWidget(
                    items: langFlag == 0
                        ? varnListInMarathi
                              .map(
                                (rashi) => DropdownMenuItem<String>(
                                  value: rashi,
                                  child: Text(rashi),
                                ),
                              )
                              .toList()
                        : varnListInEnglish
                              .map(
                                (rashi) => DropdownMenuItem<String>(
                                  value: rashi,
                                  child: Text(rashi),
                                ),
                              )
                              .toList(),
                    value: controller.selectedVarn.value.isEmpty
                        ? null
                        : controller.selectedVarn.value,
                    hint: langFlag == 0 ? "वर्ण निवडा" : "Select Complexion",
                    onChanged: (value) {
                      if (value != null) {
                        controller.selectedVarn.value = value;
                      }
                    },
                  ),
                ),
              ],
            ),
    );
  }

  //Long content row widget
  Widget _buildRowWidgetForLongContent(
    BuildContext context, {
    required TextEditingController controller,
    required String firstName,
    required String hintText,
    required int maxLine,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
      child: ResponsiveUi.isMobile(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                buildCommonText(
                  firstName,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
                TextFormField(
                  controller: controller,
                  maxLines: maxLine,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: hintText,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                ),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 20,
                  child: buildCommonText(
                    firstName,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                //SizedBox(width: 8.w),
                Expanded(
                  flex: 80,
                  child: TextFormField(
                    controller: controller,
                    maxLines: maxLine,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: hintText,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

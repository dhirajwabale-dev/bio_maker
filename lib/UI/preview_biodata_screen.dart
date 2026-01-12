import 'package:bio_maker_app/Utility/common_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Controller/biodata_create_controller.dart';
import '../Responsive UI/responsive_ui.dart';
import '../Utility/app_color.dart';
import '../Utility/assets_image.dart';
import '../Widget/general_safe_area.dart';
import '../Widget/image_of_god_widget.dart';

class PreviewBiodataScreen extends StatelessWidget {
  PreviewBiodataScreen({super.key});

  final controller = Get.find<BiodataCreateController>();

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
        body: Column(
          children: [
            //A4 Page Image with Data
            Expanded(
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetsImage.a4Img),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ResponsiveUi.isMobile(context) ? 12.w : 24.w,
                      vertical: 30.h,
                    ),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          //Image Of God
                          ImageOfGodWidget(
                            flag: controller.langSelectionflag.value,
                          ),

                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "नाव : "
                                : "Full Name : ",
                            controller.fullNameController.text,
                          ),

                          //Date of Birth
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? 'जन्म तारीख लिहा'
                                : "Enter Birth Date",
                            controller.birthDateController.text,
                          ),

                          //Birth Time
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "जन्म वेळ : "
                                : "Birth Time : ",
                            controller.birthTimeController.text,
                          ),

                          //Caste
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "जात : "
                                : "Caste : ",
                            controller.casteController.text,
                          ),

                          //Devak
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "देवक : "
                                : "Devak : ",
                            controller.devakController.text,
                          ),

                          //Place of Birth
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "जन्म स्थळ : "
                                : "Birth Place : ",
                            controller.birthPlaceController.text,
                          ),

                          //Rashi
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "राशी :"
                                : "Rashi :",
                            controller.selectedRashi.value,
                          ),

                          //Varn
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "वर्ण :"
                                : "Complexion :",
                            controller.selectedVarn.value,
                          ),

                          //Education
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "शिक्षण : "
                                : "Education : ",
                            controller.educationController.text,
                          ),

                          //Nokari
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "नोकरी/व्यवसाय : "
                                : "Job : ",
                            controller.jobController.text,
                          ),

                          //Vetan
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "वेतन/उत्पन्न : "
                                : "Income : ",
                            controller.incomeController.text,
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
                              controller.langSelectionflag.value == 0
                                  ? "कौटुंबिक माहिती"
                                  : "Family Information",
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 6.h),

                          //fathers Name
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "वडिलांचे नाव : "
                                : "Father's Name : ",
                            controller.fatherNameController.text,
                          ),

                          //Mother name
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "आईचे नाव : "
                                : "Mother's Name : ",
                            controller.motherNameController.text,
                          ),

                          //Sister
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "बहिण : "
                                : "Sister : ",
                            controller.sisterNameController.text,
                          ),

                          //Briother
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "भाऊ : "
                                : "Brother ",
                            controller.brotherNameController.text,
                          ),

                          //Mama
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "मामाचे नाव : "
                                : "Mama's Name : ",
                            controller.mamaNameController.text,
                          ),

                          //Natesammand
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "नातेसंबंध नाव : "
                                : "Relatives Name : ",
                            controller.nateNameController.text,
                          ),

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
                              controller.langSelectionflag.value == 0
                                  ? "संपर्क"
                                  : "Contact Information",
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          //Address
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "पत्ता : "
                                : "Address : ",
                            controller.addressController.text,
                          ),

                          //mobile No
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "मोबाइल नंबर : "
                                : "Mobile Number : ",
                            controller.mobileController.text,
                          ),

                          //apeksha
                          _buildEnterRowData(
                            controller.langSelectionflag.value == 0
                                ? "अपेक्षा : "
                                : "Required : ",
                            controller.nateNameController.text,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //final Btn
            _buildRowBtn(),
          ],
        ),
      ),
    );
  }

  Widget _buildEnterRowData(String firstName, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 40.w),
        Expanded(
          flex: 25,
          child: buildCommonText(
            firstName,
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
        //SizedBox(width: 8.w),
        Expanded(
          flex: 75,
          child: buildCommonText(
            text,
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
      ],
    );
  }

  Widget _buildRowBtn() {
    return Obx(() {
      final langFlag = controller.langSelectionflag.value;

      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () => Get.back(),
                child: Text(langFlag == 0 ? "दुरुस्त करा" : "Edit BioData"),
              ),
            ),

            SizedBox(width: 10.w),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () => controller.createBiodataImg(langFlag),
                label: Text(
                  langFlag == 0 ? "बायोडाटा तयार करा" : "Create Biodata",
                ),
                icon: const Icon(Icons.download),
              ),
            ),
          ],
        ),
      );
    });
  }
}

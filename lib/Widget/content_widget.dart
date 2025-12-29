import 'package:bio_maker_app/Utility/common_code.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: buildCommonText(
        '''सर्व माहिती भरण्याची गरज नाही. खालीलपैकी जी माहिती अ‍ॅड करायची नसेल किंवा माहीत नसेल, तर ती रिकामी ठेवा किंवा डिलीट करा कारण रिकामी ठेवलेली माहिती बायोडाटा मध्ये दिसणार नाही जेणेकरून बायोडाटा छान बनेल.
    नवीन फील्ड देखील अ‍ॅड करू शकता व शीर्षक सुद्धा बदलता येते.''',
        textAlign: TextAlign.center,
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black54,
      ),
    );
  }
}

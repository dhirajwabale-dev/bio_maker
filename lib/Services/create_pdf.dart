import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';

import '../Controller/biodata_create_controller.dart';
import '../Utility/assets_image.dart';

Future<Uint8List> createBiodataPdf(
  BiodataCreateController controller,
  int langFlag,
) async {
  final pdf = pw.Document();

  //Load Ganapati Image
  final imageData = await rootBundle.load(AssetsImage.godImage);
  final ganapatiImage = pw.MemoryImage(imageData.buffer.asUint8List());

  //Background IMage
  final a4Img = await rootBundle.load(AssetsImage.a4Img);
  final a4Image = pw.MemoryImage(a4Img.buffer.asUint8List());

  //Devnagari text
  final fontData = await rootBundle.load(
    'assets/fonts/NotoSansDevanagari-Regular.ttf',
  );

  final marathiFont = pw.Font.ttf(fontData);

  pdf.addPage(
    pw.Page(
      pageTheme: pw.PageTheme(
        pageFormat: PdfPageFormat.a4,
        margin: pw.EdgeInsets.all(20),
        theme: pw.ThemeData.withFont(base: marathiFont, bold: marathiFont),
        buildBackground: (context) {
          return pw.FullPage(
            ignoreMargins: true,
            child: pw.Image(a4Image, fit: pw.BoxFit.cover),
          );
        },
      ),
      build: (context) {
        return pw.Column(
          children: [
            pw.SizedBox(height: 12),
            //Ganapati Image
            pw.Center(child: pw.Image(ganapatiImage, height: 80)),

            pw.SizedBox(height: 10),

            //Ganapati Text
            pw.Center(child: _buildTextRow(marathiFont, langFlag)),

            pw.Divider(),

            _pdfRow(
              title: langFlag == 0 ? 'नाव' : 'Full Name',
              value: controller.fullNameController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'जन्म तारीख' : 'Birth Date',
              value: controller.birthDateController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'जन्म वेळ' : 'Birth Time',
              value: controller.birthTimeController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'जात' : 'Caste',
              value: controller.casteController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'देवक' : 'Devak',
              value: controller.devakController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'जन्म स्थळ' : 'Birth Place',
              value: controller.birthPlaceController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'राशी' : 'Rashi',

              value: controller.selectedRashi.value,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'वर्ण' : 'Complexion',
              value: controller.selectedVarn.value,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'शिक्षण' : 'Education',
              value: controller.educationController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'नोकरी' : 'Job',
              value: controller.jobController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'वेतन' : 'Income',
              value: controller.incomeController.text,
            ),

            pw.SizedBox(height: 10),
            pw.Text(
              langFlag == 0 ? 'कौटुंबिक माहिती' : 'Family Information',
              style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            ),

            pw.Divider(),

            _pdfRow(
              title: langFlag == 0 ? 'वडील' : 'Father',
              value: controller.fatherNameController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'आई' : 'Mother',
              value: controller.motherNameController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'भाऊ' : 'Brother',
              value: controller.brotherNameController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'बहिण' : 'Sister',
              value: controller.sisterNameController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'मामा' : 'Mama',
              value: controller.mamaNameController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'नाते' : 'Relatives',
              value: controller.nateNameController.text,
            ),

            pw.SizedBox(height: 10),

            pw.Text(
              langFlag == 0 ? 'संपर्क' : 'Contact',
              style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            ),

            pw.Divider(),

            _pdfRow(
              title: langFlag == 0 ? 'पत्ता' : 'Address',
              value: controller.addressController.text,
            ),
            _pdfRow(
              title: langFlag == 0 ? 'मोबाईल' : 'Mobile',
              value: controller.mobileController.text,
            ),
          ],
        );
      },
    ),
  );

  // await Printing.layoutPdf(onLayout: (format) async => pdf.save());

  return pdf.save();
}

pw.Widget _buildTextRow(Font marathiFont, int langFlag) {
  return langFlag == 0
      ? pw.Text(
          "|| श्री गणेशाय नम: ||",
          style: pw.TextStyle(
            font: marathiFont,
            fontSize: 16,
            fontWeight: pw.FontWeight.bold,
          ),
        )
      : pw.Text(
          "|| Shri Ganeshay Namah ||",
          style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold),
        );
}

pw.Widget _pdfRow({required String title, required String value}) {
  return pw.Padding(
    padding: const pw.EdgeInsets.symmetric(vertical: 4),
    child: pw.Table(
      columnWidths: {
        0: const pw.FlexColumnWidth(3),
        1: const pw.FlexColumnWidth(0.5),
        2: const pw.FlexColumnWidth(6.5),
      },
      children: [
        pw.TableRow(
          children: [
            pw.Text(
              title,
              style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            ),
            pw.Text(
              ':',
              style: pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold),
            ),
            pw.Text(value, style: const pw.TextStyle(fontSize: 14)),
          ],
        ),
      ],
    ),
  );
}

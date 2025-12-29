import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Controller/biodata_create_controller.dart';
import '../Utility/app_color.dart';
import '../Utility/assets_image.dart';
import '../Utility/logger.dart';

Future<Uint8List> createBiodataPng(
  BiodataCreateController controller,
  int langFlag, // 0 = Marathi, 1 = English
) async {
  // A4 size at 300 DPI (2480 x 3508 pixels)
  const double width = 2480;
  const double height = 3508;

  // Margins
  const double leftMargin = 200;
  const double rightMargin = 260;
  const double topMargin = 150;

  final recorder = ui.PictureRecorder();
  final canvas = Canvas(recorder, Rect.fromLTWH(0, 0, width, height));
  final paint = Paint();

  // ================= LOAD FONT =================
  final fontLoader = FontLoader('MarathiFont')
    ..addFont(rootBundle.load('assets/fonts/NotoSansDevanagari-Regular.ttf'));
  await fontLoader.load();

  // ================= BACKGROUND =================
  try {
    final bgBytes = await rootBundle.load(AssetsImage.a4Img);
    final bgImage = await decodeImageFromList(bgBytes.buffer.asUint8List());
    canvas.drawImageRect(
      bgImage,
      Rect.fromLTWH(0, 0, bgImage.width.toDouble(), bgImage.height.toDouble()),
      Rect.fromLTWH(0, 0, width, height),
      paint,
    );
  } catch (e) {
    Logger.printData('Background image error: $e');
    // Draw white background if image fails to load
    canvas.drawRect(
      Rect.fromLTWH(0, 0, width, height),
      Paint()..color = Colors.white,
    );
  }

  double y = topMargin;

  // ================= GANAPATI IMAGE =================
  try {
    final ganapatiBytes = await rootBundle.load(AssetsImage.godImage);
    final ganapatiImage = await decodeImageFromList(
      ganapatiBytes.buffer.asUint8List(),
    );
    // Center the image and scale to appropriate size
    final double imageWidth = 400;
    final double imageHeight = 400;
    canvas.drawImageRect(
      ganapatiImage,
      Rect.fromLTWH(
        0,
        0,
        ganapatiImage.width.toDouble(),
        ganapatiImage.height.toDouble(),
      ),
      Rect.fromLTWH((width - imageWidth) / 2, y, imageWidth, imageHeight),
      paint,
    );
    y += imageHeight + 80;
  } catch (e) {
    Logger.printData('Ganapati image error: $e');
    y += 180; // Add space even if image fails
  }

  // ================= TITLE =================
  _drawText(
    canvas,
    text: langFlag == 0 ? '|| श्री गणेशाय नमः ||' : '|| Shri Ganeshay Namah ||',
    x: width / 2,
    y: y,
    fontSize: 52,
    isCenter: true,
    isBold: true,
  );
  y += 100;

  // ================= DIVIDER LINE =================
  final linePaint = Paint()
    ..color = Colors.black
    ..strokeWidth = 2;
  canvas.drawLine(
    Offset(leftMargin, y),
    Offset(width - rightMargin, y),
    linePaint,
  );
  y += 30;

  // ================= PERSONAL INFORMATION HEADER =================
  _drawText(
    canvas,
    text: langFlag == 0 ? 'वैयक्तिक माहिती' : 'Personal Information',
    x: width / 2,
    y: y,
    fontSize: 64,
    isCenter: true,
    isBold: true,
  );
  y += 100;

  // ================= PERSONAL INFORMATION =================
  y = _drawRow(
    canvas,
    'नाव',
    'Full Name',
    controller.fullNameController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'जन्म तारीख',
    'Birth Date',
    controller.birthDateController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'जन्म वेळ',
    'Birth Time',
    controller.birthTimeController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'जात',
    'Caste',
    controller.casteController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'देवक',
    'Devak',
    controller.devakController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'जन्म स्थळ',
    'Birth Place',
    controller.birthPlaceController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'राशी',
    'Rashi',
    controller.selectedRashi.value,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'वर्ण',
    'Complexion',
    controller.selectedVarn.value,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'शिक्षण',
    'Education',
    controller.educationController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'नोकरी',
    'Job',
    controller.jobController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'वेतन',
    'Income',
    controller.incomeController.text,
    y,
    langFlag,
    leftMargin,
  );

  // Space before section header
  y += 40;

  // ================= FAMILY INFORMATION HEADER =================
  _drawText(
    canvas,
    text: langFlag == 0 ? 'कौटुंबिक माहिती' : 'Family Information',
    x: width / 2,
    y: y,
    fontSize: 64,
    isCenter: true,
    isBold: true,
  );
  y += 100;

  // Divider for family section
  canvas.drawLine(
    Offset(leftMargin, y),
    Offset(width - rightMargin, y),
    linePaint,
  );
  y += 30;

  // ================= FAMILY INFORMATION =================
  y = _drawRow(
    canvas,
    'वडील',
    'Father',
    controller.fatherNameController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'आई',
    'Mother',
    controller.motherNameController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'भाऊ',
    'Brother',
    controller.brotherNameController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'बहिण',
    'Sister',
    controller.sisterNameController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'मामा',
    'Mama',
    controller.mamaNameController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'नाते',
    'Relatives',
    controller.nateNameController.text,
    y,
    langFlag,
    leftMargin,
  );

  // Space before section header
  y += 40;

  // ================= CONTACT INFORMATION HEADER =================
  _drawText(
    canvas,
    text: langFlag == 0 ? 'संपर्क' : 'Contact',
    x: width / 2,
    y: y,
    fontSize: 64,
    isCenter: true,
    isBold: true,
  );
  y += 100;

  // Divider for contact section
  canvas.drawLine(
    Offset(leftMargin, y),
    Offset(width - rightMargin, y),
    linePaint,
  );
  y += 30;

  // ================= CONTACT INFORMATION =================
  y = _drawRow(
    canvas,
    'पत्ता',
    'Address',
    controller.addressController.text,
    y,
    langFlag,
    leftMargin,
  );
  y = _drawRow(
    canvas,
    'मोबाईल',
    'Mobile',
    controller.mobileController.text,
    y,
    langFlag,
    leftMargin,
  );

  // ================= FINISH IMAGE =================
  final picture = recorder.endRecording();
  final image = await picture.toImage(width.toInt(), height.toInt());
  final byteData = await image.toByteData(format: ui.ImageByteFormat.png);

  return byteData!.buffer.asUint8List();
}

void _drawText(
  Canvas canvas, {
  required String text,
  required double x,
  required double y,
  double fontSize = 42,
  bool isCenter = false,
  bool isBold = false,
  Color color = Colors.black,
  double maxWidth = double.infinity,
}) {
  final textSpan = TextSpan(
    text: text,
    style: TextStyle(
      fontFamily: 'MarathiFont',
      fontSize: fontSize,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      color: color,
    ),
  );

  final textPainter = TextPainter(
    text: textSpan,
    textDirection: TextDirection.ltr,
    maxLines: 10,
    ellipsis: '...',
  );

  textPainter.layout(maxWidth: maxWidth);

  final offset = isCenter ? Offset(x - textPainter.width / 2, y) : Offset(x, y);

  textPainter.paint(canvas, offset);
}

double _drawRow(
  Canvas canvas,
  String marathiTitle,
  String englishTitle,
  String value,
  double y,
  int langFlag,
  double leftMargin,
) {
  final title = langFlag == 0 ? marathiTitle : englishTitle;
  const double titleX = 200;
  const double colonX = 700;
  const double valueX = 770;
  const double rightMargin = 260;

  final double maxValueWidth = 2480 - valueX - rightMargin;

  // Draw title
  _drawText(canvas, text: title, x: titleX, y: y, fontSize: 52, isBold: true);

  // Draw colon
  _drawText(canvas, text: ':', x: colonX, y: y, fontSize: 52, isBold: true);

  // Draw value with text wrapping
  final valueText = value.isEmpty ? "-" : value;

  final textSpan = TextSpan(
    text: valueText,
    style: TextStyle(
      fontFamily: 'MarathiFont',
      fontSize: 52,
      fontWeight: FontWeight.normal,
      color: AppColor.black,
    ),
  );

  final textPainter = TextPainter(
    text: textSpan,
    textDirection: TextDirection.ltr,
    maxLines: 10,
    ellipsis: '...',
  );

  textPainter.layout(maxWidth: maxValueWidth);
  textPainter.paint(canvas, Offset(valueX, y));

  // Calculate new y position based on value text height
  final lineCount = (textPainter.size.height / (38 * 1.2)).ceil();
  final additionalHeight = (lineCount > 1) ? (lineCount - 1) * 45 : 0;

  return y + 50 + additionalHeight;
}

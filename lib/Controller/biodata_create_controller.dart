import 'dart:developer';
import 'dart:html' as html;
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../Services/bio_image.dart';
import '../Services/create_pdf.dart';
import '../Utility/logger.dart';

class BiodataCreateController extends GetxController {
  final fullNameController = TextEditingController();
  final birthDateController = TextEditingController();
  final birthTimeController = TextEditingController();
  final casteController = TextEditingController();
  final devakController = TextEditingController();
  final birthPlaceController = TextEditingController();
  final educationController = TextEditingController();
  final jobController = TextEditingController();
  final incomeController = TextEditingController();
  final fatherNameController = TextEditingController();
  final motherNameController = TextEditingController();
  final sisterNameController = TextEditingController();
  final brotherNameController = TextEditingController();
  final mamaNameController = TextEditingController();
  final nateNameController = TextEditingController();
  final apekshaController = TextEditingController();
  final addressController = TextEditingController();
  final mobileController = TextEditingController();

  final langSelectionflag = 0.obs;
  final selectedRashi = ''.obs;
  final selectedVarn = ''.obs;

  final isLoading = false.obs;

  //Is Marathi BTN Click
  void isMarathiSelected() {
    langSelectionflag.value = 0;

    clearData();
  }

  //IS English BTN click
  void isEnglishSelected() {
    langSelectionflag.value = 1;

    clearData();
  }

  //Select Date of Birth
  void selectDateOfBith(BuildContext context) async {
    final now = DateTime.now();

    final pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1980),
      lastDate: now,
      initialDate: now,
    );

    if (pickedDate != null) {
      birthDateController.text = DateFormat("dd-MMM-yyyy").format(pickedDate);
    }
  }

  @override
  void dispose() {
    fullNameController.dispose();
    birthDateController.dispose();
    birthTimeController.dispose();
    casteController.dispose();
    devakController.dispose();
    birthPlaceController.dispose();
    educationController.dispose();
    jobController.dispose();
    incomeController.dispose();

    fatherNameController.dispose();
    motherNameController.dispose();
    sisterNameController.dispose();
    brotherNameController.dispose();
    mamaNameController.dispose();
    nateNameController.dispose();
    apekshaController.dispose();
    addressController.dispose();
    mobileController.dispose();

    super.dispose();
  }

  //Download PDF
  Future<void> createAndDownloadPDF(int langFlag) async {
    try {
      isLoading.value = true;

      final pdfBytes = await createBiodataPdf(this, langFlag);

      if (kIsWeb) {
        // WEB: Direct download
        await FilePicker.platform.saveFile(
          dialogTitle: 'Save Biodata',
          fileName: 'Bio-Maker.pdf',
          bytes: pdfBytes,
        );
      } else {
        // MOBILE: Use temp directory
        final tempDir = await path.getTemporaryDirectory();
        final file = File("${tempDir.path}/bio-maker.pdf");
        await file.writeAsBytes(pdfBytes);

        await FilePicker.platform.saveFile(
          dialogTitle: 'Save Biodata',
          fileName: 'Bio-Maker.pdf',
          bytes: await file.readAsBytes(),
        );

        await file.delete();
      }
    } catch (e) {
      log("Something went wrong: $e");
    } finally {
      isLoading.value = false;
    }
  }

  //Create bio data Image
  void createBiodataImg(int langFlag) async {
    try {
      isLoading.value = true;

      final bioImg = await createBiodataPng(this, langFlag);

      if (kIsWeb) {
        _downloadImageWeb(bioImg);
      } else {
        await _saveImage(bioImg);
      }

      Get.snackbar('Success', 'Biodata image saved');
    } catch (e) {
      Logger.printData("⚠️ Error createBiodataImg");
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> _saveImage(Uint8List bytes) async {
    await Permission.storage.request();

    final dir = await getExternalStorageDirectory();
    final path =
        '${dir!.path}/biodata_${DateTime.now().millisecondsSinceEpoch}.png';

    final file = File(path);
    await file.writeAsBytes(bytes);

    Logger.printData("✅ Image saved at $path");
  }

  Future<void> _downloadImageWeb(Uint8List bytes) async {
    final blob = html.Blob([bytes], 'image/png');

    final url = html.Url.createObjectUrlFromBlob(blob);

    html.AnchorElement(href: url)
      ..setAttribute(
        'download',
        'biodata_${DateTime.now().millisecondsSinceEpoch}.png',
      )
      ..click();

    html.Url.revokeObjectUrl(url);
  }

  //Clear Data
  void clearData() {
    selectedRashi.value = '';
    selectedVarn.value = '';

    fullNameController.clear();
    birthDateController.clear();
    birthTimeController.clear();
    casteController.clear();
    devakController.clear();
    birthPlaceController.clear();
    educationController.clear();
    jobController.clear();
    incomeController.clear();
    fatherNameController.clear();
    motherNameController.clear();
    sisterNameController.clear();
    brotherNameController.clear();
    mamaNameController.clear();
    nateNameController.clear();
    apekshaController.clear();
    addressController.clear();
    mobileController.clear();
  }
}

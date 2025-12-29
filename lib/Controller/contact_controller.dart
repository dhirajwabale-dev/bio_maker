import 'package:bio_maker_app/Validation/mixin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class ContactController extends GetxController with CommonValidation {
  final emailFormKey = GlobalKey<FormState>();
  final mobileFormKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final msgController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    mobileController.dispose();
    msgController.dispose();

    super.dispose();
  }

  void launchEmail({String toEmail = ''}) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: toEmail,
      query: encodeQueryParameters(<String, String>{
        'subject': 'Example Subject & Symbols are allowed!',
      }),
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch email app';
    }
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map(
          (MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
        )
        .join('&');
  }

  //Create Call
  void launchCall(String mobile) async {
    if (kIsWeb) return;

    final Uri callUri = Uri(scheme: 'tel', path: mobile);

    if (await canLaunchUrl(callUri)) {
      await launchUrl(callUri);
    } else {
      throw 'Could not launch email app';
    }
  }
}

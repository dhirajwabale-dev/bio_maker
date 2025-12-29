import 'package:bio_maker_app/UI/about_us_screen.dart';
import 'package:bio_maker_app/UI/contact_screen.dart';
import 'package:bio_maker_app/UI/create_biodata_screen.dart';
import 'package:bio_maker_app/UI/faqs_screen.dart';
import 'package:bio_maker_app/UI/home_screen.dart';
import 'package:bio_maker_app/UI/sample_screen.dart';
import 'package:get/get.dart';

import '../UI/privacy_policy_screen.dart';
import '../UI/splash_screen.dart';
import '../UI/term_and_condition_screen.dart';
import 'routes_name.dart';

class RouteGenerator {
  static List<GetPage> getRoutes() => [
    //---------------------Splash Screen Route---------------------//
    GetPage(
      name: RoutesName.splashScreen,
      page: () => const SplashScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------Home Screen Route---------------------//
    GetPage(
      name: RoutesName.homeScreen,
      page: () => const HomeScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------Create Biodata Screen Route---------------------//
    GetPage(
      name: RoutesName.createBiodataScreen,
      page: () => CreateBiodataScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------Contact US Screen Route---------------------//
    GetPage(
      name: RoutesName.contactScreen,
      page: () => ContactScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------About US Screen Route---------------------//
    GetPage(
      name: RoutesName.aboutUsScreen,
      page: () => AboutUsScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------FAQS Screen Route---------------------//
    GetPage(
      name: RoutesName.faqScreen,
      page: () => FaqsScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------Privacy Policy Screen Route---------------------//
    GetPage(
      name: RoutesName.privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------FAQS Screen Route---------------------//
    GetPage(
      name: RoutesName.termAndConditionScreen,
      page: () => TermAndConditionScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------Sample Bio Screen Route---------------------//
    GetPage(
      name: RoutesName.sampleScreen,
      page: () => SampleScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 1),
    ),
  ];
}

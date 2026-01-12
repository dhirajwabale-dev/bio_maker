import 'package:get/get.dart';

import '../UI/about_us_screen.dart';
import '../UI/contact_screen.dart';
import '../UI/create_biodata_screen.dart';
import '../UI/faqs_screen.dart';
import '../UI/home_screen.dart';
import '../UI/preview_biodata_screen.dart';
import '../UI/privacy_policy_screen.dart';
import '../UI/sample_biodata_screen.dart';
import '../UI/splash_screen.dart';
import '../UI/term_and_condition_screen.dart';
import 'routes_name.dart';

class RouteGenerator {
  static List<GetPage> getRoutes() => [
    //---------------------Splash Screen Route---------------------//
    GetPage(
      name: RoutesName.splashScreen,
      page: () => const SplashScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------Home Screen Route---------------------//
    GetPage(
      name: RoutesName.homeScreen,
      page: () => const HomeScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------Create Biodata Screen Route---------------------//
    GetPage(
      name: RoutesName.createBiodataScreen,
      page: () => CreateBiodataScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------Contact US Screen Route---------------------//
    GetPage(
      name: RoutesName.contactScreen,
      page: () => ContactScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------About US Screen Route---------------------//
    GetPage(
      name: RoutesName.aboutUsScreen,
      page: () => AboutUsScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------FAQS Screen Route---------------------//
    GetPage(
      name: RoutesName.faqScreen,
      page: () => FaqsScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------Privacy Policy Screen Route---------------------//
    GetPage(
      name: RoutesName.privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------FAQS Screen Route---------------------//
    GetPage(
      name: RoutesName.termAndConditionScreen,
      page: () => TermAndConditionScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------Sample Bio Screen Route---------------------//
    GetPage(
      name: RoutesName.sampleScreen,
      page: () => SampleScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 1),
    ),

    //---------------------Preview Bio Screen Route---------------------//
    GetPage(
      name: RoutesName.previewScreen,
      page: () => PreviewBiodataScreen(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 1),
    ),
  ];
}

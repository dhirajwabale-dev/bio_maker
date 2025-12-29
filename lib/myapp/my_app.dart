import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Routes/route_generator.dart';
import '../Routes/routes_name.dart';
import 'theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Bio Maker App',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.commonThemeData,
          getPages: RouteGenerator.getRoutes(),
          initialRoute: RoutesName.splashScreen,
        );
      },
    );
  }
}

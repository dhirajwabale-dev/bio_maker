import 'package:flutter/material.dart';

import '../Utility/app_color.dart';

class GeneralSafeArea extends StatelessWidget {
  const GeneralSafeArea({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColor.grey,
            AppColor.grey.withValues(alpha: 0.8),
            AppColor.grey.withValues(alpha: 0.8),
            AppColor.grey.withValues(alpha: 0.6),
            AppColor.grey.withValues(alpha: 0.4),
            AppColor.grey.withValues(alpha: 0.2),
            AppColor.grey.withValues(alpha: 0.2),
          ],
        ),
      ),
      child: SafeArea(child: child),
    );
  }
}

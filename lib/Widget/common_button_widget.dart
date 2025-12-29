import 'package:flutter/material.dart';

import '../Utility/app_color.dart';

class CommonButtonWidget extends StatelessWidget {
  const CommonButtonWidget({
    super.key,
    required this.onPressed,
    required this.btnName,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  final Function() onPressed;
  final String btnName;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
        foregroundColor: WidgetStatePropertyAll(foregroundColor),
        side: WidgetStatePropertyAll(
          BorderSide(color: AppColor.primaryColor, width: 1),
        ),
      ),

      onPressed: onPressed,
      child: Text(btnName),
    );
  }
}

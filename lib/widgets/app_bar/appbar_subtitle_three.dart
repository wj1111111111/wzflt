import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarSubtitleThree extends StatelessWidget {
  AppbarSubtitleThree({Key? key, required this.text, this.onTap, this.margin})
    : super(key: key);

  final String text;

  final Function? onTap;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: Text(
          text,
          style: CustomTextStyles.titleMediumAmberA400_1.copyWith(
            color: appTheme.amberA400,
          ),
        ),
      ),
    );
  }
}

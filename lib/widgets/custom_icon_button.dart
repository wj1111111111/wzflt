import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
    borderRadius: BorderRadius.circular(10.h),
    border: Border.all(color: theme.colorScheme.onPrimary, width: 1.h),
  );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
    color: theme.colorScheme.onPrimary.withValues(alpha: 0.39),
    borderRadius: BorderRadius.circular(6.h),
  );
  static BoxDecoration get fillLightGreenA => BoxDecoration(
    color: appTheme.lightGreenA700,
    borderRadius: BorderRadius.circular(8.h),
  );
  static BoxDecoration get fillBlueGray => BoxDecoration(
    color: appTheme.blueGray40001,
    borderRadius: BorderRadius.circular(14.h),
  );
  static BoxDecoration get gradientGreenToGreenA => BoxDecoration(
    borderRadius: BorderRadius.circular(10.h),
    gradient: LinearGradient(
      begin: Alignment(0.02, 0),
      end: Alignment(0.98, 0),
      colors: [appTheme.green50003, appTheme.greenA70001],
    ),
  );
  static BoxDecoration get fillGreen => BoxDecoration(
    color: appTheme.green50001,
    borderRadius: BorderRadius.circular(16.h),
  );
  static BoxDecoration get fillLightBlue => BoxDecoration(
    color: appTheme.lightBlue600,
    borderRadius: BorderRadius.circular(16.h),
  );
  static BoxDecoration get fillIndigo => BoxDecoration(
    color: appTheme.indigo600,
    borderRadius: BorderRadius.circular(16.h),
  );
  static BoxDecoration get fillLightBlueTL8 => BoxDecoration(
    color: appTheme.lightBlue600,
    borderRadius: BorderRadius.circular(8.h),
  );
  static BoxDecoration get fillIndigoTL8 => BoxDecoration(
    color: appTheme.indigo600,
    borderRadius: BorderRadius.circular(8.h),
  );
  static BoxDecoration get fillIndigoTL12 => BoxDecoration(
    color: appTheme.indigo60001,
    borderRadius: BorderRadius.circular(12.h),
  );
  static BoxDecoration get fillOnPrimaryTL8 => BoxDecoration(
    color: theme.colorScheme.onPrimary,
    borderRadius: BorderRadius.circular(8.h),
  );
  static BoxDecoration get fillOnPrimary1 =>
      BoxDecoration(color: theme.colorScheme.onPrimary);
  static BoxDecoration get fillGreenA => BoxDecoration(
    color: appTheme.greenA70002,
    borderRadius: BorderRadius.circular(12.h),
  );
  static BoxDecoration get fillBlueGrayTL6 => BoxDecoration(
    color: appTheme.blueGray10001,
    borderRadius: BorderRadius.circular(6.h),
  );
  static BoxDecoration get fillLightGreen => BoxDecoration(
    color: appTheme.lightGreen10001,
    borderRadius: BorderRadius.circular(6.h),
  );
  static BoxDecoration get outline => BoxDecoration(
    color: appTheme.cyanA40002.withValues(alpha: 0.1),
    borderRadius: BorderRadius.circular(8.h),
    boxShadow: [BoxShadow(spreadRadius: 2.h, blurRadius: 2.h)],
  );
  static BoxDecoration get outlineTL8 => BoxDecoration(
    color: appTheme.indigoA700.withValues(alpha: 0.18),
    borderRadius: BorderRadius.circular(8.h),
    boxShadow: [BoxShadow(spreadRadius: 2.h, blurRadius: 2.h)],
  );
  static BoxDecoration get outlineTL81 => BoxDecoration(
    color: appTheme.purpleA400.withValues(alpha: 0.17),
    borderRadius: BorderRadius.circular(8.h),
    boxShadow: [BoxShadow(spreadRadius: 2.h, blurRadius: 2.h)],
  );
  static BoxDecoration get outlineTL82 => BoxDecoration(
    color: appTheme.orangeA70001.withValues(alpha: 0.1),
    borderRadius: BorderRadius.circular(8.h),
    boxShadow: [BoxShadow(spreadRadius: 2.h, blurRadius: 2.h)],
  );
  static BoxDecoration get outlineTL83 => BoxDecoration(
    color: appTheme.lightGreenA700.withValues(alpha: 0.1),
    borderRadius: BorderRadius.circular(8.h),
    boxShadow: [BoxShadow(spreadRadius: 2.h, blurRadius: 2.h)],
  );
  static BoxDecoration get fillGreenTL28 => BoxDecoration(
    color: appTheme.green90012,
    borderRadius: BorderRadius.circular(28.h),
  );
  static BoxDecoration get outlineLightGreenA => BoxDecoration(
    color: appTheme.lightGreen80004,
    borderRadius: BorderRadius.circular(28.h),
    border: Border.all(color: appTheme.lightGreenA70012, width: 1.h),
  );
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray90001.withValues(alpha: 0.64),
    borderRadius: BorderRadius.circular(14.h),
  );
  static BoxDecoration get fillGrayTL16 => BoxDecoration(
    color: appTheme.gray90001,
    borderRadius: BorderRadius.circular(16.h),
  );
  static BoxDecoration get fillTeal => BoxDecoration(
    color: appTheme.teal40003,
    borderRadius: BorderRadius.circular(26.h),
  );
  static BoxDecoration get fillLightGreenATL32 => BoxDecoration(
    color: appTheme.lightGreenA700,
    borderRadius: BorderRadius.circular(32.h),
  );
  static BoxDecoration get gradientPurpleAToPurple => BoxDecoration(
    borderRadius: BorderRadius.circular(14.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.purpleA10002, appTheme.purple50001],
    ),
  );
  static BoxDecoration get gradientLightBlueToBlueA => BoxDecoration(
    borderRadius: BorderRadius.circular(14.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.lightBlue40002, appTheme.blueA70003],
    ),
  );
  static BoxDecoration get gradientYellowToOrange => BoxDecoration(
    borderRadius: BorderRadius.circular(14.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.yellow50005, appTheme.orange70008],
    ),
  );
  static BoxDecoration get fillOrange => BoxDecoration(
    color: appTheme.orange30006,
    borderRadius: BorderRadius.circular(16.h),
  );
  static BoxDecoration get fillBlue => BoxDecoration(
    color: appTheme.blue40003,
    borderRadius: BorderRadius.circular(14.h),
  );
  static BoxDecoration get fillLightGreenTL16 => BoxDecoration(
    color: appTheme.lightGreen50001,
    borderRadius: BorderRadius.circular(16.h),
  );
  static BoxDecoration get fillLightGreenATL24 => BoxDecoration(
    color: appTheme.lightGreenA700,
    borderRadius: BorderRadius.circular(24.h),
  );
  static BoxDecoration get fillBlueA => BoxDecoration(
    color: appTheme.blueA40001,
    borderRadius: BorderRadius.circular(16.h),
  );
  static BoxDecoration get fillBlueTL16 => BoxDecoration(
    color: appTheme.blue40004,
    borderRadius: BorderRadius.circular(16.h),
  );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
    borderRadius: BorderRadius.circular(10.h),
    border: Border.all(color: appTheme.blueGray20005, width: 1.h),
  );
  static BoxDecoration get gradientLightGreenAToLightGreen => BoxDecoration(
    borderRadius: BorderRadius.circular(14.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
    ),
  );
  static BoxDecoration get outlineLightGreenATL30 => BoxDecoration(
    color: appTheme.gray90001,
    borderRadius: BorderRadius.circular(30.h),
    border: Border.all(color: appTheme.lightGreenA700, width: 1.h),
  );
  static BoxDecoration get outlineTeal => BoxDecoration(
    color: appTheme.blueGray80012,
    borderRadius: BorderRadius.circular(8.h),
    boxShadow: [
      BoxShadow(
        color: appTheme.teal80001,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 3),
      ),
    ],
  );
  static BoxDecoration get outlinePurpleAD => BoxDecoration(
    color: appTheme.indigo90001,
    borderRadius: BorderRadius.circular(8.h),
    boxShadow: [
      BoxShadow(
        color: appTheme.purpleA4003d,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 3),
      ),
    ],
  );
  static BoxDecoration get outlineLime => BoxDecoration(
    color: appTheme.gray80016,
    borderRadius: BorderRadius.circular(8.h),
    boxShadow: [
      BoxShadow(
        color: appTheme.lime90005,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 3),
      ),
    ],
  );
  static BoxDecoration get none => BoxDecoration();
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.decoration,
    this.padding,
    this.onTap,
    this.child,
  }) : super(key: key);

  final Alignment? alignment;

  final double? height;

  final double? width;

  final BoxDecoration? decoration;

  final EdgeInsetsGeometry? padding;

  final VoidCallback? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
          alignment: alignment ?? Alignment.center,
          child: iconButtonWidget,
        )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
    height: height ?? 0,
    width: width ?? 0,
    child: DecoratedBox(
      decoration:
          decoration ??
          BoxDecoration(
            color: appTheme.gray90001,
            borderRadius: BorderRadius.circular(16.h),
            border: Border.all(color: appTheme.gray400, width: 1.h),
          ),
      child: IconButton(
        padding: padding ?? EdgeInsets.zero,
        onPressed: onTap,
        icon: child ?? Container(),
      ),
    ),
  );
}

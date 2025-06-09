import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillAmberA => ElevatedButton.styleFrom(
    backgroundColor: appTheme.amberA400,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillAmberATL8 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.amberA400,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillBlack => ElevatedButton.styleFrom(
    backgroundColor: appTheme.black900.withValues(alpha: 0.2),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillBlueGray => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blueGray80004,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillBlueGrayBL12 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blueGray90004,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.h)),
    ),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillBlueGrayTL4 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blueGray70001,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillBlueGrayTL6 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blueGray90028,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillBlueGrayTL8 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blueGray400.withValues(alpha: 0.98),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray600,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGrayBL12 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray90001,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.h)),
    ),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGrayBL121 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray90001,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12.h)),
    ),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGrayLR18 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray90001,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(18.h),
        bottomLeft: Radius.circular(12.h),
      ),
    ),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGrayTL14 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray90001,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGrayTL18 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray90001,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(18.h),
        bottomRight: Radius.circular(12.h),
      ),
    ),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGrayTL20 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray90001,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGrayTL4 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray90002,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGrayTL41 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray90001,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGrayTL8 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray90001,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGrayTL81 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray600,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillGreen => ElevatedButton.styleFrom(
    backgroundColor: appTheme.green50004,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillIndigo => ElevatedButton.styleFrom(
    backgroundColor: appTheme.indigo500,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillLightBlue => ElevatedButton.styleFrom(
    backgroundColor: appTheme.lightBlue700,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillLightGreenA => ElevatedButton.styleFrom(
    backgroundColor: appTheme.lightGreenA700,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillLightGreenATL14 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.lightGreenA700,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(14.h),
        bottomRight: Radius.circular(14.h),
      ),
    ),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillLightGreenATL4 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.lightGreenA700,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillLightGreenATL8 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.lightGreenA700,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillLightGreenA1 => ElevatedButton.styleFrom(
    backgroundColor: appTheme.lightGreenA700,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillOnPrimaryTL12 => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.onPrimary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillOnPrimaryTL8 => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.onPrimary.withValues(alpha: 0.05),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.h)),
    elevation: 0,
    padding: EdgeInsets.zero,
  );
  // Gradient button style
  static BoxDecoration get gradientAmberAToOrangeDecoration => BoxDecoration(
    borderRadius: BorderRadius.circular(20.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amberA40005, appTheme.orange70007],
    ),
  );
  static BoxDecoration get gradientAmberAToOrangeTL6Decoration => BoxDecoration(
    borderRadius: BorderRadius.circular(6.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amberA40005, appTheme.orange70007],
    ),
  );
  static BoxDecoration get gradientAmberToAmberDecoration => BoxDecoration(
    borderRadius: BorderRadius.circular(6.h),
    border: Border.all(color: appTheme.amberA400, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amber40001, appTheme.amber700],
    ),
  );
  static BoxDecoration get gradientAmberToAmberTL14Decoration => BoxDecoration(
    borderRadius: BorderRadius.circular(14.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amber40001, appTheme.amber700],
    ),
  );
  static BoxDecoration get gradientAmberToAmberTL18Decoration => BoxDecoration(
    borderRadius: BorderRadius.circular(18.h),
    border: Border.all(color: appTheme.amberA400, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amber40001, appTheme.amber700],
    ),
  );
  static BoxDecoration get gradientAmberToAmberTL2Decoration => BoxDecoration(
    borderRadius: BorderRadius.circular(2.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amber40001, appTheme.amber700],
    ),
  );
  static BoxDecoration get gradientAmberToAmberTL8Decoration => BoxDecoration(
    borderRadius: BorderRadius.circular(8.h),
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(alpha: 0.1),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amber40001, appTheme.amber700],
    ),
  );
  static BoxDecoration get gradientAmberToOrangeDecoration => BoxDecoration(
    borderRadius: BorderRadius.circular(14.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amber40002, appTheme.orange70005],
    ),
  );
  static BoxDecoration get gradientAmberToOrangeTL20Decoration => BoxDecoration(
    borderRadius: BorderRadius.circular(20.h),
    border: GradientBoxBorder(
      width: 1.h,
      gradient: LinearGradient(
        begin: Alignment(0.5, 1),
        end: Alignment(0.5, 0),
        colors: [appTheme.orange500, appTheme.amberA40006],
      ),
    ),
    boxShadow: [
      BoxShadow(
        color: appTheme.red90006,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 2),
      ),
    ],
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amber40005, appTheme.orange90002],
    ),
  );
  static BoxDecoration get gradientBlueGrayToBlueGrayDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6.h)),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withValues(alpha: 0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 2),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.blueGray90018, appTheme.blueGray90019],
        ),
      );
  static BoxDecoration get gradientBlueGrayToBlueGrayTL4Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(4.h),
        border: Border.all(color: appTheme.blueGray50003, width: 1.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.blueGray200, appTheme.blueGray70003],
        ),
      );
  static BoxDecoration get gradientGrayToBlueGrayDecoration => BoxDecoration(
    borderRadius: BorderRadius.circular(16.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray80008, appTheme.blueGray90020],
    ),
  );
  static BoxDecoration get gradientGrayToBlueGrayTL12Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.gray80008, appTheme.blueGray90020],
        ),
      );
  static BoxDecoration get gradientGrayToBlueGrayTL20Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withValues(alpha: 0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 4),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.gray80008, appTheme.blueGray90020],
        ),
      );
  static BoxDecoration get gradientGrayToBlueGrayTL24Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(24.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withValues(alpha: 0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 4),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.gray80008, appTheme.blueGray90020],
        ),
      );
  static BoxDecoration get gradientGrayToBlueGrayTL241Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(24.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.gray80008, appTheme.blueGray90020],
        ),
      );
  static BoxDecoration get gradientGrayToBlueGrayTL6Decoration => BoxDecoration(
    borderRadius: BorderRadius.circular(6.h),
    border: Border.all(color: appTheme.blueGray70001, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray80008, appTheme.blueGray90020],
    ),
  );
  static BoxDecoration get gradientGrayToBlueGrayTL61Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(6.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.gray80008, appTheme.blueGray90020],
        ),
      );
  static BoxDecoration get gradientGrayToGrayDecoration => BoxDecoration(
    borderRadius: BorderRadius.circular(14.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray40003, appTheme.gray60007],
    ),
  );
  static BoxDecoration get gradientLightGreenAToLightGreenDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(6.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightGreenBR12Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(12.h)),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightGreenTL14Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(14.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA70004, appTheme.lightGreen80001],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightGreenTL16Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightGreenTL18Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(18.h),
        border: Border.all(color: appTheme.lightGreenA700, width: 1.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightGreenTL2Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(2.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightGreenTL20Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.lightGreenA700.withValues(alpha: 0.38),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 2),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightGreenTL201Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withValues(alpha: 0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 4),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightGreenTL22Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(22.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightGreenTL4Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(4.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA70004, appTheme.lightGreen80001],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightGreenTL41Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(4.h),
        border: Border.all(color: appTheme.lightGreenA700, width: 1.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightGreenTL8Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA70004, appTheme.lightGreen80001],
        ),
      );
  static BoxDecoration get gradientPinkAToDeepOrangeADecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.horizontal(left: Radius.circular(8.h)),
        gradient: LinearGradient(
          begin: Alignment(0.5, 1),
          end: Alignment(0.5, 0),
          colors: [appTheme.pinkA20002, appTheme.deepOrangeA20001],
        ),
      );
  static BoxDecoration get gradientRedToRedDecoration => BoxDecoration(
    borderRadius: BorderRadius.circular(24.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.red60002, appTheme.red80002],
    ),
  );
  static BoxDecoration get gradientRedToRedTL6Decoration => BoxDecoration(
    borderRadius: BorderRadius.circular(6.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.red60002, appTheme.red80002],
    ),
  );
  static BoxDecoration get gradientYellowAToAmberDecoration => BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: appTheme.gray9003301,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 0),
      ),
    ],
    gradient: LinearGradient(
      begin: Alignment(0.49, 0),
      end: Alignment(0.49, 1),
      colors: [appTheme.yellowA70005, appTheme.amber60003],
    ),
  );
  static BoxDecoration get gradientYellowAToAmber1Decoration => BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: appTheme.gray9003301,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 0),
      ),
    ],
    gradient: LinearGradient(
      begin: Alignment(0.49, 0),
      end: Alignment(0.49, 1),
      colors: [appTheme.yellowA70005, appTheme.amber60003],
    ),
  );
  // Outline button style
  static ButtonStyle get outlineBlueGray => OutlinedButton.styleFrom(
    backgroundColor: appTheme.blueGray70001,
    side: BorderSide(color: appTheme.blueGray400, width: 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.h)),
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get outlineBlueGrayTL6 => OutlinedButton.styleFrom(
    backgroundColor: appTheme.blueGray40007,
    side: BorderSide(color: appTheme.blueGray30003, width: 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.h)),
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get outlineIndigo => OutlinedButton.styleFrom(
    backgroundColor: appTheme.lightGreenA70006,
    side: BorderSide(color: appTheme.indigo50, width: 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get outlineOnPrimary => OutlinedButton.styleFrom(
    backgroundColor: appTheme.blueGray90002,
    side: BorderSide(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(8.h)),
    ),
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get outlineOnPrimaryTL6 => OutlinedButton.styleFrom(
    backgroundColor: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
    side: BorderSide(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.05),
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(6.h),
        topRight: Radius.circular(6.h),
        bottomLeft: Radius.circular(6.h),
      ),
    ),
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get outlineOnPrimaryTL61 => OutlinedButton.styleFrom(
    backgroundColor: appTheme.blueGray90027,
    side: BorderSide(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
      width: 0,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(6.h)),
    ),
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get outlineOnPrimaryTL8 => OutlinedButton.styleFrom(
    backgroundColor: Colors.transparent,
    side: BorderSide(color: theme.colorScheme.onPrimary, width: 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get outlineOnPrimary1 => OutlinedButton.styleFrom(
    backgroundColor: appTheme.blueGray90027,
    side: BorderSide(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
      width: 0,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    padding: EdgeInsets.zero,
  );
  static ButtonStyle get outlineOnPrimary2 => OutlinedButton.styleFrom(
    backgroundColor: appTheme.gray80010,
    side: BorderSide(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
      width: 0,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
    padding: EdgeInsets.zero,
  );
  // text button style
  static ButtonStyle get none => ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
    elevation: WidgetStateProperty.all<double>(0),
    padding: WidgetStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
    side: WidgetStateProperty.all<BorderSide>(
      BorderSide(color: Colors.transparent),
    ),
  );
}

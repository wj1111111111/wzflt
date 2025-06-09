import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(color: appTheme.amber500);
  static BoxDecoration get fillAmber30002 =>
      BoxDecoration(color: appTheme.amber30002);
  static BoxDecoration get fillAmber70001 =>
      BoxDecoration(color: appTheme.amber70001);
  static BoxDecoration get fillAmberA =>
      BoxDecoration(color: appTheme.amberA400);
  static BoxDecoration get fillBlack =>
      BoxDecoration(color: appTheme.black900.withValues(alpha: 0.2));
  static BoxDecoration get fillBlack900 =>
      BoxDecoration(color: appTheme.black900.withValues(alpha: 0.3));
  static BoxDecoration get fillBlack9001 =>
      BoxDecoration(color: appTheme.black900.withValues(alpha: 0.1));
  static BoxDecoration get fillBlack90010 => BoxDecoration(
    color: appTheme.black900.withValues(alpha: 0.8),
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgImage1137),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get fillBlack90011 =>
      BoxDecoration(color: appTheme.black900);
  static BoxDecoration get fillBlack9002 =>
      BoxDecoration(color: appTheme.black900.withValues(alpha: 0.85));
  static BoxDecoration get fillBlack9003 =>
      BoxDecoration(color: appTheme.black900.withValues(alpha: 0.7));
  static BoxDecoration get fillBlack9004 =>
      BoxDecoration(color: appTheme.black900.withValues(alpha: 0.8));
  static BoxDecoration get fillBlack9005 => BoxDecoration(
    color: appTheme.black900.withValues(alpha: 0.7),
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgImage1123),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get fillBlack9006 =>
      BoxDecoration(color: appTheme.black900.withValues(alpha: 0.5));
  static BoxDecoration get fillBlack9007 =>
      BoxDecoration(color: appTheme.black900.withValues(alpha: 0.6));
  static BoxDecoration get fillBlack9008 => BoxDecoration(
    color: appTheme.black900.withValues(alpha: 0.8),
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgImage1137),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get fillBlack9009 => BoxDecoration(
    color: appTheme.black900.withValues(alpha: 0.8),
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgImage1137),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get fillBlue => BoxDecoration(color: appTheme.blue500);
  static BoxDecoration get fillBlueGray =>
      BoxDecoration(color: appTheme.blueGray800);
  static BoxDecoration get fillBlueGrayF =>
      BoxDecoration(color: appTheme.blueGray3007f);
  static BoxDecoration get fillBluegray20099 =>
      BoxDecoration(color: appTheme.blueGray20099);
  static BoxDecoration get fillBluegray400 =>
      BoxDecoration(color: appTheme.blueGray400);
  static BoxDecoration get fillBluegray40005 =>
      BoxDecoration(color: appTheme.blueGray40005);
  static BoxDecoration get fillBluegray40006 =>
      BoxDecoration(color: appTheme.blueGray40006);
  static BoxDecoration get fillBluegray70001 =>
      BoxDecoration(color: appTheme.blueGray70001);
  static BoxDecoration get fillBluegray80003 =>
      BoxDecoration(color: appTheme.blueGray80003);
  static BoxDecoration get fillBluegray80004 =>
      BoxDecoration(color: appTheme.blueGray80004);
  static BoxDecoration get fillBluegray80011 =>
      BoxDecoration(color: appTheme.blueGray80011);
  static BoxDecoration get fillBluegray900 =>
      BoxDecoration(color: appTheme.blueGray900);
  static BoxDecoration get fillBluegray90002 =>
      BoxDecoration(color: appTheme.blueGray90002);
  static BoxDecoration get fillBluegray90004 =>
      BoxDecoration(color: appTheme.blueGray90004);
  static BoxDecoration get fillBluegray90012 =>
      BoxDecoration(color: appTheme.blueGray90012);
  static BoxDecoration get fillBluegray90013 =>
      BoxDecoration(color: appTheme.blueGray90013);
  static BoxDecoration get fillBluegray90014 =>
      BoxDecoration(color: appTheme.blueGray90014);
  static BoxDecoration get fillBluegray90021 =>
      BoxDecoration(color: appTheme.blueGray90021);
  static BoxDecoration get fillBluegray900211 =>
      BoxDecoration(color: appTheme.blueGray90021.withValues(alpha: 0.98));
  static BoxDecoration get fillBluegray90023 =>
      BoxDecoration(color: appTheme.blueGray90023);
  static BoxDecoration get fillBluegray90024 =>
      BoxDecoration(color: appTheme.blueGray90024);
  static BoxDecoration get fillBluegray90027 =>
      BoxDecoration(color: appTheme.blueGray90027);
  static BoxDecoration get fillBluegray90033 =>
      BoxDecoration(color: appTheme.blueGray90033);
  static BoxDecoration get fillBluegray90099 =>
      BoxDecoration(color: appTheme.blueGray90099);
  static BoxDecoration get fillDeepOrange =>
      BoxDecoration(color: appTheme.deepOrange600);
  static BoxDecoration get fillDeepPurpleA =>
      BoxDecoration(color: appTheme.deepPurpleA20002);
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray90002,
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgImage23),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get fillGray40001 =>
      BoxDecoration(color: appTheme.gray40001);
  static BoxDecoration get fillGray600 =>
      BoxDecoration(color: appTheme.gray600);
  static BoxDecoration get fillGray800 =>
      BoxDecoration(color: appTheme.gray800);
  static BoxDecoration get fillGray80010 =>
      BoxDecoration(color: appTheme.gray80010);
  static BoxDecoration get fillGray90002 => BoxDecoration(
    color: appTheme.gray90002,
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgImage23),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get fillGray90010 =>
      BoxDecoration(color: appTheme.gray90010);
  static BoxDecoration get fillGray90021 =>
      BoxDecoration(color: appTheme.gray90021);
  static BoxDecoration get fillGray90027 =>
      BoxDecoration(color: appTheme.gray90027);
  static BoxDecoration get fillGray90028 =>
      BoxDecoration(color: appTheme.gray90028);
  static BoxDecoration get fillGray90035 =>
      BoxDecoration(color: appTheme.gray90035);
  static BoxDecoration get fillGrayE =>
      BoxDecoration(color: appTheme.gray200E0);
  static BoxDecoration get fillGreen =>
      BoxDecoration(color: appTheme.green90005);
  static BoxDecoration get fillGreen70003 =>
      BoxDecoration(color: appTheme.green70003);
  static BoxDecoration get fillGreen90014 =>
      BoxDecoration(color: appTheme.green90014);
  static BoxDecoration get fillGreen90016 =>
      BoxDecoration(color: appTheme.green90016);
  static BoxDecoration get fillGreenA =>
      BoxDecoration(color: appTheme.greenA70004);
  static BoxDecoration get fillIndigo =>
      BoxDecoration(color: appTheme.indigo800);
  static BoxDecoration get fillLightBlueA =>
      BoxDecoration(color: appTheme.lightBlueA700);
  static BoxDecoration get fillLightGreen =>
      BoxDecoration(color: appTheme.lightGreen500);
  static BoxDecoration get fillLightGreenA =>
      BoxDecoration(color: appTheme.lightGreenA700.withValues(alpha: 0.1));
  static BoxDecoration get fillLightgreenA70006 =>
      BoxDecoration(color: appTheme.lightGreenA70006);
  static BoxDecoration get fillOnPrimary =>
      BoxDecoration(color: theme.colorScheme.onPrimary.withValues(alpha: 0.8));
  static BoxDecoration get fillOnPrimary1 =>
      BoxDecoration(color: theme.colorScheme.onPrimary);
  static BoxDecoration get fillOnPrimary2 => BoxDecoration(
    color: theme.colorScheme.onPrimary,
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgImage1139),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get fillOnPrimary3 => BoxDecoration(
    color: theme.colorScheme.onPrimary,
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgImage1137),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get fillOnPrimary4 => BoxDecoration(
    color: theme.colorScheme.onPrimary,
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgImage1137),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get fillOrange =>
      BoxDecoration(color: appTheme.orange600);
  static BoxDecoration get fillOrangeA =>
      BoxDecoration(color: appTheme.orangeA700);
  static BoxDecoration get fillPinkA =>
      BoxDecoration(color: appTheme.pinkA20001.withValues(alpha: 0.2));
  static BoxDecoration get fillPurple =>
      BoxDecoration(color: appTheme.purple600);
  static BoxDecoration get fillRed => BoxDecoration(color: appTheme.red500);
  static BoxDecoration get fillTealA => BoxDecoration(color: appTheme.tealA700);
  // Gradient decorations
  static BoxDecoration get gradientAmberAToAmber => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [appTheme.amberA20001, appTheme.amber50005],
    ),
  );
  static BoxDecoration get gradientAmberAToOrangeA => BoxDecoration(
    border: Border.all(color: appTheme.amber30002, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amberA100, appTheme.orangeA20001],
    ),
  );
  static BoxDecoration get gradientAmberBToLightGreen => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.51, 0.52),
      end: Alignment(0.74, 0.94),
      colors: [appTheme.amber400B2, appTheme.lightGreen90000],
    ),
  );
  static BoxDecoration get gradientAmberToAmber => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amber40001, appTheme.amber700],
    ),
  );
  static BoxDecoration get gradientAmberToAmber70003 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amber40001, appTheme.amber70003],
    ),
  );
  static BoxDecoration get gradientAmberToLime => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amber200, appTheme.yellow20004, appTheme.lime80001],
    ),
  );
  static BoxDecoration get gradientAmberToOrange => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [appTheme.amber40004, appTheme.orange80004],
    ),
  );
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
    border: Border.all(color: appTheme.lime90003, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.black90002, appTheme.green90010, appTheme.black90003],
    ),
  );
  static BoxDecoration get gradientBlackToBlack900 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0.5),
      end: Alignment(0.5, 1),
      colors: [appTheme.black900, appTheme.black900.withValues(alpha: 0)],
    ),
  );
  static BoxDecoration get gradientBlackToBlack9001 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.52, 1.33),
      colors: [
        appTheme.black900.withValues(alpha: 0.6),
        appTheme.black900.withValues(alpha: 0.22),
        appTheme.black900.withValues(alpha: 0),
      ],
    ),
  );
  static BoxDecoration get gradientBlueACToIndigoC => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.02),
      end: Alignment(0.97, 0.91),
      colors: [appTheme.blueA4004c, appTheme.indigo5004c],
    ),
  );
  static BoxDecoration get gradientBlueAToGreenA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, -0.07),
      end: Alignment(1.02, 1.11),
      colors: [appTheme.blueA400, appTheme.greenA400],
    ),
  );
  static BoxDecoration get gradientBlueGrayToBlack => BoxDecoration(
    border: Border.all(color: appTheme.greenA10001, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.21, 0.1),
      end: Alignment(0.74, 0.94),
      colors: [
        appTheme.blueGray700,
        appTheme.blueGray90010,
        appTheme.black90001,
      ],
    ),
  );
  static BoxDecoration get gradientBlueGrayToBlueGray => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 1),
      end: Alignment(0.5, 0),
      colors: [
        appTheme.blueGray90003,
        appTheme.blueGray90003.withValues(alpha: 0),
      ],
    ),
  );
  static BoxDecoration get gradientBlueGrayToBluegray80011 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.blueGray80011, appTheme.blueGray80011],
    ),
  );
  static BoxDecoration get gradientBlueGrayToTeal => BoxDecoration(
    border: Border.all(color: appTheme.blueGray20001, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.blueGray20001, appTheme.teal40001, appTheme.teal40001],
    ),
  );
  static BoxDecoration get gradientBlueToBlueA => BoxDecoration(
    border: Border.all(color: appTheme.blue50001, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.blue50001, appTheme.blueA70001, appTheme.blueA70001],
    ),
  );
  static BoxDecoration get gradientBlueToLightBlue => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.21, 0.08),
      end: Alignment(0.74, 0.93),
      colors: [appTheme.blue80002, appTheme.blue40001, appTheme.lightBlue100],
    ),
  );
  static BoxDecoration get gradientBlueToLightBlueA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [appTheme.blue800, appTheme.lightBlueA200],
    ),
  );
  static BoxDecoration get gradientCyanAToBlueA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(1, 0.5),
      end: Alignment(-0.04, 0.5),
      colors: [appTheme.cyanA40001, appTheme.blueA70002],
    ),
  );
  static BoxDecoration get gradientDeepOrangeToAmberA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [
        appTheme.deepOrange60001,
        appTheme.amber800,
        appTheme.amberA70001,
      ],
    ),
  );
  static BoxDecoration get gradientDeepOrangeToPinkA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(1, 0.5),
      end: Alignment(-0.04, 0.5),
      colors: [appTheme.deepOrange300, appTheme.pinkA20001],
    ),
  );
  static BoxDecoration get gradientDeepPurpleAToBlueA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.95, -0.08),
      end: Alignment(0, 1),
      colors: [appTheme.deepPurpleA10001, appTheme.blueA700],
    ),
  );
  static BoxDecoration get gradientDeepPurpleAToDeepPurpleA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [appTheme.deepPurpleA700, appTheme.deepPurpleA200],
    ),
  );
  static BoxDecoration get gradientDeepPurpleAToDeeppurpleA100 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.09, 0.93),
      end: Alignment(1, 0.15),
      colors: [appTheme.deepPurpleA20001, appTheme.deepPurpleA100],
    ),
  );
  static BoxDecoration get gradientDeepPurpleAToDeeppurpleA10002 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.deepPurpleA40000, appTheme.deepPurpleA10002],
        ),
      );
  static BoxDecoration get gradientDeepPurpleAToDeeppurpleA100021 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.26),
          end: Alignment(0.5, 1),
          colors: [appTheme.deepPurpleA40000, appTheme.deepPurpleA10002],
        ),
      );
  static BoxDecoration get gradientDeepPurpleAToDeeppurpleA1001 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.86),
          end: Alignment(0.93, 0.18),
          colors: [appTheme.deepPurpleA20001, appTheme.deepPurpleA100],
        ),
      );
  static BoxDecoration get gradientDeepPurpleToPurple => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.21, 0.08),
      end: Alignment(0.74, 0.93),
      colors: [
        appTheme.deepPurple50001,
        appTheme.purpleA10001,
        appTheme.purple100,
      ],
    ),
  );
  static BoxDecoration get gradientGrayToBlack => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.gray90001.withValues(alpha: 0.9),
        appTheme.black900.withValues(alpha: 0.9),
        appTheme.black900.withValues(alpha: 0.9),
      ],
    ),
  );
  static BoxDecoration get gradientGrayToBlueGray => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray80009, appTheme.blueGray90022],
    ),
  );
  static BoxDecoration get gradientGrayToBluegray90035 => BoxDecoration(
    border: Border.all(color: appTheme.gray80014, width: 4.h),
    gradient: LinearGradient(
      begin: Alignment(0.02, 0.01),
      end: Alignment(0.97, 0.99),
      colors: [appTheme.gray800, appTheme.blueGray90035],
    ),
  );
  static BoxDecoration get gradientGrayToGray => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray90001, appTheme.gray90002],
    ),
  );
  static BoxDecoration get gradientGrayToGray60008 => BoxDecoration(
    border: Border.all(color: appTheme.gray50004, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray40005, appTheme.gray60008],
    ),
  );
  static BoxDecoration get gradientGrayToGray90001 => BoxDecoration(
    border: Border.all(color: appTheme.blueGray90012, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray80003, appTheme.gray90001],
    ),
  );
  static BoxDecoration get gradientGrayToGray900011 => BoxDecoration(
    border: Border.all(color: appTheme.blueGray90012, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray80005, appTheme.gray90001],
    ),
  );
  static BoxDecoration get gradientGrayToGray900012 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray80003, appTheme.gray90001],
    ),
  );
  static BoxDecoration get gradientGrayToGray90002 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.gray90002.withValues(alpha: 0),
        appTheme.gray90002.withValues(alpha: 0.8),
        appTheme.gray90002,
      ],
    ),
  );
  static BoxDecoration get gradientGrayToGray90017 => BoxDecoration(
    border: Border.all(color: appTheme.yellow100, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.21, 0.1),
      end: Alignment(0.74, 0.94),
      colors: [appTheme.gray70001, appTheme.blueGray90008, appTheme.gray90017],
    ),
  );
  static BoxDecoration get gradientGrayToGray90030 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.gray90030.withValues(alpha: 0),
        appTheme.gray90030.withValues(alpha: 0.79),
        appTheme.gray90030,
      ],
    ),
  );
  static BoxDecoration get gradientGrayToGreenA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.21, 0.08),
      end: Alignment(0.74, 0.93),
      colors: [appTheme.gray90034, appTheme.teal40002, appTheme.greenA20001],
    ),
  );
  static BoxDecoration get gradientGrayToLime => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(-0.01, 0.52),
      end: Alignment(1.01, 0.34),
      colors: [appTheme.gray90020, appTheme.lime90002],
    ),
  );
  static BoxDecoration get gradientGreenAToLimeA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0),
      end: Alignment(1, 1),
      colors: [appTheme.greenA70006, appTheme.green40004, appTheme.limeA200],
    ),
  );
  static BoxDecoration get gradientGreenAToTeal => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(-0.01, 0),
      end: Alignment(0.99, 0.96),
      colors: [appTheme.greenA200, appTheme.teal900],
    ),
  );
  static BoxDecoration get gradientGreenAToTeal700 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.51, -0.11),
      end: Alignment(0.52, 1.01),
      colors: [appTheme.greenA100, appTheme.teal700],
    ),
  );
  static BoxDecoration get gradientGreenBcToGreen => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.51, 0.52),
      end: Alignment(0.74, 0.94),
      colors: [appTheme.green500Bc, appTheme.green90000],
    ),
  );
  static BoxDecoration get gradientGreenToGray => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.green600, appTheme.gray90042],
    ),
  );
  static BoxDecoration get gradientGreenToGreen => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.green90004,
        appTheme.lightGreen900,
        appTheme.green50002,
      ],
    ),
  );
  static BoxDecoration get gradientGreenToLightGreen => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(-0.01, 0.52),
      end: Alignment(1.01, 0.34),
      colors: [appTheme.green90006, appTheme.lightGreen90004],
    ),
  );
  static BoxDecoration get gradientIndigoAToDeepPurple => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.32, 0),
      end: Alignment(0.99, 0.98),
      colors: [appTheme.indigoA200, appTheme.deepPurple500],
    ),
  );
  static BoxDecoration get gradientIndigoToDeepPurpleA => BoxDecoration(
    border: Border.all(color: appTheme.indigo10002, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.indigo10002,
        appTheme.deepPurpleA20003,
        appTheme.deepPurpleA20003,
      ],
    ),
  );
  static BoxDecoration get gradientLightBlueAToPurple => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0),
      end: Alignment(1, 1),
      colors: [appTheme.lightBlueA20001, appTheme.purple500],
    ),
  );
  static BoxDecoration get gradientLightBlueToBlue => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.95, -0.08),
      end: Alignment(0, 1),
      colors: [appTheme.lightBlue400, appTheme.blue700],
    ),
  );
  static BoxDecoration get gradientLightBlueToBlue700 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(1.02, -0.08),
      end: Alignment(0.07, 1),
      colors: [appTheme.lightBlue400, appTheme.blue700],
    ),
  );
  static BoxDecoration get gradientLightBlueToBlue80003 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [appTheme.lightBlue30001, appTheme.blue80003],
    ),
  );
  static BoxDecoration get gradientLightBlueToBlueA => BoxDecoration(
    border: Border.all(
      color: appTheme.lightBlueA700.withValues(alpha: 0.4),
      width: 5.h,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
    gradient: LinearGradient(
      begin: Alignment(0.03, 0.11),
      end: Alignment(0.98, 0.89),
      colors: [appTheme.lightBlue300, appTheme.blueA200],
    ),
  );
  static BoxDecoration get gradientLightGreenAToLightGreen => BoxDecoration(
    border: Border.all(color: appTheme.lightGreenA700, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
    ),
  );
  static BoxDecoration get gradientLightGreenAToLightGreenA => BoxDecoration(
    border: Border(
      left: BorderSide(color: appTheme.lightGreenA70009, width: 2.h),
    ),
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [
        appTheme.lightGreenA70010,
        appTheme.lightGreenA70010.withValues(alpha: 0.5),
        appTheme.lightGreenA70010.withValues(alpha: 0),
      ],
    ),
  );
  static BoxDecoration get gradientLightGreenAToLightgreen800 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
    ),
  );
  static BoxDecoration get gradientLightGreenAToLightgreen8001 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
    ),
  );
  static BoxDecoration get gradientLightGreenAToLightgreen8002 => BoxDecoration(
    border: Border.all(color: appTheme.lightGreenA700, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(-0.29, -0.28),
      end: Alignment(0.52, 0.5),
      colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
    ),
  );
  static BoxDecoration get gradientLightGreenAToLightgreen90005 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA70003, appTheme.lightGreen90005],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightgreen90007 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.3, 0.09),
          end: Alignment(0.68, 0.95),
          colors: [
            appTheme.lightGreenA20001,
            appTheme.lightGreenA70008,
            appTheme.lightGreen90007,
          ],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightgreen90008 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.lightGreenA700, appTheme.lightGreen90008],
        ),
      );
  static BoxDecoration get gradientLightGreenAToLightgreen90009 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(0.93, 0.5),
          colors: [appTheme.lightGreenA70013, appTheme.lightGreen90009],
        ),
      );
  static BoxDecoration get gradientLightGreenToGreen => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(1, 0.5),
      end: Alignment(0, 0.5),
      colors: [appTheme.lightGreen10003, appTheme.green200],
    ),
  );
  static BoxDecoration get gradientLightGreenToLightGreen => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(-0.34, 0.49),
      end: Alignment(1, 0.52),
      colors: [
        appTheme.lightGreen800,
        appTheme.lightGreenA70001,
        appTheme.lightGreen800,
      ],
    ),
  );
  static BoxDecoration get gradientLightGreenToLightGreenA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(1.02, 0.02),
      end: Alignment(-0.01, 0.61),
      colors: [appTheme.lightGreen800, appTheme.lightGreenA70001],
    ),
  );
  static BoxDecoration get gradientLightGreenToLightgreen800 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0.06),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.lightGreen800.withValues(alpha: 0),
        appTheme.lightGreen800,
      ],
    ),
  );
  static BoxDecoration get gradientOrangeAToAmber => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(1.02, 0.02),
      end: Alignment(-0.01, 0.61),
      colors: [appTheme.orangeA20001, appTheme.amber30002],
    ),
  );
  static BoxDecoration get gradientOrangeAToRed => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.orangeA70002, appTheme.red90004],
    ),
  );
  static BoxDecoration get gradientOrangeToLime => BoxDecoration(
    border: Border.all(color: appTheme.amber30002, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(1.6, 1),
      end: Alignment(-0.98, -0.11),
      colors: [appTheme.orange700, appTheme.lime90001],
    ),
  );
  static BoxDecoration get gradientOrangeToOrange => BoxDecoration(
    border: Border.all(color: appTheme.orangeA20002, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.orange300, appTheme.orange900, appTheme.orange900],
    ),
  );
  static BoxDecoration get gradientOrangeToOrange10001 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.orange5009, appTheme.orange10001],
    ),
  );
  static BoxDecoration get gradientOrangeToOrange20001 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.orange5005, appTheme.orange20001],
    ),
  );
  static BoxDecoration get gradientOrangeToYellowA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [appTheme.orange70006, appTheme.yellowA40005],
    ),
  );
  static BoxDecoration get gradientPinkAToDeepOrangeA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 1),
      end: Alignment(0.5, 0),
      colors: [
        appTheme.pinkA20002.withValues(alpha: 0.5),
        appTheme.deepOrangeA20001.withValues(alpha: 0.5),
      ],
    ),
  );
  static BoxDecoration get gradientPinkAToDeeporangeA20001 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(1, 0.5),
      end: Alignment(0, 0.5),
      colors: [
        appTheme.pinkA20002.withValues(alpha: 0.2),
        appTheme.deepOrangeA20001.withValues(alpha: 0.2),
      ],
    ),
  );
  static BoxDecoration get gradientPinkToAmber => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.09, 0.93),
      end: Alignment(1, 0.15),
      colors: [appTheme.pink300, appTheme.amber30001],
    ),
  );
  static BoxDecoration get gradientPinkToBlue => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0),
      end: Alignment(1, 1),
      colors: [appTheme.pink30001, appTheme.blue900],
    ),
  );
  static BoxDecoration get gradientPinkToPurpleA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.21, 0.08),
      end: Alignment(0.74, 0.93),
      colors: [appTheme.pink90001, appTheme.purple300, appTheme.purpleA100],
    ),
  );
  static BoxDecoration get gradientPinkToRed => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0.26),
      end: Alignment(0.5, 1),
      colors: [appTheme.pink90000, appTheme.red50005],
    ),
  );
  static BoxDecoration get gradientPurpleACToBlueA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.02),
      end: Alignment(0.97, 0.91),
      colors: [appTheme.purpleA1004c, appTheme.blueA200.withValues(alpha: 0.3)],
    ),
  );
  static BoxDecoration get gradientPurpleACToLimeC => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.02),
      end: Alignment(0.97, 0.91),
      colors: [appTheme.purpleA2004c, appTheme.lime7004c],
    ),
  );
  static BoxDecoration get gradientPurpleAToOrangeA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, -0.07),
      end: Alignment(1.02, 1.11),
      colors: [appTheme.purpleA40003, appTheme.orangeA20004],
    ),
  );
  static BoxDecoration get gradientPurpleToBlueGray => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.purple900,
        appTheme.purple90001,
        appTheme.blueGray90034,
      ],
    ),
  );
  static BoxDecoration get gradientRedToIndigoA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, -0.07),
      end: Alignment(1.02, 1.11),
      colors: [appTheme.red50003, appTheme.indigoA70002],
    ),
  );
  static BoxDecoration get gradientRedToOrange => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0.26),
      end: Alignment(0.5, 1),
      colors: [appTheme.red60000, appTheme.orange30007],
    ),
  );
  static BoxDecoration get gradientRedToOrange30007 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.red60000, appTheme.orange30007],
    ),
  );
  static BoxDecoration get gradientRedToPink => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.21, 0.08),
      end: Alignment(0.74, 0.93),
      colors: [appTheme.red90003, appTheme.pinkA200, appTheme.pink200],
    ),
  );
  static BoxDecoration get gradientRedToYellow => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [appTheme.red70001, appTheme.yellow80001],
    ),
  );
  static BoxDecoration get gradientRedToYellow70001 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.5),
      end: Alignment(1, 0.5),
      colors: [appTheme.red70001, appTheme.yellow70001],
    ),
  );
  static BoxDecoration get gradientTealACToCyanC => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.02),
      end: Alignment(0.97, 0.91),
      colors: [appTheme.tealA4004c, appTheme.cyan9004c],
    ),
  );
  static BoxDecoration get gradientTealAToBlueA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.95, -0.08),
      end: Alignment(0, 1),
      colors: [appTheme.tealA400, appTheme.blueA700],
    ),
  );
  static BoxDecoration get gradientTealAToOrange => BoxDecoration(
    border: Border.all(color: appTheme.orangeA20002, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.tealA200, appTheme.orange900, appTheme.orange900],
    ),
  );
  static BoxDecoration get gradientTealToGreenCe => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 1),
      end: Alignment(0.5, 0),
      colors: [
        appTheme.teal90000,
        appTheme.green800Ce,
        appTheme.green800Ce.withValues(alpha: 0),
      ],
    ),
  );
  static BoxDecoration get gradientTealToIndigo => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, -0.07),
      end: Alignment(1.02, 1.11),
      colors: [appTheme.teal40003, appTheme.indigo50001],
    ),
  );
  static BoxDecoration get gradientTealToLime => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0.26),
      end: Alignment(0.5, 1),
      colors: [appTheme.teal80000, appTheme.lime70002],
    ),
  );
  static BoxDecoration get gradientTealToLime70003 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.teal80000, appTheme.lime70003],
    ),
  );
  static BoxDecoration get gradientYellowAToAmber => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.49, 0),
      end: Alignment(0.49, 1),
      colors: [appTheme.yellowA70005, appTheme.amber60003],
    ),
  );
  static BoxDecoration get gradientYellowAToGreenA => BoxDecoration(
    border: Border.all(
      color: appTheme.yellowA70004.withValues(alpha: 0.06),
      width: 1.h,
    ),
    gradient: LinearGradient(
      begin: Alignment(-0.15, 1.16),
      end: Alignment(1, 0),
      colors: [
        appTheme.yellowA70004,
        appTheme.green70001,
        appTheme.greenA70003,
      ],
    ),
  );
  static BoxDecoration get gradientYellowAToGreenA70003 => BoxDecoration(
    border: Border.all(color: appTheme.yellowA70004, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(-0.15, 1.16),
      end: Alignment(1, 0),
      colors: [
        appTheme.yellowA70004,
        appTheme.green70001,
        appTheme.greenA70003,
      ],
    ),
  );
  static BoxDecoration get gradientYellowAToGreenA700031 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(-0.15, 1.16),
      end: Alignment(1, 0),
      colors: [
        appTheme.yellowA70004,
        appTheme.green70001,
        appTheme.greenA70003,
      ],
    ),
  );
  static BoxDecoration get gradientYellowAToGreenA700032 => BoxDecoration(
    border: Border.all(
      color: appTheme.yellowA70004.withValues(alpha: 0.2),
      width: 1.h,
    ),
    gradient: LinearGradient(
      begin: Alignment(-0.15, 1.16),
      end: Alignment(1, 0),
      colors: [
        appTheme.yellowA70004.withValues(alpha: 0.5),
        appTheme.green70001.withValues(alpha: 0.5),
        appTheme.greenA70003.withValues(alpha: 0.5),
      ],
    ),
  );
  static BoxDecoration get gradientYellowAToOrange => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [
        appTheme.yellowA10001,
        appTheme.yellowA70003,
        appTheme.orange80003,
      ],
    ),
  );
  static BoxDecoration get gradientYellowAToPrimaryContainer => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, 0.02),
      end: Alignment(0.97, 0.81),
      colors: [
        appTheme.yellowA400.withValues(alpha: 0.3),
        theme.colorScheme.primaryContainer,
      ],
    ),
  );
  static BoxDecoration get gradientYellowToLime => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.04, 0.44),
      end: Alignment(0.83, 0.44),
      colors: [appTheme.yellow40001, appTheme.lime70001],
    ),
  );
  static BoxDecoration get gradientYellowToOrangeA => BoxDecoration(
    border: Border.all(color: appTheme.amberA400, width: 1.h),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.yellow40002, appTheme.orangeA70003],
    ),
  );
  static BoxDecoration get gradientYellowToPurpleA => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0, -0.07),
      end: Alignment(1.02, 1.11),
      colors: [appTheme.yellow70006, appTheme.purpleA40002],
    ),
  );
  // Green decorations
  static BoxDecoration get green1 => BoxDecoration(color: appTheme.green700);
  // Linear decorations
  static BoxDecoration get linear => BoxDecoration(
    border: Border(
      left: BorderSide(color: theme.colorScheme.onPrimary, width: 1.h),
      bottom: BorderSide(color: theme.colorScheme.onPrimary, width: 1.h),
      right: BorderSide(color: theme.colorScheme.onPrimary, width: 1.h),
    ),
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.orangeA70002, appTheme.red90004],
    ),
  );
  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(color: appTheme.gray90001);
  static BoxDecoration get outlineAmberA =>
      BoxDecoration(border: Border.all(color: appTheme.amberA400, width: 1.h));
  static BoxDecoration get outlineAmberA10004 => BoxDecoration();
  static BoxDecoration get outlineAmberA400 => BoxDecoration(
    color: appTheme.gray90001,
    border: Border.all(
      color: appTheme.amberA400.withValues(alpha: 0.2),
      width: 1.h,
    ),
  );
  static BoxDecoration get outlineAmberA4001 => BoxDecoration(
    color: appTheme.gray90001,
    border: Border.all(color: appTheme.amberA400, width: 1.h),
  );
  static BoxDecoration get outlineAmberA4002 => BoxDecoration();
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack900 => BoxDecoration();
  static BoxDecoration get outlineBlack90072 => BoxDecoration();
  static BoxDecoration get outlineBlack9001 => BoxDecoration();
  static BoxDecoration get outlineBlack90010 => BoxDecoration();
  static BoxDecoration get outlineBlack90011 => BoxDecoration();
  static BoxDecoration get outlineBlack90012 => BoxDecoration();
  static BoxDecoration get outlineBlack90013 => BoxDecoration();
  static BoxDecoration get outlineBlack90014 => BoxDecoration();
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
    color: appTheme.gray90001,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(alpha: 0.25),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
    color: appTheme.gray90001,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(alpha: 0.2),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, -4),
      ),
    ],
  );
  static BoxDecoration get outlineBlack9004 => BoxDecoration();
  static BoxDecoration get outlineBlack9005 => BoxDecoration(
    color: appTheme.gray90002,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(alpha: 0.2),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 2),
      ),
    ],
  );
  static BoxDecoration get outlineBlack9006 => BoxDecoration();
  static BoxDecoration get outlineBlack9007 => BoxDecoration();
  static BoxDecoration get outlineBlack9008 => BoxDecoration();
  static BoxDecoration get outlineBlack9009 => BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
    color: appTheme.gray90001,
    border: Border.all(color: appTheme.blueGray90012, width: 1.h),
  );
  static BoxDecoration get outlineBlueGrayF => BoxDecoration(
    color: appTheme.gray90002.withValues(alpha: 0.98),
    border: Border.all(color: appTheme.blueGray900F9, width: 1.h),
  );
  static BoxDecoration get outlineBluegray20005 => BoxDecoration(
    border: Border.all(
      color: appTheme.blueGray20005,
      width: 3.h,
      strokeAlign: BorderSide.strokeAlignCenter,
    ),
  );
  static BoxDecoration get outlineBluegray400 => BoxDecoration(
    border: Border.all(color: appTheme.blueGray400, width: 1.h),
  );
  static BoxDecoration get outlineBluegray40044 => BoxDecoration(
    color: appTheme.black90030,
    border: Border.all(color: appTheme.blueGray40044, width: 1.h),
  );
  static BoxDecoration get outlineBluegray70001 => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
    border: Border.all(color: appTheme.blueGray70001, width: 1.h),
  );
  static BoxDecoration get outlineBluegray700011 => BoxDecoration(
    color: appTheme.gray90002,
    border: Border.all(color: appTheme.blueGray70001, width: 1.h),
  );
  static BoxDecoration get outlineBluegray70006 => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
    border: Border.all(color: appTheme.blueGray70006, width: 1.h),
  );
  static BoxDecoration get outlineBluegray90004 => BoxDecoration(
    border: Border.all(color: appTheme.blueGray90004, width: 4.h),
  );
  static BoxDecoration get outlineBluegray90012 => BoxDecoration(
    color: appTheme.gray90002,
    border: Border.all(color: appTheme.blueGray90012, width: 1.h),
  );
  static BoxDecoration get outlineBluegray900121 => BoxDecoration(
    color: appTheme.gray90025,
    border: Border.all(color: appTheme.blueGray90012, width: 1.h),
  );
  static BoxDecoration get outlineBluegray900122 => BoxDecoration(
    color: appTheme.blueGray90016,
    border: Border.all(color: appTheme.blueGray90012, width: 1.h),
  );
  static BoxDecoration get outlineBluegray900123 => BoxDecoration(
    color: appTheme.gray80015,
    border: Border.all(color: appTheme.blueGray90012, width: 2.h),
  );
  static BoxDecoration get outlineBluegray90038 => BoxDecoration(
    border: Border.all(color: appTheme.blueGray90038, width: 1.2.h),
  );
  static BoxDecoration get outlineBluegray90041 => BoxDecoration(
    color: appTheme.gray90002,
    border: Border.all(color: appTheme.blueGray90041, width: 1.h),
  );
  static BoxDecoration get outlineCyan => BoxDecoration(
    boxShadow: [
      BoxShadow(color: appTheme.cyan900),
      BoxShadow(
        color: appTheme.blueGray90039,
        spreadRadius: 0,
        blurRadius: 15,
        offset: Offset(0, 3),
      ),
    ],
  );
  static BoxDecoration get outlineDeepOrange => BoxDecoration();
  static BoxDecoration get outlineDeeporange90004 => BoxDecoration();
  static BoxDecoration get outlineGray => BoxDecoration(
    color: appTheme.gray90002,
    border: Border.all(color: appTheme.gray90022, width: 1.h),
  );
  static BoxDecoration get outlineGray500 => BoxDecoration(
    color: theme.colorScheme.onPrimary,
    border: Border.all(
      color: appTheme.gray500,
      width: 2.h,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
    boxShadow: [
      BoxShadow(
        color: appTheme.blueA200.withValues(alpha: 0.2),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );
  static BoxDecoration get outlineGray50003 => BoxDecoration();
  static BoxDecoration get outlineGray5001 => BoxDecoration(
    color: appTheme.gray90002,
    border: Border.all(color: appTheme.gray500, width: 1.h),
  );
  static BoxDecoration get outlineGray70004 => BoxDecoration(
    boxShadow: [
      BoxShadow(color: appTheme.gray70004),
      BoxShadow(
        color: appTheme.gray80017,
        spreadRadius: 0,
        blurRadius: 15,
        offset: Offset(0, 3),
      ),
    ],
  );
  static BoxDecoration get outlineGray90001 => BoxDecoration(
    color: appTheme.blueGray400,
    border: Border.all(
      color: appTheme.gray90001,
      width: 6.h,
      strokeAlign: BorderSide.strokeAlignCenter,
    ),
  );
  static BoxDecoration get outlineGray900011 => BoxDecoration(
    color: appTheme.gray90001,
    border: Border.all(color: appTheme.gray90001, width: 1.h),
  );
  static BoxDecoration get outlineGray90012 => BoxDecoration();
  static BoxDecoration get outlineGray90029 => BoxDecoration(
    border: Border.all(
      color: appTheme.gray90029,
      width: 1.h,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  );
  static BoxDecoration get outlineGray90038 => BoxDecoration();
  static BoxDecoration get outlineGray90040 => BoxDecoration();
  static BoxDecoration get outlineGray900401 => BoxDecoration();
  static BoxDecoration get outlineGreen => BoxDecoration();
  static BoxDecoration get outlineGreen40002 => BoxDecoration(
    color: appTheme.green90017,
    border: Border.all(
      color: appTheme.green40002,
      width: 1.h,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  );
  static BoxDecoration get outlineGreen90007 => BoxDecoration(
    color: appTheme.gray90026,
    border: Border.all(color: appTheme.green90007, width: 1.h),
  );
  static BoxDecoration get outlineGreen90023 => BoxDecoration();
  static BoxDecoration get outlineIndigo => BoxDecoration(
    color: appTheme.lightGreen5001,
    border: Border.all(
      color: appTheme.indigo50,
      width: 1.h,
      strokeAlign: BorderSide.strokeAlignCenter,
    ),
  );
  static BoxDecoration get outlineIndigo50 => BoxDecoration(
    color: appTheme.lightGreenA70006,
    border: Border.all(
      color: appTheme.indigo50,
      width: 1.h,
      strokeAlign: BorderSide.strokeAlignCenter,
    ),
  );
  static BoxDecoration get outlineIndigoA => BoxDecoration(
    color: appTheme.gray80010,
    border: Border(
      bottom: BorderSide(
        color: appTheme.indigoA10001.withValues(alpha: 0.1),
        width: 1.h,
      ),
      right: BorderSide(
        color: appTheme.indigoA10001.withValues(alpha: 0.1),
        width: 1.h,
      ),
    ),
  );
  static BoxDecoration get outlineLightGreen => BoxDecoration(
    border: Border(
      right: BorderSide(color: appTheme.lightGreen90006, width: 1.h),
    ),
  );
  static BoxDecoration get outlineLightGreenA => BoxDecoration(
    color: appTheme.lightGreenA700,
    border: Border.all(
      color: appTheme.lightGreenA700.withValues(alpha: 0.19),
      width: 2.h,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  );
  static BoxDecoration get outlineLightgreen80003 => BoxDecoration(
    color: appTheme.black900Cc,
    border: Border.all(color: appTheme.lightGreen80003, width: 1.h),
  );
  static BoxDecoration get outlineLightgreen80006 => BoxDecoration(
    border: Border.all(
      color: appTheme.lightGreen80006,
      width: 2.26.h,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  );
  static BoxDecoration get outlineLightgreenA700 => BoxDecoration(
    color: appTheme.gray90001,
    border: Border.all(color: appTheme.lightGreenA700, width: 1.6.h),
  );
  static BoxDecoration get outlineLightgreenA70005 => BoxDecoration(
    color: theme.colorScheme.onPrimary,
    border: Border.all(
      color: appTheme.lightGreenA70005,
      width: 2.h,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
    boxShadow: [
      BoxShadow(
        color: appTheme.green90033,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );
  static BoxDecoration get outlineLightgreenA700051 => BoxDecoration(
    color: theme.colorScheme.onPrimary,
    border: Border.all(
      color: appTheme.lightGreenA70005,
      width: 2.h,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
    boxShadow: [
      BoxShadow(
        color: appTheme.blueA200.withValues(alpha: 0.2),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 4),
      ),
    ],
  );
  static BoxDecoration get outlineLightgreenA7001 => BoxDecoration(
    color: theme.colorScheme.onErrorContainer,
    border: Border.all(
      color: appTheme.lightGreenA700,
      width: 1.h,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  );
  static BoxDecoration get outlineLightgreenA7002 => BoxDecoration(
    border: Border.all(
      color: appTheme.lightGreenA700.withValues(alpha: 0.7),
      width: 1.h,
    ),
  );
  static BoxDecoration get outlineLightgreenA7003 => BoxDecoration(
    border: Border.all(color: appTheme.lightGreenA700, width: 1.6.h),
  );
  static BoxDecoration get outlineLime => BoxDecoration(
    boxShadow: [
      BoxShadow(color: appTheme.lime90005),
      BoxShadow(
        color: appTheme.gray80016,
        spreadRadius: 0,
        blurRadius: 15,
        offset: Offset(0, 3),
      ),
    ],
  );
  static BoxDecoration get outlineOnPrimary => BoxDecoration(
    color: appTheme.gray800,
    border: Border.all(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
      width: 1.h,
    ),
  );
  static BoxDecoration get outlineOnPrimary1 => BoxDecoration(
    color: appTheme.gray800,
    border: Border(
      top: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
        width: 1.h,
      ),
      bottom: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
        width: 1.h,
      ),
      right: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
        width: 1.h,
      ),
    ),
  );
  static BoxDecoration get outlineOnPrimary10 => BoxDecoration(
    color: appTheme.blueGray90027,
    border: Border(
      bottom: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
        width: 1.h,
      ),
      right: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
        width: 1.h,
      ),
    ),
  );
  static BoxDecoration get outlineOnPrimary11 => BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
        width: 1.h,
      ),
      right: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.1),
        width: 1.h,
      ),
    ),
  );
  static BoxDecoration get outlineOnPrimary12 => BoxDecoration(
    border: Border.all(color: theme.colorScheme.onPrimary, width: 1.4.h),
  );
  static BoxDecoration get outlineOnPrimary13 => BoxDecoration(
    boxShadow: [
      BoxShadow(color: theme.colorScheme.onPrimary.withValues(alpha: 0.4)),
      BoxShadow(
        color: appTheme.gray60005,
        spreadRadius: 0,
        blurRadius: 4,
        offset: Offset(0, 0),
      ),
    ],
  );
  static BoxDecoration get outlineOnPrimary14 => BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
        width: 1.h,
      ),
    ),
  );
  static BoxDecoration get outlineOnPrimary15 => BoxDecoration(
    boxShadow: [
      BoxShadow(color: theme.colorScheme.onPrimary.withValues(alpha: 0.25)),
      BoxShadow(
        color: appTheme.orange20003,
        spreadRadius: 0,
        blurRadius: 1,
        offset: Offset(0, 1),
      ),
    ],
  );
  static BoxDecoration get outlineOnPrimary16 => BoxDecoration(
    boxShadow: [
      BoxShadow(color: theme.colorScheme.onPrimary.withValues(alpha: 0.25)),
      BoxShadow(
        color: appTheme.red60001,
        spreadRadius: 0,
        blurRadius: 1,
        offset: Offset(0, 1),
      ),
    ],
  );
  static BoxDecoration get outlineOnPrimary17 => BoxDecoration(
    boxShadow: [
      BoxShadow(color: theme.colorScheme.onPrimary.withValues(alpha: 0.25)),
      BoxShadow(
        color: appTheme.amber20002,
        spreadRadius: 0,
        blurRadius: 1,
        offset: Offset(0, 1),
      ),
    ],
  );
  static BoxDecoration get outlineOnPrimary18 => BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
        width: 1.h,
      ),
    ),
  );
  static BoxDecoration get outlineOnPrimary19 => BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.15),
        width: 1.h,
      ),
    ),
  );
  static BoxDecoration get outlineOnPrimary2 => BoxDecoration(
    color: appTheme.blueGray90002,
    border: Border(
      bottom: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
        width: 1.h,
      ),
      right: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
        width: 1.h,
      ),
    ),
  );
  static BoxDecoration get outlineOnPrimary3 => BoxDecoration(
    color: appTheme.gray800,
    border: Border(
      left: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
        width: 1.h,
      ),
      bottom: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
        width: 1.h,
      ),
      right: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
        width: 1.h,
      ),
    ),
  );
  static BoxDecoration get outlineOnPrimary4 => BoxDecoration(
    color: appTheme.gray800,
    border: Border(
      bottom: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
        width: 1.h,
      ),
      right: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
        width: 1.h,
      ),
    ),
  );
  static BoxDecoration get outlineOnPrimary5 => BoxDecoration(
    color: appTheme.blueGray90002,
    border: Border(
      left: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
        width: 1.h,
      ),
      bottom: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
        width: 1.h,
      ),
      right: BorderSide(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
        width: 1.h,
      ),
    ),
  );
  static BoxDecoration get outlineOnPrimary6 => BoxDecoration(
    color: appTheme.blueGray90002,
    border: Border.all(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
      width: 1.h,
    ),
  );
  static BoxDecoration get outlineOnPrimary7 => BoxDecoration(
    color: appTheme.blueGray100.withValues(alpha: 0.1),
    border: Border.all(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
      width: 0.81.h,
    ),
  );
  static BoxDecoration get outlineOnPrimary8 => BoxDecoration(
    color: appTheme.blueGray80008,
    border: Border.all(
      color: theme.colorScheme.onPrimary.withValues(alpha: 0.2),
      width: 1.h,
      strokeAlign: BorderSide.strokeAlignOutside,
    ),
  );
  static BoxDecoration get outlineOnPrimary9 => BoxDecoration(
    border: Border.all(color: theme.colorScheme.onPrimary, width: 2.2.h),
  );
  static BoxDecoration get outlineOrange => BoxDecoration(
    color: appTheme.gray90002,
    border: Border.all(color: appTheme.orange70001, width: 1.h),
  );
  static BoxDecoration get outlineOrangeC => BoxDecoration(
    boxShadow: [
      BoxShadow(color: appTheme.orange50C6),
      BoxShadow(
        color: appTheme.orange20003,
        spreadRadius: 0,
        blurRadius: 1,
        offset: Offset(1, 1),
      ),
    ],
  );
  static BoxDecoration get outlinePink => BoxDecoration();
  static BoxDecoration get outlinePurpleAD => BoxDecoration(
    boxShadow: [
      BoxShadow(color: appTheme.purpleA4003d),
      BoxShadow(
        color: appTheme.indigo90001,
        spreadRadius: 0,
        blurRadius: 15,
        offset: Offset(0, 3),
      ),
    ],
  );
  static BoxDecoration get outlineTeal => BoxDecoration();
  static BoxDecoration get outlineTeal80001 => BoxDecoration(
    boxShadow: [
      BoxShadow(color: appTheme.teal80001),
      BoxShadow(
        color: appTheme.blueGray80012,
        spreadRadius: 0,
        blurRadius: 15,
        offset: Offset(0, 3),
      ),
    ],
  );
  static BoxDecoration get outlineYellowA => BoxDecoration(
    color: appTheme.gray90001,
    border: Border.all(
      color: appTheme.yellowA70004.withValues(alpha: 0.06),
      width: 2.h,
    ),
  );
  static BoxDecoration get outlineYellowA40004 => BoxDecoration();
  static BoxDecoration get outlineYellowA70004 => BoxDecoration(
    color: appTheme.green90014,
    boxShadow: [
      BoxShadow(
        color: appTheme.yellowA70004,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 0),
      ),
    ],
  );
  static BoxDecoration get outline1 => BoxDecoration(color: appTheme.gray90001);
  static BoxDecoration get outline10 => BoxDecoration();
  static BoxDecoration get outline11 => BoxDecoration();
  static BoxDecoration get outline12 => BoxDecoration();
  static BoxDecoration get outline13 => BoxDecoration(
    color: appTheme.gray90001,
    image: DecorationImage(
      image: Svg(ImageConstant.imgMaskGroupGray90001),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get outline14 =>
      BoxDecoration(color: appTheme.green40001.withValues(alpha: 0.1));
  static BoxDecoration get outline15 =>
      BoxDecoration(color: appTheme.lightGreenA700.withValues(alpha: 0.06));
  static BoxDecoration get outline17 =>
      BoxDecoration(color: appTheme.gray90001);
  static BoxDecoration get outline18 => BoxDecoration();
  static BoxDecoration get outline19 => BoxDecoration();
  static BoxDecoration get outline2 =>
      BoxDecoration(color: appTheme.blueGray900);
  static BoxDecoration get outline20 =>
      BoxDecoration(color: appTheme.gray8004f);
  static BoxDecoration get outline21 =>
      BoxDecoration(color: appTheme.blueGray2009901);
  static BoxDecoration get outline3 => BoxDecoration(color: appTheme.gray9004c);
  static BoxDecoration get outline4 =>
      BoxDecoration(color: appTheme.black900.withValues(alpha: 0.15));
  static BoxDecoration get outline5 =>
      BoxDecoration(color: appTheme.black900.withValues(alpha: 0.1));
  static BoxDecoration get outline6 =>
      BoxDecoration(color: appTheme.black900.withValues(alpha: 0.7));
  static BoxDecoration get outline7 =>
      BoxDecoration(color: appTheme.green40059);
  static BoxDecoration get outline8 => BoxDecoration(color: appTheme.gray90002);
  static BoxDecoration get outline9 => BoxDecoration();
  // Red decorations
  static BoxDecoration get red => BoxDecoration(color: appTheme.red400);
  // Column decorations
  static BoxDecoration get column10 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column11 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column110 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.img21812x375),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column12 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column13 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column14 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column150 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle620),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column158 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle412),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column189 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgEllipse27),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column19 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column190 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgEllipse27),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column195 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup724Black900),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column196 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle412),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column2 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgGroup1321314676),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column200 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgBettingRebate1),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column21 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column210 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgUnion),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column222 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgWrapper),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column23 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column232 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column233 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column234 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column235 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column236 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column237 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column238 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column243 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup1084),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column248 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup12532Onprimary),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column25 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column259 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgMaskGroupOrange30001),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column268 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgMaskGroupOrange30001),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column271 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgMaskGroupOrange30001),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column272 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup12532Onprimary),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column276 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgMaskGroupOrange30001),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column277 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup12532Onprimary),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column278 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSettingsAmber800),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column279 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgMaskGroupOrange30001),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column28 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column280 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgMaskGroupOrange30001),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column289 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup14240),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column295 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup1084),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column299 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup1084),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column302 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup1084),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column304 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgGroup12503YellowA20003),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column305 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup1084),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column307 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup1084),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column310 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgGroup12503YellowA20003),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column32 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column326 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgUnionGray9003366x262),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column346 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup1084),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column361 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgFrame2131329793),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column374 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup1071),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column377 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle620),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column379 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle144),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column381 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgMaskGroup454x375),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column383 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgGroup2131330299),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column387 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup14240),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column39 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column393 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle412),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column396 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup13080),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column399 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup1084),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column404 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle623),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column405 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup1084),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column407 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle623),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column410 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle412),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column411 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup13080),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column413 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle412),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column418 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90044111x90),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column422 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90045111x90),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column425 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90045111x90),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column429 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90046111x90),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column433 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90047111x90),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column443 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgYellow30007),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column446 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgMaskGroup130x344),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column448 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgMaskGroup130x344),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column451 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgMaskGroup130x344),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column62 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column63 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column64 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column65 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column66 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column67 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column84 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column85 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column86 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column87 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column88 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column89 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column9 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get column90 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131329922),
      fit: BoxFit.fill,
    ),
  );
  // Fs decorations
  static BoxDecoration get fs => BoxDecoration();
  static BoxDecoration get fs1 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.lightGreenA70001, appTheme.lightGreen800],
    ),
  );
  static BoxDecoration get fs10bg => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
    boxShadow: [
      BoxShadow(
        color: appTheme.black900.withValues(alpha: 0.25),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(0, 2),
      ),
    ],
  );
  static BoxDecoration get fs11bg =>
      BoxDecoration(color: appTheme.blueGray90037);
  static BoxDecoration get fs15 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.gray80008, appTheme.blueGray90020],
    ),
  );
  static BoxDecoration get fs2 =>
      BoxDecoration(border: Border.all(color: appTheme.gray90001, width: 1.h));
  static BoxDecoration get fs23 =>
      BoxDecoration(color: appTheme.lightGreenA700);
  static BoxDecoration get fs2bg => BoxDecoration(color: appTheme.gray90002);
  static BoxDecoration get fs3qbg => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.blueGray90007, appTheme.gray90001],
    ),
  );
  static BoxDecoration get fs4bg => BoxDecoration(color: appTheme.gray90001);
  static BoxDecoration get fs6wz => BoxDecoration(
    color: appTheme.blueGray70001,
    border: Border.all(color: appTheme.blueGray90017, width: 1.h),
  );
  static BoxDecoration get fs7wz =>
      BoxDecoration(color: appTheme.blueGray400.withValues(alpha: 0.98));
  static BoxDecoration get fs9 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.5, 0),
      end: Alignment(0.5, 1),
      colors: [appTheme.amber40001, appTheme.amber700],
    ),
  );
  // Row decorations
  static BoxDecoration get row149 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle556),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row193 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgUnionGray90033),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row194 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgUnionGray90033),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row215 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgGroup1321314615),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row217 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgGroup1321314615),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row220 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgGroup1321314615),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row264 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgRectangle629),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row266 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgRectangle631),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row303 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.img8LightGreen10002),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row306 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.img8LightGreen10002),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row415 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgGroup14406),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row419 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgGroup14406),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row420 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90045),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row423 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgGroup14406),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row424 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90045),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row426 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgGroup14406BlueGray80012),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row430 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgGroup14406),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row437 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90044111x345),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row438 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90049),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get row439 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90047111x345),
      fit: BoxFit.fill,
    ),
  );
  // Stack decorations
  static BoxDecoration get stack105 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgUserGreen400),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack199 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup12532),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack263 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgEllipse180),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack265 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgRectangle630),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack291 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgVector9),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack292 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgVector1050x70),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack293 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle1274),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack313 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131330058),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack316 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131330042),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack317 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.img8290x290),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack318 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgOnprimary285x285),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack329 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgGroup2131330058),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack380 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgVector795x375),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack389 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgVector9),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack390 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgVector1050x70),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack391 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle1274),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack416 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90044),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack427 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90046),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack431 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90047),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack434 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgGroup14406),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack436 => BoxDecoration(
    image: DecorationImage(
      image: Svg(ImageConstant.imgSubtractGray90046111x345),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack455 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle1760),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack456 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle1760),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack457 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle1760),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack458 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle1760),
      fit: BoxFit.fill,
    ),
  );
  static BoxDecoration get stack459 => BoxDecoration(
    image: DecorationImage(
      image: AssetImage(ImageConstant.imgRectangle1760),
      fit: BoxFit.fill,
    ),
  );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder10 => BorderRadius.circular(10.h);
  static BorderRadius get circleBorder14 => BorderRadius.circular(14.h);
  static BorderRadius get circleBorder162 => BorderRadius.circular(162.h);
  static BorderRadius get circleBorder24 => BorderRadius.circular(24.h);
  // Custom borders
  static BorderRadius get customBorderBL10 =>
      BorderRadius.vertical(bottom: Radius.circular(10.h));
  static BorderRadius get customBorderBL12 =>
      BorderRadius.only(bottomLeft: Radius.circular(12.h));
  static BorderRadius get customBorderBL24 => BorderRadius.only(
    topLeft: Radius.circular(12.h),
    topRight: Radius.circular(12.h),
    bottomLeft: Radius.circular(24.h),
    bottomRight: Radius.circular(12.h),
  );
  static BorderRadius get customBorderBL30 => BorderRadius.only(
    topLeft: Radius.circular(12.h),
    topRight: Radius.circular(12.h),
    bottomLeft: Radius.circular(30.h),
    bottomRight: Radius.circular(12.h),
  );
  static BorderRadius get customBorderBL5 =>
      BorderRadius.vertical(bottom: Radius.circular(5.h));
  static BorderRadius get customBorderBL8 =>
      BorderRadius.only(bottomLeft: Radius.circular(8.h));
  static BorderRadius get customBorderBR8 =>
      BorderRadius.only(bottomRight: Radius.circular(8.h));
  static BorderRadius get customBorderLR6 =>
      BorderRadius.horizontal(right: Radius.circular(6.h));
  static BorderRadius get customBorderLR8 =>
      BorderRadius.only(topRight: Radius.circular(8.h));
  static BorderRadius get customBorderTL10 =>
      BorderRadius.vertical(top: Radius.circular(10.h));
  static BorderRadius get customBorderTL101 => BorderRadius.only(
    topLeft: Radius.circular(10.h),
    topRight: Radius.circular(2.h),
    bottomLeft: Radius.circular(2.h),
    bottomRight: Radius.circular(10.h),
  );
  static BorderRadius get customBorderTL14 =>
      BorderRadius.vertical(top: Radius.circular(14.h));
  static BorderRadius get customBorderTL20 =>
      BorderRadius.vertical(top: Radius.circular(20.h));
  static BorderRadius get customBorderTL201 => BorderRadius.only(
    topLeft: Radius.circular(20.h),
    topRight: Radius.circular(20.h),
    bottomLeft: Radius.circular(12.h),
    bottomRight: Radius.circular(12.h),
  );
  static BorderRadius get customBorderTL22 => BorderRadius.only(
    topLeft: Radius.circular(22.h),
    bottomLeft: Radius.circular(18.h),
  );
  static BorderRadius get customBorderTL30 => BorderRadius.only(
    topLeft: Radius.circular(30.h),
    topRight: Radius.circular(12.h),
    bottomLeft: Radius.circular(12.h),
    bottomRight: Radius.circular(12.h),
  );
  static BorderRadius get customBorderTL5 =>
      BorderRadius.vertical(top: Radius.circular(5.h));
  static BorderRadius get customBorderTL6 => BorderRadius.only(
    topLeft: Radius.circular(6.h),
    bottomRight: Radius.circular(6.h),
  );
  static BorderRadius get customBorderTL8 =>
      BorderRadius.only(topLeft: Radius.circular(8.h));
  static BorderRadius get customBorderTL81 =>
      BorderRadius.horizontal(left: Radius.circular(8.h));
  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(1.h);
  static BorderRadius get roundedBorder20 => BorderRadius.circular(20.h);
  static BorderRadius get roundedBorder30 => BorderRadius.circular(30.h);
  static BorderRadius get roundedBorder38 => BorderRadius.circular(38.h);
  static BorderRadius get roundedBorder44 => BorderRadius.circular(44.h);
  static BorderRadius get roundedBorder5 => BorderRadius.circular(5.h);
  static BorderRadius get roundedBorder62 => BorderRadius.circular(62.h);
  static BorderRadius get roundedBorder72 => BorderRadius.circular(72.h);
}

import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get microsoftYaHei {
    return copyWith(fontFamily: 'Microsoft YaHei');
  }

  TextStyle get aaHouDiHei {
    return copyWith(fontFamily: 'AaHouDiHei');
  }

  TextStyle get notoSans {
    return copyWith(fontFamily: 'Noto Sans');
  }

  TextStyle get sFProText {
    return copyWith(fontFamily: 'SF Pro Text');
  }

  TextStyle get sFProRounded {
    return copyWith(fontFamily: 'SF Pro Rounded');
  }

  TextStyle get dDINCondensed {
    return copyWith(fontFamily: 'D-DIN Condensed');
  }

  TextStyle get arial {
    return copyWith(fontFamily: 'Arial');
  }

  TextStyle get inter {
    return copyWith(fontFamily: 'Inter');
  }

  TextStyle get helveticaNeueLTPro {
    return copyWith(fontFamily: 'Helvetica Neue LT Pro');
  }

  TextStyle get lilitaOne {
    return copyWith(fontFamily: 'Lilita One');
  }

  TextStyle get calistoga {
    return copyWith(fontFamily: 'Calistoga');
  }

  TextStyle get sAF {
    return copyWith(fontFamily: 'SAF');
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Aa text style
  static TextStyle get aaHouDiHeiYellow30006 =>
      TextStyle(
        color: appTheme.yellow30006,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w400,
      ).aaHouDiHei;
  static TextStyle get aaHouDiHeiYellow30006Regular =>
      TextStyle(
        color: appTheme.yellow30006,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w400,
      ).aaHouDiHei;
  // Arial text style
  static TextStyle get arialOnPrimary =>
      TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w700,
      ).arial;
  // Body text style
  static TextStyle get bodyLarge18 =>
      theme.textTheme.bodyLarge!.copyWith(fontSize: 18.fSize);
  static TextStyle get bodyLargeAaHouDiHei =>
      theme.textTheme.bodyLarge!.aaHouDiHei.copyWith(fontSize: 18.fSize);
  static TextStyle get bodyLargeAmber50002 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.amber50002);
  static TextStyle get bodyLargeAmberA400 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.amberA400);
  static TextStyle get bodyLargeBlack900 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.black900);
  static TextStyle get bodyLargeBlack90018 => theme.textTheme.bodyLarge!
      .copyWith(color: appTheme.black900, fontSize: 18.fSize);
  static TextStyle get bodyLargeBlue400 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.blue400);
  static TextStyle get bodyLargeBluegray400 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.blueGray400);
  static TextStyle get bodyLargeGray90031 =>
      theme.textTheme.bodyLarge!.copyWith(color: appTheme.gray90031);
  static TextStyle get bodyLargeLightgreenA700 => theme.textTheme.bodyLarge!
      .copyWith(color: appTheme.lightGreenA700, fontSize: 18.fSize);
  static TextStyle get bodyLargeRed40001 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.red40001,
    fontSize: 18.fSize,
  );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyLarge_2 => theme.textTheme.bodyLarge!;
  static TextStyle get bodyMediumAaHouDiHeiOnPrimary => theme
      .textTheme
      .bodyMedium!
      .aaHouDiHei
      .copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get bodyMediumBlack900 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.black900);
  static TextStyle get bodyMediumBlue400 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blue400);
  static TextStyle get bodyMediumBlueA20001 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueA20001);
  static TextStyle get bodyMediumBluegray200 => theme.textTheme.bodyMedium!
      .copyWith(color: appTheme.blueGray200, fontSize: 15.fSize);
  static TextStyle get bodyMediumBluegray20002 => theme.textTheme.bodyMedium!
      .copyWith(color: appTheme.blueGray20002, fontSize: 13.fSize);
  static TextStyle get bodyMediumBluegray20005 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray20005);
  static TextStyle get bodyMediumBluegray20005_1 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray20005);
  static TextStyle get bodyMediumBluegray20015 => theme.textTheme.bodyMedium!
      .copyWith(color: appTheme.blueGray200, fontSize: 15.fSize);
  static TextStyle get bodyMediumBluegray20015_1 => theme.textTheme.bodyMedium!
      .copyWith(color: appTheme.blueGray200, fontSize: 15.fSize);
  static TextStyle get bodyMediumBluegray200_1 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray200);
  static TextStyle get bodyMediumBluegray30002 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray30002);
  static TextStyle get bodyMediumBluegray400 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray400);
  static TextStyle get bodyMediumBluegray40013 => theme.textTheme.bodyMedium!
      .copyWith(color: appTheme.blueGray400, fontSize: 13.fSize);
  static TextStyle get bodyMediumBluegray40013_1 => theme.textTheme.bodyMedium!
      .copyWith(color: appTheme.blueGray400, fontSize: 13.fSize);
  static TextStyle get bodyMediumBluegray40015 => theme.textTheme.bodyMedium!
      .copyWith(color: appTheme.blueGray400, fontSize: 15.fSize);
  static TextStyle get bodyMediumBluegray40015_1 => theme.textTheme.bodyMedium!
      .copyWith(color: appTheme.blueGray400, fontSize: 15.fSize);
  static TextStyle get bodyMediumBluegray400_1 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray400);
  static TextStyle get bodyMediumBluegray90025 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray90025);
  static TextStyle get bodyMediumBluegray90025_1 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray90025);
  static TextStyle get bodyMediumDeeporangeA40001 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.deepOrangeA40001);
  static TextStyle get bodyMediumGray90002 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray90002);
  static TextStyle get bodyMediumIndigoA10001 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.indigoA10001);
  static TextStyle get bodyMediumInterBluegray30002 =>
      theme.textTheme.bodyMedium!.inter.copyWith(color: appTheme.blueGray30002);
  static TextStyle get bodyMediumLightgreenA40002 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.lightGreenA40002);
  static TextStyle get bodyMediumLightgreenA700 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.lightGreenA700);
  static TextStyle get bodyMediumLightgreenA70015 => theme.textTheme.bodyMedium!
      .copyWith(color: appTheme.lightGreenA700, fontSize: 15.fSize);
  static TextStyle get bodyMediumLightgreenA700_1 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.lightGreenA700);
  static TextStyle get bodyMediumOnPrimary =>
      theme.textTheme.bodyMedium!.copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get bodyMediumOnPrimary13 => theme.textTheme.bodyMedium!
      .copyWith(color: theme.colorScheme.onPrimary, fontSize: 13.fSize);
  static TextStyle get bodyMediumOnPrimary_1 => theme.textTheme.bodyMedium!
      .copyWith(color: theme.colorScheme.onPrimary.withValues(alpha: 0.6));
  static TextStyle get bodyMediumOnPrimary_2 =>
      theme.textTheme.bodyMedium!.copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get bodyMediumOnPrimary_3 =>
      theme.textTheme.bodyMedium!.copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get bodyMediumRed40001 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.red40001);
  static TextStyle get bodyMediumRed90007 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.red90007);
  static TextStyle get bodyMediumRed90007_1 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.red90007);
  static TextStyle get bodyMediumRedA20001 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.redA20001);
  static TextStyle get bodyMediumRedA20003 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.redA20003);
  static TextStyle get bodyMediumSFProTextBluegray400 => theme
      .textTheme
      .bodyMedium!
      .sFProText
      .copyWith(color: appTheme.blueGray400);
  static TextStyle get bodyMediumSFProTextBluegray500 => theme
      .textTheme
      .bodyMedium!
      .sFProText
      .copyWith(color: appTheme.blueGray500);
  static TextStyle get bodyMediumSFProTextBluegray500_1 => theme
      .textTheme
      .bodyMedium!
      .sFProText
      .copyWith(color: appTheme.blueGray500);
  static TextStyle get bodyMediumSFProTextBluegray90025 => theme
      .textTheme
      .bodyMedium!
      .sFProText
      .copyWith(color: appTheme.blueGray90025);
  static TextStyle get bodyMediumTeal500 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.teal500);
  static TextStyle get bodyMediumYellow900 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.yellow900);
  static TextStyle get bodyMediumYellowA40002 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.yellowA40002);
  static TextStyle get bodyMediumYellowA40002_1 =>
      theme.textTheme.bodyMedium!.copyWith(color: appTheme.yellowA40002);
  static TextStyle get bodySmall10 =>
      theme.textTheme.bodySmall!.copyWith(fontSize: 10.fSize);
  static TextStyle get bodySmall10_1 =>
      theme.textTheme.bodySmall!.copyWith(fontSize: 10.fSize);
  static TextStyle get bodySmall11 =>
      theme.textTheme.bodySmall!.copyWith(fontSize: 11.fSize);
  static TextStyle get bodySmallAaHouDiHeiYellow30006 => theme
      .textTheme
      .bodySmall!
      .aaHouDiHei
      .copyWith(color: appTheme.yellow30006, fontSize: 9.fSize);
  static TextStyle get bodySmallAmber10001 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.amber10001);
  static TextStyle get bodySmallAmber50003 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.amber50003);
  static TextStyle get bodySmallAmberA400 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.amberA400);
  static TextStyle get bodySmallAmberA40010 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.amberA400, fontSize: 10.fSize);
  static TextStyle get bodySmallAmberA40010_1 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.amberA400, fontSize: 10.fSize);
  static TextStyle get bodySmallAmberA40011 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.amberA400, fontSize: 11.fSize);
  static TextStyle get bodySmallAmberA400_1 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.amberA400);
  static TextStyle get bodySmallBlack900 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.black900);
  static TextStyle get bodySmallBluegray200 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.blueGray200);
  static TextStyle get bodySmallBluegray200_1 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.blueGray200);
  static TextStyle get bodySmallBluegray300 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.blueGray300);
  static TextStyle get bodySmallBluegray30001 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.blueGray30001);
  static TextStyle get bodySmallBluegray40003 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.blueGray40003);
  static TextStyle get bodySmallBluegray500 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.blueGray500);
  static TextStyle get bodySmallBluegray80001 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.blueGray80001, fontSize: 11.fSize);
  static TextStyle get bodySmallBluegray80002 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.blueGray80002, fontSize: 11.fSize);
  static TextStyle get bodySmallGray60001 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.gray60001, fontSize: 10.fSize);
  static TextStyle get bodySmallGray6000110 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.gray60001, fontSize: 10.fSize);
  static TextStyle get bodySmallGray60002 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray60002);
  static TextStyle get bodySmallGray60003 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.gray60003);
  static TextStyle get bodySmallIndigoA10001 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.indigoA10001);
  static TextStyle get bodySmallInterOnPrimary => theme
      .textTheme
      .bodySmall!
      .inter
      .copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get bodySmallLightblueA700 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.lightBlueA700);
  static TextStyle get bodySmallLightgreenA700 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.lightGreenA700, fontSize: 11.fSize);
  static TextStyle get bodySmallLightgreenA700_1 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.lightGreenA700);
  static TextStyle get bodySmallLightgreenA700_2 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.lightGreenA700);
  static get bodySmallMicrosoftYaHei =>
      theme.textTheme.bodySmall!.microsoftYaHei;
  static TextStyle get bodySmallMicrosoftYaHeiBluegray200 => theme
      .textTheme
      .bodySmall!
      .microsoftYaHei
      .copyWith(color: appTheme.blueGray200);
  static TextStyle get bodySmallMicrosoftYaHeiLightgreenA700 => theme
      .textTheme
      .bodySmall!
      .microsoftYaHei
      .copyWith(color: appTheme.lightGreenA700);
  static TextStyle get bodySmallMicrosoftYaHeiOnPrimary => theme
      .textTheme
      .bodySmall!
      .microsoftYaHei
      .copyWith(color: theme.colorScheme.onPrimary);
  static get bodySmallMicrosoftYaHei_1 =>
      theme.textTheme.bodySmall!.microsoftYaHei;
  static TextStyle get bodySmallOnPrimary => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.onPrimary, fontSize: 11.fSize);
  static TextStyle get bodySmallOnPrimary10 => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.onPrimary, fontSize: 10.fSize);
  static TextStyle get bodySmallOnPrimary10_1 => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.onPrimary, fontSize: 10.fSize);
  static TextStyle get bodySmallOnPrimary10_2 => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.onPrimary, fontSize: 10.fSize);
  static TextStyle get bodySmallOnPrimary8 => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.onPrimary, fontSize: 8.fSize);
  static TextStyle get bodySmallOnPrimary9 => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.onPrimary, fontSize: 9.fSize);
  static TextStyle get bodySmallOnPrimary_1 =>
      theme.textTheme.bodySmall!.copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get bodySmallOnPrimary_2 => theme.textTheme.bodySmall!
      .copyWith(color: theme.colorScheme.onPrimary.withValues(alpha: 0.5));
  static TextStyle get bodySmallOnPrimary_3 =>
      theme.textTheme.bodySmall!.copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get bodySmallOnPrimary_4 =>
      theme.textTheme.bodySmall!.copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get bodySmallPinkA20001 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.pinkA20001);
  static TextStyle get bodySmallRed40001 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.red40001);
  static TextStyle get bodySmallRed4000110 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.red40001, fontSize: 10.fSize);
  static TextStyle get bodySmallRed4000110_1 => theme.textTheme.bodySmall!
      .copyWith(color: appTheme.red40001, fontSize: 10.fSize);
  static get bodySmallSFProText => theme.textTheme.bodySmall!.sFProText;
  static TextStyle get bodySmallSFProTextOnPrimary => theme
      .textTheme
      .bodySmall!
      .sFProText
      .copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get bodySmallTeal90002 =>
      theme.textTheme.bodySmall!.copyWith(color: appTheme.teal90002);
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  // Display text style
  static TextStyle get displayLargeSAFOnPrimary =>
      theme.textTheme.displayLarge!.sAF.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 52.fSize,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get displayMediumAmberA400 =>
      theme.textTheme.displayMedium!.copyWith(color: appTheme.amberA400);
  static TextStyle get displayMediumArialErrorContainer =>
      theme.textTheme.displayMedium!.arial.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 50.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get displayMediumArialOnPrimary => theme
      .textTheme
      .displayMedium!
      .arial
      .copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get displayMediumArialOrange5008 => theme
      .textTheme
      .displayMedium!
      .arial
      .copyWith(color: appTheme.orange5008, fontWeight: FontWeight.w900);
  static TextStyle get displayMediumArialYellow500 =>
      theme.textTheme.displayMedium!.arial.copyWith(color: appTheme.yellow500);
  static TextStyle get displayMediumArialYellowA40002 => theme
      .textTheme
      .displayMedium!
      .arial
      .copyWith(color: appTheme.yellowA40002);
  static TextStyle get displayMediumArialYellowA40002Black => theme
      .textTheme
      .displayMedium!
      .arial
      .copyWith(color: appTheme.yellowA40002, fontWeight: FontWeight.w900);
  static TextStyle get displayMediumArialYellowA40002Black_1 => theme
      .textTheme
      .displayMedium!
      .arial
      .copyWith(color: appTheme.yellowA40002, fontWeight: FontWeight.w900);
  static TextStyle get displayMediumSAFOnPrimary =>
      theme.textTheme.displayMedium!.sAF.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 50.fSize,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get displayMediumYellow40003 =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.yellow40003,
        fontSize: 44.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get displaySmallAmberA400 =>
      theme.textTheme.displaySmall!.copyWith(
        color: appTheme.amberA400,
        fontSize: 35.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static TextStyle get headlineLargeAmber50001 => theme.textTheme.headlineLarge!
      .copyWith(color: appTheme.amber50001, fontWeight: FontWeight.w700);
  static TextStyle get headlineLargeAmberA100 => theme.textTheme.headlineLarge!
      .copyWith(color: appTheme.amberA100, fontWeight: FontWeight.w700);
  static TextStyle get headlineLargeAmberA400 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.amberA400,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get headlineLargeAmberA400Bold =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.amberA400,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get headlineLargeLilitaOneGray90041 =>
      theme.textTheme.headlineLarge!.lilitaOne.copyWith(
        color: appTheme.gray90041,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get headlineLargeLilitaOneOrange5001 =>
      theme.textTheme.headlineLarge!.lilitaOne.copyWith(
        color: appTheme.orange5001,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get headlineLargeNotoSansLightgreenA700 =>
      theme.textTheme.headlineLarge!.notoSans.copyWith(
        color: appTheme.lightGreenA700,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get headlineLargeOrange50 => theme.textTheme.headlineLarge!
      .copyWith(color: appTheme.orange50, fontWeight: FontWeight.w700);
  static TextStyle get headlineLargeSAFOnPrimary =>
      theme.textTheme.headlineLarge!.sAF.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get headlineLargeSAFYellow30004 => theme
      .textTheme
      .headlineLarge!
      .sAF
      .copyWith(color: appTheme.yellow30004, fontWeight: FontWeight.w400);
  static TextStyle get headlineLargeYellow30008 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.yellow30008,
        fontSize: 32.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get headlineLargeYellowA40002 => theme
      .textTheme
      .headlineLarge!
      .copyWith(color: appTheme.yellowA40002, fontSize: 32.fSize);
  static TextStyle get headlineLargeYellowA70001 => theme
      .textTheme
      .headlineLarge!
      .copyWith(color: appTheme.yellowA70001, fontSize: 32.fSize);
  static TextStyle get headlineMediumArialLightgreenA70015 =>
      theme.textTheme.headlineMedium!.arial.copyWith(
        color: appTheme.lightGreenA70015,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get headlineMediumArialOnPrimary => theme
      .textTheme
      .headlineMedium!
      .arial
      .copyWith(color: theme.colorScheme.onPrimary, fontSize: 28.fSize);
  static TextStyle get headlineMediumArialOnPrimaryBlack =>
      theme.textTheme.headlineMedium!.arial.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get headlineMediumArialOnPrimaryBlack28 =>
      theme.textTheme.headlineMedium!.arial.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get headlineMediumArialOnPrimaryBold =>
      theme.textTheme.headlineMedium!.arial.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get headlineMediumArialYellow50 =>
      theme.textTheme.headlineMedium!.arial.copyWith(
        color: appTheme.yellow50,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get headlineMediumCalistogaOnPrimary => theme
      .textTheme
      .headlineMedium!
      .calistoga
      .copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get headlineMediumGray90041 =>
      theme.textTheme.headlineMedium!.copyWith(color: appTheme.gray90041);
  static TextStyle get headlineSmallAmber30002 => theme.textTheme.headlineSmall!
      .copyWith(color: appTheme.amber30002, fontWeight: FontWeight.w900);
  static TextStyle get headlineSmallAmber60001 =>
      theme.textTheme.headlineSmall!.copyWith(color: appTheme.amber60001);
  static TextStyle get headlineSmallBlack =>
      theme.textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.w900);
  static TextStyle get headlineSmallDeeporangeA40003 =>
      theme.textTheme.headlineSmall!.copyWith(color: appTheme.deepOrangeA40003);
  static TextStyle get headlineSmallGreen50 => theme.textTheme.headlineSmall!
      .copyWith(color: appTheme.green50, fontWeight: FontWeight.w900);
  static TextStyle get headlineSmallOrange80002 =>
      theme.textTheme.headlineSmall!.copyWith(color: appTheme.orange80002);
  static TextStyle get headlineSmallSFProText => theme
      .textTheme
      .headlineSmall!
      .sFProText
      .copyWith(fontWeight: FontWeight.w900);
  static TextStyle get headlineSmallSFProTextYellow5002 => theme
      .textTheme
      .headlineSmall!
      .sFProText
      .copyWith(color: appTheme.yellow5002, fontWeight: FontWeight.w900);
  static TextStyle get headlineSmallYellow10006 =>
      theme.textTheme.headlineSmall!.copyWith(color: appTheme.yellow10006);
  static TextStyle get headlineSmallYellow20010 => theme
      .textTheme
      .headlineSmall!
      .copyWith(color: appTheme.yellow20010, fontWeight: FontWeight.w900);
  static TextStyle get headlineSmallYellow50002 => theme
      .textTheme
      .headlineSmall!
      .copyWith(color: appTheme.yellow50002, fontWeight: FontWeight.w900);
  static TextStyle get headlineSmallYellow50002_1 =>
      theme.textTheme.headlineSmall!.copyWith(color: appTheme.yellow50002);
  static TextStyle get headlineSmallYellowA20001 => theme
      .textTheme
      .headlineSmall!
      .copyWith(color: appTheme.yellowA20001, fontWeight: FontWeight.w900);
  // Label text style
  static TextStyle get labelLarge13 =>
      theme.textTheme.labelLarge!.copyWith(fontSize: 13.fSize);
  static TextStyle get labelLarge13_1 =>
      theme.textTheme.labelLarge!.copyWith(fontSize: 13.fSize);
  static TextStyle get labelLargeAmber20004 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.amber20004, fontSize: 13.fSize);
  static TextStyle get labelLargeAmber30002 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.amber30002, fontWeight: FontWeight.w900);
  static TextStyle get labelLargeAmber30002_1 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.amber30002);
  static TextStyle get labelLargeAmber30002_2 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.amber30002);
  static TextStyle get labelLargeAmber30004 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.amber30004);
  static TextStyle get labelLargeAmberA400 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.amberA400);
  static TextStyle get labelLargeAmberA40013 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.amberA400, fontSize: 13.fSize);
  static TextStyle get labelLargeAmberA400Black => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.amberA400, fontWeight: FontWeight.w900);
  static TextStyle get labelLargeAmberA400Medium => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.amberA400, fontWeight: FontWeight.w500);
  static TextStyle get labelLargeAmberA400_1 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.amberA400);
  static TextStyle get labelLargeAmberA400_2 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.amberA400);
  static TextStyle get labelLargeBlack =>
      theme.textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w900);
  static TextStyle get labelLargeBlue400 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.blue400);
  static TextStyle get labelLargeBlue400_1 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.blue400);
  static TextStyle get labelLargeBluegray200 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.blueGray200);
  static TextStyle get labelLargeBluegray20005 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.blueGray20005);
  static TextStyle get labelLargeBluegray200_1 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.blueGray200);
  static TextStyle get labelLargeBluegray300 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.blueGray300);
  static TextStyle get labelLargeBluegray30001 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.blueGray30001);
  static TextStyle get labelLargeBluegray30001_1 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.blueGray30001);
  static TextStyle get labelLargeBluegray40003 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.blueGray40003);
  static TextStyle get labelLargeBluegray500 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.blueGray500);
  static TextStyle get labelLargeBluegray70001 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.blueGray70001);
  static TextStyle get labelLargeBluegray7000113 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.blueGray70001, fontSize: 13.fSize);
  static TextStyle get labelLargeBluegray80013 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.blueGray80013);
  static TextStyle get labelLargeBluegray90007 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.blueGray90007);
  static TextStyle get labelLargeDDINCondensedOrange30005 => theme
      .textTheme
      .labelLarge!
      .dDINCondensed
      .copyWith(color: appTheme.orange30005);
  static TextStyle get labelLargeDeeporange90001 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.deepOrange90001, fontSize: 13.fSize);
  static TextStyle get labelLargeDeeporange90003 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.deepOrange90003);
  static TextStyle get labelLargeDeeporangeA40003 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.deepOrangeA40003);
  static TextStyle get labelLargeDeeporangeA40003_1 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.deepOrangeA40003);
  static TextStyle get labelLargeGray200 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.gray200);
  static TextStyle get labelLargeGray20001 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.gray20001);
  static TextStyle get labelLargeGray2000113 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.gray20001, fontSize: 13.fSize);
  static TextStyle get labelLargeGray300 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.gray300);
  static TextStyle get labelLargeGray40006 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.gray40006);
  static TextStyle get labelLargeGray60006 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.gray60006, fontSize: 13.fSize);
  static TextStyle get labelLargeGray90014 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.gray90014);
  static TextStyle get labelLargeGray90018 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.gray90018);
  static TextStyle get labelLargeGray90051 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.gray90051);
  static TextStyle get labelLargeGray90052 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.gray90052);
  static TextStyle get labelLargeGreen90020 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.green90020, fontSize: 13.fSize);
  static TextStyle get labelLargeIndigo100 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.indigo100, fontSize: 13.fSize);
  static TextStyle get labelLargeIndigo10001 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.indigo10001, fontSize: 13.fSize);
  static TextStyle get labelLargeIndigo400 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.indigo400, fontSize: 13.fSize);
  static TextStyle get labelLargeInterOnPrimary =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeInterOnPrimarySemiBold =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeLightblue500 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.lightBlue500);
  static TextStyle get labelLargeLightgreen5002 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.lightGreen5002, fontSize: 13.fSize);
  static TextStyle get labelLargeLightgreenA700 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.lightGreenA700);
  static TextStyle get labelLargeLightgreenA700Black => theme
      .textTheme
      .labelLarge!
      .copyWith(color: appTheme.lightGreenA700, fontWeight: FontWeight.w900);
  static TextStyle get labelLargeLightgreenA700_1 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.lightGreenA700);
  static TextStyle get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
    fontSize: 13.fSize,
    fontWeight: FontWeight.w500,
  );
  static TextStyle get labelLargeMedium_1 =>
      theme.textTheme.labelLarge!.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get labelLargeNotoSans =>
      theme.textTheme.labelLarge!.notoSans.copyWith(fontSize: 13.fSize);
  static TextStyle get labelLargeNotoSansMedium => theme
      .textTheme
      .labelLarge!
      .notoSans
      .copyWith(fontWeight: FontWeight.w500);
  static TextStyle get labelLargeOnPrimary => theme.textTheme.labelLarge!
      .copyWith(color: theme.colorScheme.onPrimary, fontSize: 13.fSize);
  static TextStyle get labelLargeOnPrimary13 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.4),
        fontSize: 13.fSize,
      );
  static TextStyle get labelLargeOnPrimary13_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.8),
        fontSize: 13.fSize,
      );
  static TextStyle get labelLargeOnPrimary13_2 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.8),
        fontSize: 13.fSize,
      );
  static TextStyle get labelLargeOnPrimary13_3 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.6),
        fontSize: 13.fSize,
      );
  static TextStyle get labelLargeOnPrimary13_4 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.7),
        fontSize: 13.fSize,
      );
  static TextStyle get labelLargeOnPrimaryBlack =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get labelLargeOnPrimaryBlack_1 =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get labelLargeOnPrimaryMedium =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeOnPrimary_1 => theme.textTheme.labelLarge!
      .copyWith(color: theme.colorScheme.onPrimary.withValues(alpha: 0.5));
  static TextStyle get labelLargeOnPrimary_2 => theme.textTheme.labelLarge!
      .copyWith(color: theme.colorScheme.onPrimary.withValues(alpha: 0.6));
  static TextStyle get labelLargeOnPrimary_3 => theme.textTheme.labelLarge!
      .copyWith(color: theme.colorScheme.onPrimary.withValues(alpha: 0.7));
  static TextStyle get labelLargeOnPrimary_4 =>
      theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get labelLargeOnPrimary_5 =>
      theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get labelLargeOnPrimary_6 =>
      theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get labelLargeOnPrimary_7 => theme.textTheme.labelLarge!
      .copyWith(color: theme.colorScheme.onPrimary.withValues(alpha: 0.4));
  static TextStyle get labelLargeOrange40003 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.orange40003, fontWeight: FontWeight.w500);
  static TextStyle get labelLargePink90004 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.pink90004);
  static TextStyle get labelLargeRed300 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.red300,
    fontSize: 13.fSize,
  );
  static TextStyle get labelLargeRed40001 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.red40001);
  static TextStyle get labelLargeRed50004 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.red50004);
  static TextStyle get labelLargeRed60003 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.red60003);
  static TextStyle get labelLargeRed90005 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.red90005);
  static TextStyle get labelLargeRed90005_1 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.red90005);
  static TextStyle get labelLargeRedA70002 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.redA70002);
  static TextStyle get labelLargeSFProRoundedGray90007 => theme
      .textTheme
      .labelLarge!
      .sFProRounded
      .copyWith(color: appTheme.gray90007, fontSize: 13.fSize);
  static TextStyle get labelLargeSFProText => theme
      .textTheme
      .labelLarge!
      .sFProText
      .copyWith(fontWeight: FontWeight.w500);
  static TextStyle get labelLargeSFProTextAmberA400 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(color: appTheme.amberA400);
  static TextStyle get labelLargeSFProTextBluegray30001 => theme
      .textTheme
      .labelLarge!
      .sFProText
      .copyWith(color: appTheme.blueGray30001, fontWeight: FontWeight.w500);
  static TextStyle get labelLargeSFProTextGray300 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(color: appTheme.gray300);
  static TextStyle get labelLargeSFProTextGray900 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(color: appTheme.gray900);
  static TextStyle get labelLargeSFProTextGreen900 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(color: appTheme.green900);
  static TextStyle get labelLargeSFProTextGreen90001 => theme
      .textTheme
      .labelLarge!
      .sFProText
      .copyWith(color: appTheme.green90001);
  static TextStyle get labelLargeSFProTextLightgreen800 => theme
      .textTheme
      .labelLarge!
      .sFProText
      .copyWith(color: appTheme.lightGreen800, fontWeight: FontWeight.w600);
  static TextStyle get labelLargeSFProTextMedium => theme
      .textTheme
      .labelLarge!
      .sFProText
      .copyWith(fontSize: 13.fSize, fontWeight: FontWeight.w500);
  static TextStyle get labelLargeSFProTextOnPrimary => theme
      .textTheme
      .labelLarge!
      .sFProText
      .copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get labelLargeSFProTextOnPrimaryMedium =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargeSFProTextOnPrimarySemiBold =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelLargeSFProTextOrange40003 => theme
      .textTheme
      .labelLarge!
      .sFProText
      .copyWith(color: appTheme.orange40003, fontWeight: FontWeight.w500);
  static TextStyle get labelLargeSFProTextPinkA700 => theme
      .textTheme
      .labelLarge!
      .sFProText
      .copyWith(color: appTheme.pinkA700, fontSize: 13.fSize);
  static TextStyle get labelLargeSFProTextYellow70005 => theme
      .textTheme
      .labelLarge!
      .sFProText
      .copyWith(color: appTheme.yellow70005, fontWeight: FontWeight.w600);
  static TextStyle get labelLargeSFProTextYellow70005SemiBold => theme
      .textTheme
      .labelLarge!
      .sFProText
      .copyWith(color: appTheme.yellow70005, fontWeight: FontWeight.w600);
  static TextStyle get labelLargeTeal90002 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.teal90002);
  static TextStyle get labelLargeYellow20001 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.yellow20001);
  static TextStyle get labelLargeYellow20001_1 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.yellow20001);
  static TextStyle get labelLargeYellow20003 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.yellow20003, fontWeight: FontWeight.w900);
  static TextStyle get labelLargeYellowA200 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.yellowA200);
  static TextStyle get labelLargeYellowA40002 => theme.textTheme.labelLarge!
      .copyWith(color: appTheme.yellowA40002, fontWeight: FontWeight.w900);
  static TextStyle get labelLargeYellowA40002_1 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.yellowA40002);
  static TextStyle get labelLargeYellowA40006 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.yellowA40006);
  static TextStyle get labelLargeYellowA700 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.yellowA700);
  static TextStyle get labelLargeYellowA70001 =>
      theme.textTheme.labelLarge!.copyWith(color: appTheme.yellowA70001);
  static TextStyle get labelMedium10 =>
      theme.textTheme.labelMedium!.copyWith(fontSize: 10.fSize);
  static TextStyle get labelMedium10_1 =>
      theme.textTheme.labelMedium!.copyWith(fontSize: 10.fSize);
  static TextStyle get labelMediumAmberA400 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.amberA400,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get labelMediumBluegray400 => theme.textTheme.labelMedium!
      .copyWith(color: appTheme.blueGray400, fontSize: 10.fSize);
  static TextStyle get labelMediumBluegray40003 => theme.textTheme.labelMedium!
      .copyWith(color: appTheme.blueGray40003, fontSize: 10.fSize);
  static TextStyle get labelMediumBluegray40010 => theme.textTheme.labelMedium!
      .copyWith(color: appTheme.blueGray400, fontSize: 10.fSize);
  static TextStyle get labelMediumDeeporange100 => theme.textTheme.labelMedium!
      .copyWith(color: appTheme.deepOrange100, fontSize: 10.fSize);
  static TextStyle get labelMediumGray90011 => theme.textTheme.labelMedium!
      .copyWith(color: appTheme.gray90011, fontSize: 10.fSize);
  static TextStyle get labelMediumIndigoA10001 => theme.textTheme.labelMedium!
      .copyWith(color: appTheme.indigoA10001, fontSize: 10.fSize);
  static TextStyle get labelMediumIndigoA1000110 => theme.textTheme.labelMedium!
      .copyWith(color: appTheme.indigoA10001, fontSize: 10.fSize);
  static TextStyle get labelMediumPink90002 => theme.textTheme.labelMedium!
      .copyWith(color: appTheme.pink90002, fontSize: 10.fSize);
  static TextStyle get labelMediumRed40001 => theme.textTheme.labelMedium!
      .copyWith(color: appTheme.red40001, fontSize: 10.fSize);
  static TextStyle get labelMediumSFProText => theme
      .textTheme
      .labelMedium!
      .sFProText
      .copyWith(fontWeight: FontWeight.w600);
  static TextStyle get labelMediumSFProTextAmber30004 => theme
      .textTheme
      .labelMedium!
      .sFProText
      .copyWith(color: appTheme.amber30004);
  static TextStyle get labelMediumYellowA70001 =>
      theme.textTheme.labelMedium!.copyWith(color: appTheme.yellowA70001);
  static TextStyle get labelSmallArialOnPrimary => theme
      .textTheme
      .labelSmall!
      .arial
      .copyWith(color: theme.colorScheme.onPrimary);
  static TextStyle get labelSmallOnPrimary =>
      theme.textTheme.labelSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelSmallOnPrimary9 => theme.textTheme.labelSmall!
      .copyWith(color: theme.colorScheme.onPrimary, fontSize: 9.fSize);
  // Title text style
  static TextStyle get titleLarge20 =>
      theme.textTheme.titleLarge!.copyWith(fontSize: 20.fSize);
  static TextStyle get titleLargeAmber30002 =>
      theme.textTheme.titleLarge!.copyWith(color: appTheme.amber30002);
  static TextStyle get titleLargeAmberA400 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.amberA400,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get titleLargeAmberA40020 => theme.textTheme.titleLarge!
      .copyWith(color: appTheme.amberA400, fontSize: 20.fSize);
  static TextStyle get titleLargeBlack => theme.textTheme.titleLarge!.copyWith(
    fontSize: 20.fSize,
    fontWeight: FontWeight.w900,
  );
  static TextStyle get titleLargeBlack900 => theme.textTheme.titleLarge!
      .copyWith(color: appTheme.black900, fontSize: 20.fSize);
  static TextStyle get titleLargeBlack_1 =>
      theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w900);
  static TextStyle get titleLargeBlue400 => theme.textTheme.titleLarge!
      .copyWith(color: appTheme.blue400, fontSize: 20.fSize);
  static TextStyle get titleLargeGray70002 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray70002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get titleLargeHelveticaNeueLTPro => theme
      .textTheme
      .titleLarge!
      .helveticaNeueLTPro
      .copyWith(fontSize: 21.fSize, fontWeight: FontWeight.w800);
  static TextStyle get titleLargeInterRed600 =>
      theme.textTheme.titleLarge!.inter.copyWith(color: appTheme.red600);
  static TextStyle get titleLargeLightgreenA700 => theme.textTheme.titleLarge!
      .copyWith(color: appTheme.lightGreenA700, fontSize: 20.fSize);
  static TextStyle get titleLargeLilitaOneOrange5001 => theme
      .textTheme
      .titleLarge!
      .lilitaOne
      .copyWith(color: appTheme.orange5001, fontWeight: FontWeight.w400);
  static TextStyle get titleLargeOrange5001 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.orange5001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get titleLargeOrange80002 => theme.textTheme.titleLarge!
      .copyWith(color: appTheme.orange80002, fontSize: 20.fSize);
  static TextStyle get titleLargeOrangeA70002 =>
      theme.textTheme.titleLarge!.copyWith(color: appTheme.orangeA70002);
  static TextStyle get titleLargeRed50001 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red50001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get titleLargeRed600 =>
      theme.textTheme.titleLarge!.copyWith(color: appTheme.red600);
  static TextStyle get titleLargeSFProText => theme
      .textTheme
      .titleLarge!
      .sFProText
      .copyWith(fontSize: 20.fSize, fontWeight: FontWeight.w800);
  static TextStyle get titleLargeSFProTextYellowA70001 => theme
      .textTheme
      .titleLarge!
      .sFProText
      .copyWith(color: appTheme.yellowA70001, fontWeight: FontWeight.w800);
  static TextStyle get titleLargeYellow500 =>
      theme.textTheme.titleLarge!.copyWith(color: appTheme.yellow500);
  static TextStyle get titleLargeYellow50002 => theme.textTheme.titleLarge!
      .copyWith(color: appTheme.yellow50002, fontSize: 20.fSize);
  static TextStyle get titleLargeYellowA40002 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.yellowA40002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static TextStyle get titleMedium18 =>
      theme.textTheme.titleMedium!.copyWith(fontSize: 18.fSize);
  static TextStyle get titleMedium18_1 =>
      theme.textTheme.titleMedium!.copyWith(fontSize: 18.fSize);
  static TextStyle get titleMediumAmber30002 => theme.textTheme.titleMedium!
      .copyWith(color: appTheme.amber30002, fontWeight: FontWeight.w900);
  static TextStyle get titleMediumAmber600 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.amber600);
  static TextStyle get titleMediumAmber600_1 => theme.textTheme.titleMedium!
      .copyWith(color: appTheme.amber600.withValues(alpha: 0.4));
  static TextStyle get titleMediumAmber600_2 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.amber600);
  static TextStyle get titleMediumAmberA400 => theme.textTheme.titleMedium!
      .copyWith(color: appTheme.amberA400, fontSize: 18.fSize);
  static TextStyle get titleMediumAmberA400Black =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.amberA400,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get titleMediumAmberA400_1 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.amberA400);
  static TextStyle get titleMediumAmberA400_2 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.amberA400);
  static TextStyle get titleMediumBlack =>
      theme.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w900);
  static TextStyle get titleMediumBlack18 => theme.textTheme.titleMedium!
      .copyWith(fontSize: 18.fSize, fontWeight: FontWeight.w900);
  static TextStyle get titleMediumBlack900 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.black900);
  static TextStyle get titleMediumBlack_1 =>
      theme.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w900);
  static TextStyle get titleMediumBluegray200 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.blueGray200);
  static TextStyle get titleMediumBluegray400 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.blueGray400);
  static TextStyle get titleMediumBluegray400Medium => theme
      .textTheme
      .titleMedium!
      .copyWith(color: appTheme.blueGray400, fontWeight: FontWeight.w500);
  static TextStyle get titleMediumBluegray400Medium_1 => theme
      .textTheme
      .titleMedium!
      .copyWith(color: appTheme.blueGray400, fontWeight: FontWeight.w500);
  static TextStyle get titleMediumBluegray400_1 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.blueGray400);
  static TextStyle get titleMediumDeeporange90003 => theme
      .textTheme
      .titleMedium!
      .copyWith(color: appTheme.deepOrange90003, fontSize: 18.fSize);
  static TextStyle get titleMediumDeeporangeA40003 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.deepOrangeA40003);
  static TextStyle get titleMediumGray40004 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.gray40004);
  static TextStyle get titleMediumGray50002 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get titleMediumGray80013 => theme.textTheme.titleMedium!
      .copyWith(color: appTheme.gray80013, fontSize: 18.fSize);
  static TextStyle get titleMediumGray90002 => theme.textTheme.titleMedium!
      .copyWith(color: appTheme.gray90002, fontWeight: FontWeight.w900);
  static TextStyle get titleMediumGray90002_1 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.gray90002);
  static TextStyle get titleMediumHelveticaNeueLTProYellow300 =>
      theme.textTheme.titleMedium!.helveticaNeueLTPro.copyWith(
        color: appTheme.yellow300,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w800,
      );
  static TextStyle get titleMediumIndigoA10001 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.indigoA10001);
  static TextStyle get titleMediumLightgreen800 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.lightGreen800);
  static TextStyle get titleMediumLightgreenA400 => theme.textTheme.titleMedium!
      .copyWith(color: appTheme.lightGreenA400, fontSize: 19.fSize);
  static TextStyle get titleMediumLightgreenA700 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.lightGreenA700);
  static TextStyle get titleMediumLightgreenA70018 => theme
      .textTheme
      .titleMedium!
      .copyWith(color: appTheme.lightGreenA700, fontSize: 18.fSize);
  static TextStyle get titleMediumLightgreenA700_1 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.lightGreenA700);
  static TextStyle get titleMediumLime200 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.lime200);
  static TextStyle get titleMediumMicrosoftYaHeiAmberA400 => theme
      .textTheme
      .titleMedium!
      .microsoftYaHei
      .copyWith(color: appTheme.amberA400);
  static TextStyle get titleMediumOnPrimary => theme.textTheme.titleMedium!
      .copyWith(color: theme.colorScheme.onPrimary.withValues(alpha: 0.85));
  static TextStyle get titleMediumOnPrimary18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withValues(alpha: 0.6),
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumRed90001 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.red90001);
  static TextStyle get titleMediumRed90005 => theme.textTheme.titleMedium!
      .copyWith(color: appTheme.red90005, fontSize: 17.fSize);
  static TextStyle get titleMediumRed90099 => theme.textTheme.titleMedium!
      .copyWith(color: appTheme.red90099, fontSize: 18.fSize);
  static TextStyle get titleMediumRedA400 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.redA400);
  static TextStyle get titleMediumRedA70003 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.redA70003);
  static TextStyle get titleMediumSFProText =>
      theme.textTheme.titleMedium!.sFProText.copyWith(fontSize: 18.fSize);
  static TextStyle get titleMediumSFProTextBluegray400 => theme
      .textTheme
      .titleMedium!
      .sFProText
      .copyWith(color: appTheme.blueGray400, fontWeight: FontWeight.w500);
  static TextStyle get titleMediumSFProTextGray900 => theme
      .textTheme
      .titleMedium!
      .sFProText
      .copyWith(color: appTheme.gray900, fontSize: 18.fSize);
  static TextStyle get titleMediumSFProTextYellowA70001 => theme
      .textTheme
      .titleMedium!
      .sFProText
      .copyWith(color: appTheme.yellowA70001, fontWeight: FontWeight.w800);
  static TextStyle get titleMediumSFProTextYellowA70001ExtraBold =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.yellowA70001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumSFProText_1 => theme.textTheme.titleMedium!.sFProText;
  static TextStyle get titleMediumTeal90001 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.teal90001);
  static TextStyle get titleMediumYellow20008 => theme.textTheme.titleMedium!
      .copyWith(color: appTheme.yellow20008, fontWeight: FontWeight.w900);
  static TextStyle get titleMediumYellow30008 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.yellow30008);
  static TextStyle get titleMediumYellow50002 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.yellow50002);
  static TextStyle get titleMediumYellow50002_1 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.yellow50002);
  static TextStyle get titleMediumYellow50002_2 =>
      theme.textTheme.titleMedium!.copyWith(color: appTheme.yellow50002);
  static TextStyle get titleMediumYellowA20004 => theme.textTheme.titleMedium!
      .copyWith(color: appTheme.yellowA20004, fontSize: 18.fSize);
  static TextStyle get titleMediumYellowA70002 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellowA70002,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get titleSmall15 =>
      theme.textTheme.titleSmall!.copyWith(fontSize: 15.fSize);
  static TextStyle get titleSmall15_1 =>
      theme.textTheme.titleSmall!.copyWith(fontSize: 15.fSize);
  static TextStyle get titleSmallAmber10001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amber10001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get titleSmallAmber30002 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.amber30002, fontWeight: FontWeight.w900);
  static TextStyle get titleSmallAmber30002_1 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.amber30002);
  static TextStyle get titleSmallAmber30002_2 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.amber30002);
  static TextStyle get titleSmallAmber50004 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.amber50004);
  static TextStyle get titleSmallAmber60005 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.amber60005);
  static TextStyle get titleSmallAmber70001 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.amber70001);
  static TextStyle get titleSmallAmberA400 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.amberA400, fontWeight: FontWeight.w900);
  static TextStyle get titleSmallAmberA40015 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.amberA400, fontSize: 15.fSize);
  static TextStyle get titleSmallAmberA400Black =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.amberA400,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get titleSmallAmberA400_1 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.amberA400);
  static TextStyle get titleSmallAmberA400_2 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.amberA400);
  static TextStyle get titleSmallBlack =>
      theme.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w900);
  static TextStyle get titleSmallBlack900 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.black900);
  static TextStyle get titleSmallBlack900_1 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.black900);
  static TextStyle get titleSmallBlack_1 =>
      theme.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w900);
  static TextStyle get titleSmallBlue400 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.blue400);
  static TextStyle get titleSmallBlue50 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.blue50);
  static TextStyle get titleSmallBluegray200 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.blueGray200);
  static TextStyle get titleSmallBluegray20005 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.blueGray20005);
  static TextStyle get titleSmallBluegray20005_1 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.blueGray20005);
  static TextStyle get titleSmallBluegray200_1 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.blueGray200);
  static TextStyle get titleSmallBluegray300 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.blueGray300);
  static TextStyle get titleSmallBluegray400 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.blueGray400);
  static TextStyle get titleSmallBluegray40004 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.blueGray40004);
  static TextStyle get titleSmallBluegray40015 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.blueGray400, fontSize: 15.fSize);
  static TextStyle get titleSmallBluegray40015_1 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.blueGray400, fontSize: 15.fSize);
  static TextStyle get titleSmallBluegray400_1 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.blueGray400);
  static TextStyle get titleSmallBluegray500 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.blueGray500);
  static TextStyle get titleSmallBluegray70001 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.blueGray70001);
  static TextStyle get titleSmallBluegray90025 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.blueGray90025);
  static TextStyle get titleSmallGray30001 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.gray30001);
  static TextStyle get titleSmallGray50 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.gray50);
  static TextStyle get titleSmallGray5001 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.gray5001);
  static TextStyle get titleSmallGray90001 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.gray90001);
  static TextStyle get titleSmallGray90002 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.gray90002);
  static TextStyle get titleSmallGray90003 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.gray90003, fontSize: 15.fSize);
  static TextStyle get titleSmallGray90014 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.gray90014);
  static TextStyle get titleSmallGray90032 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.gray90032);
  static TextStyle get titleSmallGreen300 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.green300);
  static TextStyle get titleSmallGreen90021 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.green90021);
  static TextStyle get titleSmallIndigoA10001 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.indigoA10001);
  static TextStyle get titleSmallIndigoA1000115 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.indigoA10001, fontSize: 15.fSize);
  static TextStyle get titleSmallInterBluegray20005 => theme
      .textTheme
      .titleSmall!
      .inter
      .copyWith(color: appTheme.blueGray20005, fontWeight: FontWeight.w600);
  static TextStyle get titleSmallLightblue40003 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.lightBlue40003);
  static TextStyle get titleSmallLightblue500 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.lightBlue500, fontWeight: FontWeight.w900);
  static TextStyle get titleSmallLightblue700 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.lightBlue700);
  static TextStyle get titleSmallLightgreen800 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.lightGreen800);
  static TextStyle get titleSmallLightgreenA40002 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.lightGreenA40002);
  static TextStyle get titleSmallLightgreenA700 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.lightGreenA700);
  static TextStyle get titleSmallLightgreenA70015 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.lightGreenA700, fontSize: 15.fSize);
  static TextStyle get titleSmallLightgreenA700Black => theme
      .textTheme
      .titleSmall!
      .copyWith(color: appTheme.lightGreenA700, fontWeight: FontWeight.w900);
  static TextStyle get titleSmallLightgreenA700_1 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.lightGreenA700);
  static TextStyle get titleSmallMedium =>
      theme.textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500);
  static TextStyle get titleSmallNotoSansLightgreen800 => theme
      .textTheme
      .titleSmall!
      .notoSans
      .copyWith(color: appTheme.lightGreen800);
  static TextStyle get titleSmallOnPrimary => theme.textTheme.titleSmall!
      .copyWith(color: theme.colorScheme.onPrimary.withValues(alpha: 0.7));
  static TextStyle get titleSmallOnPrimary_1 => theme.textTheme.titleSmall!
      .copyWith(color: theme.colorScheme.onPrimary.withValues(alpha: 0.8));
  static TextStyle get titleSmallOrange200 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.orange200);
  static TextStyle get titleSmallOrange40003 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.orange40003, fontWeight: FontWeight.w900);
  static TextStyle get titleSmallOrangeA70002 => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.orangeA70002, fontWeight: FontWeight.w900);
  static TextStyle get titleSmallPurpleA20002 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.purpleA20002);
  static TextStyle get titleSmallRed40001 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.red40001);
  static TextStyle get titleSmallRed60003 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.red60003);
  static TextStyle get titleSmallRed90005 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.red90005);
  static TextStyle get titleSmallRed90007 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.red90007);
  static TextStyle get titleSmallRed90007_1 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.red90007);
  static TextStyle get titleSmallRedA400 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.redA400);
  static TextStyle get titleSmallRedA70002 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.redA70002);
  static TextStyle get titleSmallSFProText => theme
      .textTheme
      .titleSmall!
      .sFProText
      .copyWith(fontWeight: FontWeight.w500);
  static TextStyle get titleSmallSFProTextBlack => theme
      .textTheme
      .titleSmall!
      .sFProText
      .copyWith(fontWeight: FontWeight.w900);
  static TextStyle get titleSmallSFProTextBluegray400 => theme
      .textTheme
      .titleSmall!
      .sFProText
      .copyWith(color: appTheme.blueGray400, fontWeight: FontWeight.w500);
  static TextStyle get titleSmallSFProTextMedium => theme
      .textTheme
      .titleSmall!
      .sFProText
      .copyWith(fontSize: 15.fSize, fontWeight: FontWeight.w500);
  static TextStyle get titleSmallSFProTextYellow70005 => theme
      .textTheme
      .titleSmall!
      .sFProText
      .copyWith(color: appTheme.yellow70005);
  static get titleSmallSFProText_1 => theme.textTheme.titleSmall!.sFProText;
  static get titleSmallSFProText_2 => theme.textTheme.titleSmall!.sFProText;
  static TextStyle get titleSmallTeal800 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.teal800);
  static TextStyle get titleSmallTeal90004 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.teal90004);
  static TextStyle get titleSmallTealA40001 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.tealA40001);
  static TextStyle get titleSmallYellow10003 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.yellow10003);
  static TextStyle get titleSmallYellow10008 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.yellow10008);
  static TextStyle get titleSmallYellow20008 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.yellow20008);
  static TextStyle get titleSmallYellow20008Black => theme.textTheme.titleSmall!
      .copyWith(color: appTheme.yellow20008, fontWeight: FontWeight.w900);
  static TextStyle get titleSmallYellow400 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow400,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w900,
      );
  static TextStyle get titleSmallYellow50002 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.yellow50002);
  static TextStyle get titleSmallYellowA40002 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.yellowA40002);
  static TextStyle get titleSmallYellowA40002_1 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.yellowA40002);
  static TextStyle get titleSmallYellowA40007 =>
      theme.textTheme.titleSmall!.copyWith(color: appTheme.yellowA40007);
  static get titleSmall_1 => theme.textTheme.titleSmall!;
}

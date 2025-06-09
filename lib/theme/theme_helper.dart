import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors(),
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme,
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.h),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: appTheme.lightGreen5001,
          side: BorderSide(color: appTheme.indigo50, width: 1.h),
          shape: RoundedRectangleBorder(),
          visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return appTheme.lightGreenA700;
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(color: appTheme.gray30003, width: 1),
        visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appTheme.blueGray90021,
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.blueGray90017,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
    bodyLarge: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 16.fSize,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: appTheme.amberA400,
      fontSize: 14.fSize,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      color: appTheme.blueGray400,
      fontSize: 12.fSize,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w400,
    ),
    displayLarge: TextStyle(
      color: appTheme.amberA400,
      fontSize: 60.fSize,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      color: appTheme.yellowA400,
      fontSize: 40.fSize,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w700,
    ),
    displaySmall: TextStyle(
      color: appTheme.limeA20001,
      fontSize: 34.fSize,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w900,
    ),
    headlineLarge: TextStyle(
      color: appTheme.black900,
      fontSize: 30.fSize,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w900,
    ),
    headlineMedium: TextStyle(
      color: appTheme.orange5001,
      fontSize: 26.fSize,
      fontFamily: 'Lilita One',
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 24.fSize,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w700,
    ),
    labelLarge: TextStyle(
      color: appTheme.blueGray400,
      fontSize: 12.fSize,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 11.fSize,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w700,
    ),
    labelSmall: TextStyle(
      color: appTheme.gray90013,
      fontSize: 8.fSize,
      fontFamily: 'SF Pro Text',
      fontWeight: FontWeight.w700,
    ),
    titleLarge: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 22.fSize,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w700,
    ),
    titleMedium: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 16.fSize,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(
      color: colorScheme.onPrimary,
      fontSize: 14.fSize,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w700,
    ),
  );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF2B3238),
    primaryContainer: Color(0X4CFFA500),
    secondaryContainer: Color(0XFFE60000),
    errorContainer: Color(0XFF933F02),
    onError: Color(0XFF2C2F34),
    onErrorContainer: Color(0X66000C06),
    onPrimary: Color(0XFFFFFFFF),
    onPrimaryContainer: Color(0XFF1B1C1F),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amber100 => Color(0XFFFFFDB0);
  Color get amber10001 => Color(0XFFFFF0BA);
  Color get amber200 => Color(0XFFF9E28A);
  Color get amber20001 => Color(0XFFFFE185);
  Color get amber20002 => Color(0XFFF9DB95);
  Color get amber20003 => Color(0XFFFFDD79);
  Color get amber20004 => Color(0XFFFFE58A);
  Color get amber300 => Color(0XFFFEC664);
  Color get amber30001 => Color(0XFFFFC74F);
  Color get amber30002 => Color(0XFFF6D164);
  Color get amber30004 => Color(0XFFFFD155);
  Color get amber30005 => Color(0XFFFFD153);
  Color get amber400 => Color(0XFFFFC82F);
  Color get amber40001 => Color(0XFFFFC61E);
  Color get amber40002 => Color(0XFFFFBE1A);
  Color get amber40003 => Color(0XFFFFC931);
  Color get amber40004 => Color(0XFFFFC51D);
  Color get amber40005 => Color(0XFFFFCC18);
  Color get amber400B2 => Color(0XB2E2CF24);
  Color get amber500 => Color(0XFFFBBE0B);
  Color get amber50001 => Color(0XFFFDB909);
  Color get amber50002 => Color(0XFFFFBA08);
  Color get amber50003 => Color(0XFFFFC405);
  Color get amber50004 => Color(0XFFFDC609);
  Color get amber50005 => Color(0XFFFFBA09);
  Color get amber50033 => Color(0X33FFC505);
  Color get amber5004c => Color(0X4CF0BC12);
  Color get amber600 => Color(0XFFFFB900);
  Color get amber60001 => Color(0XFFFFB700);
  Color get amber60002 => Color(0XFFFFB701);
  Color get amber60003 => Color(0XFFFFB305);
  Color get amber60004 => Color(0XFFF2B402);
  Color get amber60005 => Color(0XFFF2B10B);
  Color get amber700 => Color(0XFFFF9F00);
  Color get amber70001 => Color(0XFFFF9E00);
  Color get amber70002 => Color(0XFFF2A001);
  Color get amber70003 => Color(0XFFFFA001);
  Color get amber70004 => Color(0XFFFF9D00);
  Color get amber70005 => Color(0XFFFA9C09);
  Color get amber70006 => Color(0XFFE4A50D);
  Color get amber800 => Color(0XFFFF8C00);
  Color get amberA100 => Color(0XFFFFEE7F);
  Color get amberA10001 => Color(0XFFFFE381);
  Color get amberA10002 => Color(0XFFFFE686);
  Color get amberA10003 => Color(0XFFFFEC8A);
  Color get amberA10004 => Color(0XFFFFEF82);
  Color get amberA10005 => Color(0XFFFFED8A);
  Color get amberA200 => Color(0XFFFFD142);
  Color get amberA20001 => Color(0XFFFFD33B);
  Color get amberA400 => Color(0XFFFFC600);
  Color get amberA40001 => Color(0XFFFFC500);
  Color get amberA40002 => Color(0XFFFFC603);
  Color get amberA40003 => Color(0XFFFFCC00);
  Color get amberA40004 => Color(0XFFFFC300);
  Color get amberA40005 => Color(0XFFFFBF00);
  Color get amberA40006 => Color(0XFFFFC700);
  Color get amberA40007 => Color(0XFFF6C500);
  Color get amberA700 => Color(0XFFFFAD05);
  Color get amberA70001 => Color(0XFFFFA800);
  Color get amberA70002 => Color(0XFFFFAE13);
  Color get amberA70003 => Color(0XFFFDA80C);
  Color get amberA70004 => Color(0XFFFFAE00);
  // Black
  Color get black900 => Color(0XFF000000);
  Color get black90001 => Color(0XFF0C150E);
  Color get black90002 => Color(0XFF072700);
  Color get black90003 => Color(0XFF082701);
  Color get black90004 => Color(0XFF000C25);
  Color get black90030 => Color(0X30030303);
  Color get black90072 => Color(0X720F001A);
  Color get black9008c => Color(0X8C240501);
  Color get black900Cc => Color(0XCC0E1900);
  // Blue
  Color get blue100 => Color(0XFFD1DCFF);
  Color get blue300 => Color(0XFF59ADF8);
  Color get blue30001 => Color(0XFF6BC2FC);
  Color get blue400 => Color(0XFF51A0FF);
  Color get blue40001 => Color(0XFF3BACE5);
  Color get blue40002 => Color(0XFF3A9CED);
  Color get blue40003 => Color(0XFF56A2FF);
  Color get blue40004 => Color(0XFF34AADF);
  Color get blue50 => Color(0XFFEBEDFF);
  Color get blue500 => Color(0XFF1997FF);
  Color get blue50001 => Color(0XFF289EFE);
  Color get blue50002 => Color(0XFF2595E8);
  Color get blue700 => Color(0XFF006CD9);
  Color get blue800 => Color(0XFF0C3BCE);
  Color get blue80001 => Color(0XFF085DCC);
  Color get blue80002 => Color(0XFF2160A3);
  Color get blue80003 => Color(0XFF1F51B9);
  Color get blue900 => Color(0XFF1026B8);
  Color get blueA200 => Color(0XFF4891FF);
  Color get blueA20001 => Color(0XFF4E7FFF);
  Color get blueA400 => Color(0XFF3670FF);
  Color get blueA40001 => Color(0XFF337FFF);
  Color get blueA700 => Color(0XFF1A68FE);
  Color get blueA70001 => Color(0XFF0063FB);
  Color get blueA70002 => Color(0XFF004FF6);
  Color get blueA70003 => Color(0XFF016DFF);
  // BlueA
  Color get blueA200B2 => Color(0XB23C97FF);
  Color get blueA4004c => Color(0X4C3375FF);
  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFC6CFD7);
  Color get blueGray200 => Color(0XFFABB6CA);
  Color get blueGray20001 => Color(0XFFAECAD6);
  Color get blueGray20002 => Color(0XFFB9C6D6);
  Color get blueGray20003 => Color(0XFFB5BCC9);
  Color get blueGray20004 => Color(0XFFB5BDCA);
  Color get blueGray20005 => Color(0XFFC0C8D2);
  Color get blueGray20006 => Color(0XFFA7B4C9);
  Color get blueGray20007 => Color(0XFFAAB2BD);
  Color get blueGray20099 => Color(0X999FB0C1);
  Color get blueGray2009901 => Color(0X99A0B0C1);
  Color get blueGray300 => Color(0XFF9DA6B1);
  Color get blueGray30001 => Color(0XFF9EAAB9);
  Color get blueGray30002 => Color(0XFF98A7B5);
  Color get blueGray30003 => Color(0XFF9FB8A8);
  Color get blueGray3007f => Color(0X7FA6ABB6);
  Color get blueGray400 => Color(0XFF808994);
  Color get blueGray40001 => Color(0XFF7889A6);
  Color get blueGray40002 => Color(0XFF8183A3);
  Color get blueGray40003 => Color(0XFF76838C);
  Color get blueGray40004 => Color(0XFF77838C);
  Color get blueGray40005 => Color(0XFF809688);
  Color get blueGray40006 => Color(0XFF809689);
  Color get blueGray40007 => Color(0XFF809486);
  Color get blueGray40044 => Color(0X448E8E8E);
  Color get blueGray500 => Color(0XFF6E7A93);
  Color get blueGray50001 => Color(0XFF707393);
  Color get blueGray50002 => Color(0XFF747799);
  Color get blueGray50003 => Color(0XFF6A7383);
  Color get blueGray700 => Color(0XFF496451);
  Color get blueGray70001 => Color(0XFF4B555C);
  Color get blueGray70002 => Color(0XFF505B65);
  Color get blueGray70003 => Color(0XFF484E59);
  Color get blueGray70004 => Color(0XFF445360);
  Color get blueGray70005 => Color(0XFF515761);
  Color get blueGray70006 => Color(0XFF455461);
  Color get blueGray800 => Color(0XFF2F3363);
  Color get blueGray80001 => Color(0XFF33404F);
  Color get blueGray80002 => Color(0XFF33404E);
  Color get blueGray80003 => Color(0XFF38424B);
  Color get blueGray80004 => Color(0XFF262A5B);
  Color get blueGray80005 => Color(0XFF40454C);
  Color get blueGray80006 => Color(0XFF41474D);
  Color get blueGray80007 => Color(0XFF41474E);
  Color get blueGray80008 => Color(0XFF3A4149);
  Color get blueGray80009 => Color(0XFF41464F);
  Color get blueGray80010 => Color(0XFF29395C);
  Color get blueGray80011 => Color(0XFF3F444B);
  Color get blueGray80012 => Color(0XFF2D4440);
  Color get blueGray80013 => Color(0XFF3C1F60);
  Color get blueGray80099 => Color(0X99414750);
  Color get blueGray900 => Color(0XFF313439);
  Color get blueGray90001 => Color(0XFF2B2F35);
  Color get blueGray90002 => Color(0XFF2F2E2C);
  Color get blueGray90003 => Color(0XFF151945);
  Color get blueGray90004 => Color(0XFF32363D);
  Color get blueGray90005 => Color(0XFF2B2B2B);
  Color get blueGray90006 => Color(0XFF353535);
  Color get blueGray90007 => Color(0XFF232B32);
  Color get blueGray90008 => Color(0XFF363421);
  Color get blueGray90009 => Color(0XFF2B4432);
  Color get blueGray90010 => Color(0XFF213627);
  Color get blueGray90011 => Color(0XFF2E3135);
  Color get blueGray90012 => Color(0XFF292F36);
  Color get blueGray90013 => Color(0XFF34383E);
  Color get blueGray90014 => Color(0XFF2D3036);
  Color get blueGray90015 => Color(0XFF2E3137);
  Color get blueGray90016 => Color(0XFF2D3137);
  Color get blueGray90017 => Color(0XFF282F36);
  Color get blueGray90018 => Color(0XFF32353A);
  Color get blueGray90019 => Color(0XFF282C31);
  Color get blueGray90020 => Color(0XFF2B3035);
  Color get blueGray90021 => Color(0XFF242A30);
  Color get blueGray90022 => Color(0XFF2C3136);
  Color get blueGray90023 => Color(0XFF30353A);
  Color get blueGray90024 => Color(0XFF2E3238);
  Color get blueGray90025 => Color(0XFF333333);
  Color get blueGray90026 => Color(0XFF1E2855);
  Color get blueGray90027 => Color(0XFF31343A);
  Color get blueGray90028 => Color(0XFF2B333B);
  Color get blueGray90029 => Color(0XFF2D343C);
  Color get blueGray90030 => Color(0XFF27292E);
  Color get blueGray90031 => Color(0XFF27292D);
  Color get blueGray90032 => Color(0XFF140150);
  Color get blueGray90033 => Color(0XFF303239);
  Color get blueGray90034 => Color(0XFF0B1552);
  Color get blueGray90035 => Color(0XFF293926);
  Color get blueGray90036 => Color(0XFF2F3239);
  Color get blueGray90037 => Color(0XFF2B3138);
  Color get blueGray90038 => Color(0XFF34373E);
  Color get blueGray90039 => Color(0XFF1E2849);
  Color get blueGray90040 => Color(0XFF123B33);
  Color get blueGray90041 => Color(0XFF2E3841);
  Color get blueGray90099 => Color(0X993D2C31);
  Color get blueGray900F9 => Color(0XF92C353E);
  // Cyan
  Color get cyan50 => Color(0XFFDDFCFF);
  Color get cyan900 => Color(0XFF014971);
  Color get cyan9004c => Color(0X4C0F4E6E);
  Color get cyanA400 => Color(0XFF00F5FE);
  Color get cyanA40001 => Color(0XFF07CCFF);
  Color get cyanA40002 => Color(0XFF00D1FF);
  Color get cyanA40003 => Color(0XFF00F7EC);
  // DeepOrange
  Color get deepOrange100 => Color(0XFFEED4BF);
  Color get deepOrange200 => Color(0XFFE1BB98);
  Color get deepOrange300 => Color(0XFFFF825B);
  Color get deepOrange30001 => Color(0XFFFE9B57);
  Color get deepOrange30002 => Color(0XFFFB7E6C);
  Color get deepOrange400 => Color(0XFFFF7C44);
  Color get deepOrange600 => Color(0XFFFF4C14);
  Color get deepOrange60001 => Color(0XFFEF5A12);
  Color get deepOrange900 => Color(0XFF9C4D00);
  Color get deepOrange90001 => Color(0XFFB16208);
  Color get deepOrange90002 => Color(0XFFA55100);
  Color get deepOrange90003 => Color(0XFF913400);
  Color get deepOrange90004 => Color(0XFF963400);
  Color get deepOrange9000c => Color(0X0CCC3D01);
  Color get deepOrangeA200 => Color(0XFFFF7236);
  Color get deepOrangeA20001 => Color(0XFFFF6E30);
  Color get deepOrangeA400 => Color(0XFFFF1E00);
  Color get deepOrangeA40001 => Color(0XFFFF4400);
  Color get deepOrangeA40002 => Color(0XFFFF4C00);
  Color get deepOrangeA40003 => Color(0XFFFF2D00);
  // DeepOrangeA
  Color get deepOrangeA100B2 => Color(0XB2E6B572);
  // DeepPurple
  Color get deepPurple500 => Color(0XFF4B37DA);
  Color get deepPurple50001 => Color(0XFF6D3CCC);
  Color get deepPurpleA100 => Color(0XFFC89BFB);
  Color get deepPurpleA10001 => Color(0XFFC498FA);
  Color get deepPurpleA10002 => Color(0XFFA666F8);
  Color get deepPurpleA200 => Color(0XFF806AFF);
  Color get deepPurpleA20001 => Color(0XFF7669F0);
  Color get deepPurpleA20002 => Color(0XFFA641FF);
  Color get deepPurpleA20003 => Color(0XFF6657FF);
  Color get deepPurpleA20004 => Color(0XFF7D5DF6);
  Color get deepPurpleA40000 => Color(0X006F1EE4);
  Color get deepPurpleA700 => Color(0XFF3617E8);
  // DeepPurpleA
  Color get deepPurpleA100B2 => Color(0XB2B880FB);
  // Gray
  Color get gray200 => Color(0XFFEAEAEA);
  Color get gray20001 => Color(0XFFEEEEEE);
  Color get gray200E0 => Color(0XE0E7E7E7);
  Color get gray300 => Color(0XFFE1E1E1);
  Color get gray30001 => Color(0XFFE6E6E6);
  Color get gray30002 => Color(0XFFDCDCDC);
  Color get gray30003 => Color(0XFFE3E4E8);
  Color get gray400 => Color(0XFFBFBFBF);
  Color get gray40001 => Color(0XFFCACACA);
  Color get gray40002 => Color(0XFFC1C1C1);
  Color get gray40003 => Color(0XFFBFBFB6);
  Color get gray40004 => Color(0XFFC9A3A3);
  Color get gray40005 => Color(0XFFC5C5BB);
  Color get gray40006 => Color(0XFFBCBCBC);
  Color get gray50 => Color(0XFFFAFCFF);
  Color get gray500 => Color(0XFFA8A8A8);
  Color get gray50001 => Color(0XFF959595);
  Color get gray50002 => Color(0XFFB2A584);
  Color get gray50003 => Color(0XFF9E9E9E);
  Color get gray50004 => Color(0XFFABABAB);
  Color get gray5001 => Color(0XFFFBFBFB);
  Color get gray600 => Color(0XFF737373);
  Color get gray60001 => Color(0XFF838484);
  Color get gray60002 => Color(0XFF7E7A6D);
  Color get gray60003 => Color(0XFF7E7A6E);
  Color get gray60004 => Color(0XFF737983);
  Color get gray60005 => Color(0XFF6B7971);
  Color get gray60006 => Color(0XFF66776D);
  Color get gray60007 => Color(0XFF84817E);
  Color get gray60008 => Color(0XFF7A7674);
  Color get gray700 => Color(0XFF585E67);
  Color get gray70001 => Color(0XFF646249);
  Color get gray70002 => Color(0XFF656565);
  Color get gray70003 => Color(0XFF666666);
  Color get gray70004 => Color(0XFF5B5B5B);
  Color get gray800 => Color(0XFF3B3937);
  Color get gray80001 => Color(0XFF44412B);
  Color get gray80002 => Color(0XFF3E3E3E);
  Color get gray80003 => Color(0XFF36383C);
  Color get gray80004 => Color(0XFF464646);
  Color get gray80005 => Color(0XFF37393D);
  Color get gray80006 => Color(0XFF43464B);
  Color get gray80007 => Color(0XFF44464B);
  Color get gray80008 => Color(0XFF363C41);
  Color get gray80009 => Color(0XFF373D42);
  Color get gray80010 => Color(0XFF3A3E45);
  Color get gray80011 => Color(0XFF3A3C42);
  Color get gray80013 => Color(0XFF474747);
  Color get gray80014 => Color(0XFF404837);
  Color get gray80015 => Color(0XFF3F434B);
  Color get gray80016 => Color(0XFF443631);
  Color get gray80017 => Color(0XFF3A3F47);
  Color get gray8004f => Color(0X4F393939);
  Color get gray8007f => Color(0X7F3F3F3F);
  Color get gray800B2 => Color(0XB25A4312);
  Color get gray900 => Color(0XFF233F00);
  Color get gray90000 => Color(0X00191B29);
  Color get gray90001 => Color(0XFF25282D);
  Color get gray90002 => Color(0XFF1E2024);
  Color get gray90003 => Color(0XFF171A1A);
  Color get gray90004 => Color(0XFF4A1400);
  Color get gray90005 => Color(0XFF442003);
  Color get gray90006 => Color(0XFF610F10);
  Color get gray90007 => Color(0XFF111214);
  Color get gray90008 => Color(0XFF161D1E);
  Color get gray90009 => Color(0XFF191E24);
  Color get gray90010 => Color(0XFF101214);
  Color get gray90011 => Color(0XFF592A00);
  Color get gray90012 => Color(0XFF440902);
  Color get gray90013 => Color(0XFF3A1F04);
  Color get gray90014 => Color(0XFF2D0A00);
  Color get gray90015 => Color(0XFF563700);
  Color get gray90016 => Color(0XFF2C2A1B);
  Color get gray90017 => Color(0XFF15140C);
  Color get gray90018 => Color(0XFF203F00);
  Color get gray90019 => Color(0XFF1B2C21);
  Color get gray90020 => Color(0XFF522700);
  Color get gray90021 => Color(0XFF25272B);
  Color get gray90022 => Color(0XFF151619);
  Color get gray90023 => Color(0XFF181818);
  Color get gray90024 => Color(0XFF141518);
  Color get gray90025 => Color(0XFF1F2125);
  Color get gray90026 => Color(0XFF023316);
  Color get gray90027 => Color(0XFF033B1A);
  Color get gray90028 => Color(0XFF25272C);
  Color get gray90029 => Color(0XFF15171A);
  Color get gray90030 => Color(0XFF171C21);
  Color get gray90031 => Color(0XFF1F1700);
  Color get gray90032 => Color(0XFF090F1E);
  Color get gray90033 => Color(0XFF1B1D20);
  Color get gray9003301 => Color(0X333E2100);
  Color get gray90034 => Color(0XFF0B301E);
  Color get gray90035 => Color(0XFF1A1C20);
  Color get gray90036 => Color(0XFF063C00);
  Color get gray90038 => Color(0XFF2F1921);
  Color get gray90039 => Color(0XFF00271F);
  Color get gray90040 => Color(0XFF370400);
  Color get gray90041 => Color(0XFF681200);
  Color get gray90042 => Color(0XFF062730);
  Color get gray90043 => Color(0XFF253D08);
  Color get gray90044 => Color(0XFF211831);
  Color get gray90045 => Color(0XFF141A31);
  Color get gray90046 => Color(0XFF1D2C29);
  Color get gray90047 => Color(0XFF2B221F);
  Color get gray90048 => Color(0XFF422921);
  Color get gray90049 => Color(0XFF141B31);
  Color get gray9004c => Color(0X4C101438);
  Color get gray90050 => Color(0XFF4B0E00);
  Color get gray90051 => Color(0XFF5A2710);
  Color get gray90052 => Color(0XFF343C05);
  Color get gray90072 => Color(0X72202027);
  Color get gray900B2 => Color(0XB218172F);
  // Green
  Color get green200 => Color(0XFF95ECAE);
  Color get green2007f => Color(0X7F9EE9B3);
  Color get green300 => Color(0XFF76DB8D);
  Color get green30001 => Color(0XFF7BF17C);
  Color get green400 => Color(0XFF53E652);
  Color get green40001 => Color(0XFF54D177);
  Color get green40002 => Color(0XFF55D572);
  Color get green40003 => Color(0XFF55D672);
  Color get green40004 => Color(0XFF4CD567);
  Color get green40059 => Color(0X5954E753);
  Color get green50 => Color(0XFFE4FEE4);
  Color get green500 => Color(0XFF43C269);
  Color get green50001 => Color(0XFF4DC247);
  Color get green50002 => Color(0XFF5ABF3F);
  Color get green50003 => Color(0XFF32C16B);
  Color get green50004 => Color(0XFF2BB851);
  Color get green50005 => Color(0XFF2CB851);
  Color get green500Bc => Color(0XBC49C647);
  Color get green600 => Color(0XFF30B824);
  Color get green700 => Color(0XFF219653);
  Color get green70001 => Color(0XFF2FA024);
  Color get green70002 => Color(0XFF27B006);
  Color get green70003 => Color(0XFF21903A);
  Color get green800Ce => Color(0XCE008E2A);
  Color get green900 => Color(0XFF2B450B);
  Color get green90000 => Color(0X00105327);
  Color get green90001 => Color(0XFF2B450A);
  Color get green90002 => Color(0XFF005924);
  Color get green90003 => Color(0XFF1B6437);
  Color get green90004 => Color(0XFF1E5D1C);
  Color get green90005 => Color(0XFF0E5218);
  Color get green90006 => Color(0XFF2A5200);
  Color get green90007 => Color(0XFF07622B);
  Color get green90008 => Color(0XFF0C5D2D);
  Color get green90009 => Color(0XFF124100);
  Color get green90010 => Color(0XFF154600);
  Color get green90011 => Color(0XFF124000);
  Color get green90012 => Color(0XFF254200);
  Color get green90013 => Color(0XFF254800);
  Color get green90014 => Color(0XFF006A2A);
  Color get green90015 => Color(0XFF196F03);
  Color get green90016 => Color(0XFF006F2C);
  Color get green90017 => Color(0XFF0C6E22);
  Color get green90018 => Color(0XFF0D6E23);
  Color get green90019 => Color(0XFF004211);
  Color get green90020 => Color(0XFF24532F);
  Color get green90021 => Color(0XFF043D11);
  Color get green90022 => Color(0XFF005200);
  Color get green90023 => Color(0XFF234500);
  Color get green90033 => Color(0X33045C17);
  Color get greenA100 => Color(0XFFA7FFB7);
  Color get greenA10001 => Color(0XFFCAFFD6);
  Color get greenA10002 => Color(0XFFCAFFCD);
  Color get greenA10003 => Color(0XFFB0FFC2);
  Color get greenA200 => Color(0XFF54D896);
  Color get greenA20001 => Color(0XFF58FFBF);
  Color get greenA20002 => Color(0XFF58E993);
  Color get greenA20003 => Color(0XFF65E4AB);
  Color get greenA400 => Color(0XFF19F07C);
  Color get greenA700 => Color(0XFF15E049);
  Color get greenA70001 => Color(0XFF079E4E);
  Color get greenA70002 => Color(0XFF00C300);
  Color get greenA70003 => Color(0XFF009E41);
  Color get greenA70004 => Color(0XFF009F41);
  Color get greenA70005 => Color(0XFF18E014);
  Color get greenA70006 => Color(0XFF21C559);
  Color get greenA70007 => Color(0XFF00B06C);
  // GreenA
  Color get greenA400C6 => Color(0XC614FF4D);
  // Indigo
  Color get indigo100 => Color(0XFFC0CDDD);
  Color get indigo10001 => Color(0XFFC0CDDE);
  Color get indigo10002 => Color(0XFFB2BCFA);
  Color get indigo10003 => Color(0XFFCED0ED);
  Color get indigo10004 => Color(0XFFCAD1E6);
  Color get indigo200 => Color(0XFF98C4D8);
  Color get indigo400 => Color(0XFF5278B0);
  Color get indigo50 => Color(0XFFE4E6EB);
  Color get indigo500 => Color(0XFF3F6BB2);
  Color get indigo50001 => Color(0XFF3352C3);
  Color get indigo5004c => Color(0X4C3134CE);
  Color get indigo600 => Color(0XFF3C5A9B);
  Color get indigo60001 => Color(0XFF3C599B);
  Color get indigo600B2 => Color(0XB2343AAF);
  Color get indigo800 => Color(0XFF363495);
  Color get indigo800B2 => Color(0XB21B418C);
  Color get indigo900 => Color(0XFF22045C);
  Color get indigo90001 => Color(0XFF361C63);
  Color get indigo90002 => Color(0XFF172B6B);
  Color get indigoA100 => Color(0XFF98AFFF);
  Color get indigoA10001 => Color(0XFF849FF9);
  Color get indigoA200 => Color(0XFF6A8BFF);
  Color get indigoA400 => Color(0XFF4755EE);
  Color get indigoA700 => Color(0XFF2E1CFF);
  Color get indigoA70001 => Color(0XFF0F32EB);
  Color get indigoA70002 => Color(0XFF1B3DF0);
  // LightBlue
  Color get lightBlue100 => Color(0XFFACE9FF);
  Color get lightBlue300 => Color(0XFF55C2FF);
  Color get lightBlue30001 => Color(0XFF4EB6EA);
  Color get lightBlue400 => Color(0XFF14BFEC);
  Color get lightBlue40001 => Color(0XFF29AAEC);
  Color get lightBlue40002 => Color(0XFF28B5F4);
  Color get lightBlue40003 => Color(0XFF1CADFF);
  Color get lightBlue500 => Color(0XFF00A3FF);
  Color get lightBlue600 => Color(0XFF039BE6);
  Color get lightBlue60001 => Color(0XFF1296DB);
  Color get lightBlue700 => Color(0XFF0071E3);
  Color get lightBlue900B2 => Color(0XB210517F);
  Color get lightBlueA200 => Color(0XFF3AC4FF);
  Color get lightBlueA20001 => Color(0XFF44C8FE);
  Color get lightBlueA400 => Color(0XFF00B2FF);
  Color get lightBlueA40001 => Color(0XFF00C1FF);
  Color get lightBlueA700 => Color(0XFF0093FF);
  Color get lightBlueA70001 => Color(0XFF008FFA);
  // LightGreen
  Color get lightGreen100 => Color(0XFFDCF8B9);
  Color get lightGreen10001 => Color(0XFFD9EBBC);
  Color get lightGreen10002 => Color(0XFFDCD2B8);
  Color get lightGreen10003 => Color(0XFFE0F2B9);
  Color get lightGreen10004 => Color(0XFFE3FDCE);
  Color get lightGreen300 => Color(0XFFB1E173);
  Color get lightGreen400 => Color(0XFFA8DF62);
  Color get lightGreen50 => Color(0XFFEBFDEE);
  Color get lightGreen500 => Color(0XFF8CD135);
  Color get lightGreen50001 => Color(0XFF96D248);
  Color get lightGreen5001 => Color(0XFFF0FFED);
  Color get lightGreen5002 => Color(0XFFEEFFF2);
  Color get lightGreen600 => Color(0XFF7DB81F);
  Color get lightGreen700 => Color(0XFF57B21E);
  Color get lightGreen800 => Color(0XFF478A03);
  Color get lightGreen80001 => Color(0XFF498D03);
  Color get lightGreen80002 => Color(0XFF61991B);
  Color get lightGreen80003 => Color(0XFF5DA401);
  Color get lightGreen80004 => Color(0XFF4A8D03);
  Color get lightGreen80005 => Color(0XFF5AA100);
  Color get lightGreen80006 => Color(0XFF5E7342);
  Color get lightGreen900 => Color(0XFF2A6E1D);
  Color get lightGreen90000 => Color(0X00534D10);
  Color get lightGreen90001 => Color(0XFF5C3C03);
  Color get lightGreen90002 => Color(0XFF336600);
  Color get lightGreen90003 => Color(0XFF326300);
  Color get lightGreen90004 => Color(0XFF336300);
  Color get lightGreen90005 => Color(0XFF386800);
  Color get lightGreen90006 => Color(0XFF427902);
  Color get lightGreen90007 => Color(0XFF3C7A0B);
  Color get lightGreen90008 => Color(0XFF3B6900);
  Color get lightGreen90009 => Color(0XFF3F7703);
  Color get lightGreen90010 => Color(0XFF34510F);
  Color get lightGreen9007f => Color(0X7F315A00);
  Color get lightGreen900B2 => Color(0XB25D4E00);
  Color get lightGreenA100 => Color(0XFFB6FFA6);
  Color get lightGreenA200 => Color(0XFFA7FF37);
  Color get lightGreenA20001 => Color(0XFFADF835);
  Color get lightGreenA20002 => Color(0XFFBFFF59);
  Color get lightGreenA20003 => Color(0XFFC0FF59);
  Color get lightGreenA400 => Color(0XFF8FFF00);
  Color get lightGreenA40001 => Color(0XFF8EFD00);
  Color get lightGreenA40002 => Color(0XFF87EC00);
  Color get lightGreenA700 => Color(0XFF85D420);
  Color get lightGreenA70001 => Color(0XFF76CD00);
  Color get lightGreenA70002 => Color(0XFF71C601);
  Color get lightGreenA70003 => Color(0XFF60B100);
  Color get lightGreenA70004 => Color(0XFF76CD01);
  Color get lightGreenA70005 => Color(0XFF74B200);
  Color get lightGreenA70006 => Color(0XFF61AC00);
  Color get lightGreenA70007 => Color(0XFF75CA08);
  Color get lightGreenA70008 => Color(0XFF83CF22);
  Color get lightGreenA70009 => Color(0XFF55FF27);
  Color get lightGreenA70010 => Color(0XFF3BC117);
  Color get lightGreenA70011 => Color(0XFF65B805);
  Color get lightGreenA70012 => Color(0XFF5FB602);
  Color get lightGreenA70013 => Color(0XFF6FC300);
  Color get lightGreenA70014 => Color(0XFF68C700);
  Color get lightGreenA70015 => Color(0XFF68BB00);
  Color get lightGreenA70026 => Color(0X2675CC01);
  // LightGreenA
  Color get lightGreenA4004c => Color(0X4C8CF60A);
  // Lime
  Color get lime100 => Color(0XFFE5FFC5);
  Color get lime200 => Color(0XFFE1E19F);
  Color get lime20001 => Color(0XFFEFD9A0);
  Color get lime20002 => Color(0XFFECD09A);
  Color get lime2007f => Color(0X7FE9E29E);
  Color get lime4004c => Color(0X4CD3F760);
  Color get lime600 => Color(0XFFD7B73B);
  Color get lime700 => Color(0XFFC6B201);
  Color get lime70001 => Color(0XFFC58D42);
  Color get lime70002 => Color(0XFF9FB90A);
  Color get lime70003 => Color(0XFFA0BA0A);
  Color get lime7004c => Color(0X4CCEA931);
  Color get lime800 => Color(0XFFA8A81F);
  Color get lime80001 => Color(0XFFB78212);
  Color get lime80002 => Color(0XFF969000);
  Color get lime900 => Color(0XFF8C4B00);
  Color get lime90001 => Color(0XFF8A5403);
  Color get lime90002 => Color(0XFF634700);
  Color get lime90003 => Color(0XFF786A38);
  Color get lime90004 => Color(0XFFA96800);
  Color get lime90005 => Color(0XFF634D00);
  Color get lime900B2 => Color(0XB2AE7100);
  Color get limeA100 => Color(0XFFF4FD70);
  Color get limeA200 => Color(0XFFDAF62E);
  Color get limeA20001 => Color(0XFFEEFF46);
  Color get limeA700 => Color(0XFFA0FF27);
  // Orange
  Color get orange100 => Color(0XFFFFE3B6);
  Color get orange10001 => Color(0XFFFFCD9F);
  Color get orange200 => Color(0XFFFFC895);
  Color get orange20001 => Color(0XFFFFC48B);
  Color get orange20002 => Color(0XFFEAC66E);
  Color get orange20003 => Color(0XFFFFCB82);
  Color get orange300 => Color(0XFFF8AF4D);
  Color get orange30001 => Color(0XFFFFB55F);
  Color get orange30002 => Color(0XFFFFBC54);
  Color get orange30003 => Color(0XFFFFB468);
  Color get orange30004 => Color(0XFFDBBA59);
  Color get orange30005 => Color(0XFFFBBF59);
  Color get orange30006 => Color(0XFFF5C046);
  Color get orange30007 => Color(0XFFFFBA48);
  Color get orange400 => Color(0XFFFFA725);
  Color get orange40001 => Color(0XFFFF9D2B);
  Color get orange40002 => Color(0XFFFF9A25);
  Color get orange40003 => Color(0XFFFFA620);
  Color get orange50 => Color(0XFFFFFBD4);
  Color get orange500 => Color(0XFFFF9900);
  Color get orange5001 => Color(0XFFFFFBDB);
  Color get orange5002 => Color(0XFFFFFBDD);
  Color get orange5003 => Color(0XFFFFFED8);
  Color get orange5004 => Color(0XFFFFF8D3);
  Color get orange5005 => Color(0XFFFFF0D6);
  Color get orange5006 => Color(0XFFFDF6E4);
  Color get orange5007 => Color(0XFFFEF7E4);
  Color get orange5008 => Color(0XFFFFF9D4);
  Color get orange5009 => Color(0XFFFFF4E4);
  Color get orange50C6 => Color(0XC6FFF6E6);
  Color get orange600 => Color(0XFFEE8A00);
  Color get orange60001 => Color(0XFFFF8900);
  Color get orange700 => Color(0XFFCD8700);
  Color get orange70000 => Color(0X00CC8601);
  Color get orange7000001 => Color(0X00CC9301);
  Color get orange70001 => Color(0XFFCF8900);
  Color get orange70002 => Color(0XFFF28608);
  Color get orange70003 => Color(0XFFF87700);
  Color get orange70004 => Color(0XFFFA7800);
  Color get orange70005 => Color(0XFFD58D01);
  Color get orange70006 => Color(0XFFFF7F00);
  Color get orange70007 => Color(0XFFFF7A00);
  Color get orange70008 => Color(0XFFE58500);
  Color get orange70009 => Color(0XFFDA8700);
  Color get orange800 => Color(0XFFCA7D00);
  Color get orange80002 => Color(0XFFDD6916);
  Color get orange80003 => Color(0XFFE66E00);
  Color get orange80004 => Color(0XFFD07A02);
  Color get orange80005 => Color(0XFFC86D00);
  Color get orange8000c => Color(0X0CCC6E01);
  Color get orange900 => Color(0XFFBE6C09);
  Color get orange90001 => Color(0XFFF34E08);
  Color get orange90002 => Color(0XFFF55800);
  Color get orange90026 => Color(0X26CC5601);
  Color get orangeA100 => Color(0XFFFFD671);
  Color get orangeA10001 => Color(0XFFFFD971);
  Color get orangeA200 => Color(0XFFFFB53C);
  Color get orangeA20001 => Color(0XFFEEAD3C);
  Color get orangeA20002 => Color(0XFFF9A94A);
  Color get orangeA20004 => Color(0XFFFFAF36);
  Color get orangeA400 => Color(0XFFFF9400);
  Color get orangeA700 => Color(0XFFFF6B00);
  Color get orangeA70001 => Color(0XFFFF6007);
  Color get orangeA70002 => Color(0XFFFA6900);
  Color get orangeA70003 => Color(0XFFFF6900);
  Color get orangeA70004 => Color(0XFFFF6100);
  // Pink
  Color get pink200 => Color(0XFFFF9EBC);
  Color get pink300 => Color(0XFFEE47AB);
  Color get pink30001 => Color(0XFFF86386);
  Color get pink30002 => Color(0XFFFF4DA2);
  Color get pink500 => Color(0XFFE4007F);
  Color get pink50001 => Color(0XFFF6365B);
  Color get pink700 => Color(0XFFC72A5B);
  Color get pink900 => Color(0XFF6B020F);
  Color get pink90000 => Color(0X00761610);
  Color get pink90001 => Color(0XFF822565);
  Color get pink90002 => Color(0XFF6B0000);
  Color get pink90003 => Color(0XFF63234C);
  Color get pink90004 => Color(0XFF731013);
  Color get pink90005 => Color(0XFF7C362C);
  Color get pinkA200 => Color(0XFFFF4E87);
  Color get pinkA20001 => Color(0XFFFF5070);
  Color get pinkA20002 => Color(0XFFFF3366);
  Color get pinkA400 => Color(0XFFFF004A);
  Color get pinkA700 => Color(0XFFC5006C);
  // Purple
  Color get purple100 => Color(0XFFE6C7FF);
  Color get purple300 => Color(0XFFE054D1);
  Color get purple500 => Color(0XFF960ACC);
  Color get purple50001 => Color(0XFFDF1AB4);
  Color get purple600 => Color(0XFF9F427A);
  Color get purple60001 => Color(0XFF930ABA);
  Color get purple700 => Color(0XFF810AB1);
  Color get purple900 => Color(0XFF3B0366);
  Color get purple90001 => Color(0XFF3D0572);
  Color get purple90002 => Color(0XFF3B1E6E);
  Color get purpleA100 => Color(0XFFFF94F7);
  Color get purpleA10001 => Color(0XFFD59EFF);
  Color get purpleA10002 => Color(0XFFFF7EDD);
  Color get purpleA200 => Color(0XFFBB4EFF);
  Color get purpleA20001 => Color(0XFFC028FF);
  Color get purpleA20002 => Color(0XFFFA22FF);
  Color get purpleA400 => Color(0XFFFF00F4);
  Color get purpleA40001 => Color(0XFFE014CB);
  Color get purpleA40002 => Color(0XFFF01AC1);
  Color get purpleA40003 => Color(0XFFD219F0);
  // PurpleA
  Color get purpleA1004c => Color(0X4CD869FF);
  Color get purpleA2004c => Color(0X4CC455F0);
  Color get purpleA4003d => Color(0X3DF900FF);
  // Red
  Color get red100 => Color(0XFFF6DADC);
  Color get red200 => Color(0XFFEBACB1);
  Color get red20001 => Color(0XFFDDA67F);
  Color get red300 => Color(0XFFBB777C);
  Color get red400 => Color(0XFFEB5757);
  Color get red40001 => Color(0XFFF65252);
  Color get red500 => Color(0XFFF33535);
  Color get red50001 => Color(0XFFFF4538);
  Color get red50002 => Color(0XFFFF2D2D);
  Color get red50003 => Color(0XFFFF4236);
  Color get red50004 => Color(0XFFFF3837);
  Color get red50005 => Color(0XFFFF3F45);
  Color get red600 => Color(0XFFD84730);
  Color get red60000 => Color(0X00EC3232);
  Color get red60001 => Color(0XFFE03C4A);
  Color get red60002 => Color(0XFFE33F3F);
  Color get red60003 => Color(0XFFE03131);
  Color get red700 => Color(0XFFCC2D2D);
  Color get red70001 => Color(0XFFC92A37);
  Color get red800 => Color(0XFFA15242);
  Color get red80001 => Color(0XFFC62020);
  Color get red80002 => Color(0XFFC42D2D);
  Color get red900 => Color(0XFF91000A);
  Color get red90001 => Color(0XFFA60000);
  Color get red90002 => Color(0XFF973722);
  Color get red90003 => Color(0XFFBB0213);
  Color get red90004 => Color(0XFFBF1E1E);
  Color get red90005 => Color(0XFF6C0A00);
  Color get red90006 => Color(0XFF8A1800);
  Color get red90007 => Color(0XFF991B00);
  Color get red90099 => Color(0X996D0B00);
  Color get redA200 => Color(0XFFFF4A4A);
  Color get redA20001 => Color(0XFFFF5759);
  Color get redA20002 => Color(0XFFFF5C5B);
  Color get redA20003 => Color(0XFFFF5E5D);
  Color get redA400 => Color(0XFFFD2020);
  Color get redA40001 => Color(0XFFFF2B3F);
  Color get redA700 => Color(0XFFDB0000);
  Color get redA70001 => Color(0XFFD8000F);
  Color get redA70002 => Color(0XFFFF0000);
  Color get redA70003 => Color(0XFFFF0A00);
  Color get redA70004 => Color(0XFFE01414);
  Color get redA70005 => Color(0XFFDE0000);
  // Teal
  Color get teal400 => Color(0XFF15C283);
  Color get teal40001 => Color(0XFF367D9B);
  Color get teal40002 => Color(0XFF34C88A);
  Color get teal40003 => Color(0XFF33C38F);
  Color get teal500 => Color(0XFF009D80);
  Color get teal700 => Color(0XFF0A9B57);
  Color get teal800 => Color(0XFF097446);
  Color get teal80000 => Color(0X000B783D);
  Color get teal80001 => Color(0XFF006551);
  Color get teal900 => Color(0XFF09633F);
  Color get teal90000 => Color(0X00003F2C);
  Color get teal90001 => Color(0XFF003D24);
  Color get teal90002 => Color(0XFF00643B);
  Color get teal90003 => Color(0XFF0C6242);
  Color get teal90004 => Color(0XFF03594F);
  Color get teal90005 => Color(0XFF00294D);
  Color get teal90051 => Color(0X51003F1C);
  Color get teal900Ed => Color(0XED006431);
  Color get tealA200 => Color(0XFF4DF8CE);
  Color get tealA400 => Color(0XFF09ECAC);
  Color get tealA40001 => Color(0XFF0EEABE);
  Color get tealA700 => Color(0XFF12B4A1);
  // TealA
  Color get tealA4004c => Color(0X4C27D8C5);
  Color get tealA400B2 => Color(0XB216D9C1);
  // White
  Color get whiteA700 => Color(0XFFFEFEFE);
  // Yellow
  Color get yellow100 => Color(0XFFFFF9CA);
  Color get yellow10001 => Color(0XFFFFF8D1);
  Color get yellow10002 => Color(0XFFFFF7D2);
  Color get yellow10003 => Color(0XFFFFF8C4);
  Color get yellow10004 => Color(0XFFFFFDCE);
  Color get yellow10005 => Color(0XFFFFF6C7);
  Color get yellow10006 => Color(0XFFFFF9BC);
  Color get yellow10007 => Color(0XFFFFFCC0);
  Color get yellow10008 => Color(0XFFFDFFB7);
  Color get yellow200 => Color(0XFFFFE9A3);
  Color get yellow20001 => Color(0XFFFFF7A7);
  Color get yellow20002 => Color(0XFFFFF695);
  Color get yellow20003 => Color(0XFFFFF095);
  Color get yellow20004 => Color(0XFFFEF3A3);
  Color get yellow20005 => Color(0XFFFFED93);
  Color get yellow20007 => Color(0XFFFFEE98);
  Color get yellow20008 => Color(0XFFFFF39A);
  Color get yellow20009 => Color(0XFFFFF39F);
  Color get yellow20010 => Color(0XFFFFF5A0);
  Color get yellow20011 => Color(0XFFFFFBAA);
  Color get yellow300 => Color(0XFFFFFD76);
  Color get yellow30001 => Color(0XFFFFF971);
  Color get yellow30002 => Color(0XFFFFE668);
  Color get yellow30003 => Color(0XFFFDFE70);
  Color get yellow30004 => Color(0XFFFFFF67);
  Color get yellow30005 => Color(0XFFFEFA79);
  Color get yellow30006 => Color(0XFFFFEF7A);
  Color get yellow30007 => Color(0XFFFFF07A);
  Color get yellow30008 => Color(0XFFFFF579);
  Color get yellow300B2 => Color(0XB2FFEA74);
  Color get yellow400 => Color(0XFFFFEC5C);
  Color get yellow40001 => Color(0XFFFFEF4E);
  Color get yellow40002 => Color(0XFFFFFB5B);
  Color get yellow40003 => Color(0XFFFFE357);
  Color get yellow40004 => Color(0XFFFFE44D);
  Color get yellow40005 => Color(0XFFFFDF63);
  Color get yellow50 => Color(0XFFFFFDE3);
  Color get yellow500 => Color(0XFFFFF727);
  Color get yellow50001 => Color(0XFFFFF148);
  Color get yellow50002 => Color(0XFFFFEB3B);
  Color get yellow50003 => Color(0XFFF6F636);
  Color get yellow50004 => Color(0XFFFFE239);
  Color get yellow50005 => Color(0XFFFAEB49);
  Color get yellow5000 => Color(0X00FFFBE7);
  Color get yellow500001 => Color(0X00FFFBE8);
  Color get yellow5001 => Color(0XFFFFFEEF);
  Color get yellow5002 => Color(0XFFFFFBE2);
  Color get yellow5003 => Color(0XFFFFFFE7);
  Color get yellow600 => Color(0XFFF0CE3B);
  Color get yellow60001 => Color(0XFFFFD833);
  Color get yellow60002 => Color(0XFFFFDF38);
  Color get yellow60003 => Color(0XFFFFE034);
  Color get yellow700 => Color(0XFFF2C331);
  Color get yellow70001 => Color(0XFFF6BC28);
  Color get yellow70002 => Color(0XFFFFC32A);
  Color get yellow70003 => Color(0XFFFFC42D);
  Color get yellow70005 => Color(0XFFFFB731);
  Color get yellow70006 => Color(0XFFFFBB36);
  Color get yellow70007 => Color(0XFFF7C033);
  Color get yellow800 => Color(0XFFEEB819);
  Color get yellow80001 => Color(0XFFF2B61A);
  Color get yellow80002 => Color(0XFFFBA524);
  Color get yellow900 => Color(0XFFFF8D2A);
  Color get yellow90001 => Color(0XFFE07614);
  Color get yellowA100 => Color(0XFFFCF88B);
  Color get yellowA10001 => Color(0XFFFFF38C);
  Color get yellowA10099 => Color(0X99FFF38A);
  Color get yellowA200 => Color(0XFFEFF707);
  Color get yellowA20001 => Color(0XFFFFF819);
  Color get yellowA20002 => Color(0XFFFEF500);
  Color get yellowA20003 => Color(0XFFF9FF00);
  Color get yellowA20004 => Color(0XFFFFF800);
  Color get yellowA20005 => Color(0XFFFFF80E);
  Color get yellowA400 => Color(0XFFFFE100);
  Color get yellowA40001 => Color(0XFFFBF000);
  Color get yellowA40002 => Color(0XFFFFF400);
  Color get yellowA40003 => Color(0XFFFFEB00);
  Color get yellowA40004 => Color(0XFFFFE60B);
  Color get yellowA40005 => Color(0XFFFFE900);
  Color get yellowA40006 => Color(0XFFFEF400);
  Color get yellowA40007 => Color(0XFFF0E71A);
  Color get yellowA700 => Color(0XFFFFD400);
  Color get yellowA70001 => Color(0XFFFFD800);
  Color get yellowA70002 => Color(0XFFFFD503);
  Color get yellowA70003 => Color(0XFFFFD600);
  Color get yellowA70004 => Color(0XFFD8D908);
  Color get yellowA70005 => Color(0XFFFFD90C);
}

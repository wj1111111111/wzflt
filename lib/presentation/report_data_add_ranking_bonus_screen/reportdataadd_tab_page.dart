import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_text_form_field.dart';
import './models/chart_one_chart_model.dart';
import 'bloc/report_data_add_ranking_bonus_bloc.dart';
import 'models/chipviewregiste_item_model.dart';
import 'models/reportdataadd_tab_model.dart';
import 'widgets/chipviewregiste_item_widget.dart';

class ReportdataaddTabPage extends StatefulWidget {
  const ReportdataaddTabPage({Key? key}) : super(key: key);

  @override
  ReportdataaddTabPageState createState() => ReportdataaddTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ReportDataAddRankingBonusBloc>(
      create:
          (context) => ReportDataAddRankingBonusBloc(
            ReportDataAddRankingBonusState(
              reportdataaddTabModelObj: ReportdataaddTabModel(),
            ),
          )..add(ReportDataAddRankingBonusInitialEvent()),
      child: ReportdataaddTabPage(),
    );
  }
}

class ReportdataaddTabPageState extends State<ReportdataaddTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 12.h),
                child: Column(
                  spacing: 12,
                  children: [
                    _buildStackone(context),
                    SizedBox(
                      width: double.maxFinite,
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                          child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            decoration: AppDecoration.outline1.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10,
                            ),
                            child: Column(
                              spacing: 16,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10.h,
                                  ),
                                  child: BlocSelector<
                                    ReportDataAddRankingBonusBloc,
                                    ReportDataAddRankingBonusState,
                                    TextEditingController?
                                  >(
                                    selector:
                                        (state) => state.dateRangeController,
                                    builder: (context, dateRangeController) {
                                      return CustomTextFormField(
                                        controller: dateRangeController,
                                        hintText:
                                            "msg_2024_08_21_2024_08_27".tr,
                                        hintStyle:
                                            CustomTextStyles.labelLarge13_1,
                                        textInputAction: TextInputAction.done,
                                        suffix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                            24.h,
                                            12.h,
                                            10.h,
                                            12.h,
                                          ),
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCalendar,
                                            height: 14.h,
                                            width: 16.h,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        suffixConstraints: BoxConstraints(
                                          maxHeight: 40.h,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 10.h,
                                          vertical: 12.h,
                                        ),
                                        borderDecoration:
                                            TextFormFieldStyleHelper
                                                .outlineBlackTL6,
                                        fillColor: appTheme.blueGray90004,
                                      );
                                    },
                                  ),
                                ),
                                _buildRowone(context),
                                _buildRowuserone(context),
                                _buildRowtelevision(context),
                                _buildRowuserthree(context),
                                Container(
                                  width: double.maxFinite,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 10.h,
                                  ),
                                  child: _buildRowcloseOne(
                                    context,
                                    closeOne:
                                        ImageConstant.imgCheckmarkOrangeA70001,
                                    achievementOne: "msg_betting_rebates".tr,
                                    priceSeven: "lbl_1292_00".tr,
                                  ),
                                ),
                                Container(
                                  width: double.maxFinite,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 10.h,
                                  ),
                                  child: _buildRowcloseOne(
                                    context,
                                    closeOne:
                                        ImageConstant.imgCloseLightGreenA700,
                                    achievementOne:
                                        "msg_achievement_rewards2".tr,
                                    priceSeven: "lbl_333_333_00".tr,
                                  ),
                                ),
                                Container(
                                  width: double.maxFinite,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 10.h,
                                  ),
                                  child: _buildRowcloseOne(
                                    context,
                                    closeOne: ImageConstant.imgUserGreen40001,
                                    achievementOne:
                                        "msg_deposit_rebate_bonus2".tr,
                                    priceSeven: "lbl_333_333_00".tr,
                                  ),
                                ),
                                _buildRowstarone(context),
                                _buildChipviewregiste(context),
                                Container(
                                  height: 160.h,
                                  width: 320.h,
                                  margin: EdgeInsets.only(
                                    left: 10.h,
                                    right: 8.h,
                                  ),
                                  child: BlocBuilder<
                                    ReportDataAddRankingBonusBloc,
                                    ReportDataAddRankingBonusState
                                  >(
                                    builder: (context, state) {
                                      return LineChart(
                                        LineChartData(
                                          minX: 0,
                                          minY: 0,
                                          maxX: 7,
                                          maxY: 6,
                                          borderData: FlBorderData(show: false),
                                          lineTouchData: LineTouchData(
                                            enabled: true,
                                            handleBuiltInTouches: true,
                                            getTouchLineStart:
                                                (chartData, index) => 0.0,
                                            getTouchLineEnd:
                                                (chartData, index) => 0.0,
                                            touchTooltipData:
                                                LineTouchTooltipData(
                                                  getTooltipItems: (spots) {
                                                    return spots.map((
                                                      LineBarSpot touchedSpot,
                                                    ) {
                                                      final textStyle =
                                                          TextStyle(
                                                            color:
                                                                touchedSpot
                                                                    .bar
                                                                    .gradient
                                                                    ?.colors
                                                                    .first ??
                                                                touchedSpot
                                                                    .bar
                                                                    .color ??
                                                                Colors.blueGrey,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14,
                                                          );
                                                      return LineTooltipItem(
                                                        touchedSpot.y
                                                            .toStringAsFixed(2),
                                                        textStyle,
                                                      );
                                                    }).toList();
                                                  },
                                                ),
                                          ),
                                          lineBarsData: List.generate(
                                            state
                                                    .reportdataaddTabModelObj
                                                    ?.chartOneChartModelObj
                                                    .length ??
                                                0,
                                            (index) {
                                              var model =
                                                  state
                                                      .reportdataaddTabModelObj
                                                      ?.chartOneChartModelObj[index] ??
                                                  ChartOneChartModel();
                                              return LineChartBarData(
                                                isCurved: true,
                                                isStrokeCapRound: true,
                                                barWidth: model.barWidth,
                                                color: model.color,
                                                gradient: model.gradient,
                                                dotData: FlDotData(show: false),
                                                spots: model.spots,
                                              );
                                            },
                                          ),
                                          gridData: FlGridData(
                                            verticalInterval: 1,
                                            horizontalInterval: 1,
                                            getDrawingHorizontalLine: (value) {
                                              return FlLine(
                                                color: theme
                                                    .colorScheme
                                                    .onPrimary
                                                    .withValues(alpha: 0.1),
                                                strokeWidth: 0.95,
                                              );
                                            },
                                            drawVerticalLine: false,
                                          ),
                                          titlesData: FlTitlesData(
                                            rightTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                showTitles: false,
                                              ),
                                            ),
                                            topTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                showTitles: false,
                                              ),
                                            ),
                                            bottomTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                showTitles: true,
                                                getTitlesWidget: (
                                                  double value,
                                                  TitleMeta meta,
                                                ) {
                                                  var title = '';
                                                  switch (value) {
                                                    case 1:
                                                      title = "07/18";
                                                    case 2:
                                                      title = "07/20";
                                                    case 3:
                                                      title = "07/22";
                                                    case 4:
                                                      title = "07/24";
                                                    case 5:
                                                      title = "07/26";
                                                    case 6:
                                                      title = "07/28";
                                                    case 7:
                                                      title = "07/30";
                                                  }
                                                  return Text(
                                                    title,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      color:
                                                          appTheme
                                                              .blueGray40003,
                                                      fontSize:
                                                          11.400120735168457
                                                              .fSize,
                                                      fontFamily: 'Arial',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            leftTitles: AxisTitles(
                                              sideTitles: SideTitles(
                                                showTitles: true,
                                                getTitlesWidget: (
                                                  double value,
                                                  TitleMeta meta,
                                                ) {
                                                  var title = '';
                                                  switch (value) {
                                                    case 1:
                                                      title = "0";
                                                    case 2:
                                                      title = "10";
                                                    case 3:
                                                      title = "20";
                                                    case 4:
                                                      title = "30";
                                                    case 5:
                                                      title = "40";
                                                    case 6:
                                                      title = "50";
                                                  }
                                                  return Text(
                                                    title,
                                                    style: TextStyle(
                                                      color:
                                                          appTheme
                                                              .blueGray40003,
                                                      fontSize:
                                                          11.400120735168457
                                                              .fSize,
                                                      fontFamily: 'Arial',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        duration: const Duration(
                                          milliseconds: 500,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(height: 20.h),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowcloseOne(
    BuildContext context, {
    required String closeOne,
    required String achievementOne,
    required String priceSeven,
  }) {
    return Row(
      children: [
        CustomImageView(imagePath: closeOne, height: 24.h, width: 24.h),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            achievementOne,
            style: CustomTextStyles.titleSmallBluegray20005_1.copyWith(
              color: appTheme.blueGray20005,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              priceSeven,
              style: CustomTextStyles.labelLargeAmberA400_2.copyWith(
                color: appTheme.amberA400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStackone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.yellowA70004.withValues(alpha: 0.06),
            width: 1.h,
          ),
          borderRadius: BorderRadiusStyle.circleBorder14,
        ),
        child: Container(
          height: 120.h,
          width: double.maxFinite,
          decoration: AppDecoration.gradientYellowAToGreenA.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.08,
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage120x344,
                  height: 120.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(16.h),
                ),
              ),
              Container(
                height: 120.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFrameOnprimary30x30,
                      height: 30.h,
                      width: 32.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 16.h, right: 22.h),
                    ),
                    Container(
                      height: 120.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 52.h,
                                bottom: 34.h,
                              ),
                              child: Text(
                                "msg_yesterday_s_income".tr,
                                style: CustomTextStyles.bodySmallOnPrimary_2,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.only(
                                left: 24.h,
                                right: 24.h,
                                bottom: 16.h,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_today_s_income2".tr,
                                    style:
                                        CustomTextStyles.bodySmallOnPrimary_2,
                                  ),
                                  Text(
                                    "lbl_10_002".tr,
                                    style:
                                        CustomTextStyles.titleMediumOnPrimary,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 78.h,
                                bottom: 12.h,
                              ),
                              child: Text(
                                "lbl_10_000_002".tr,
                                style: CustomTextStyles.titleMediumOnPrimary,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 24.h, top: 12.h),
                              child: Text(
                                "lbl_total_profit".tr,
                                style: CustomTextStyles.labelLargeOnPrimary_3,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 24.h, top: 28.h),
                              child: Text(
                                "lbl_10_111_000_00".tr,
                                style: CustomTextStyles.titleLarge20,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 24.h,
                                    vertical: 12.h,
                                  ),
                                  decoration: AppDecoration.row215,
                                  width: double.maxFinite,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 2.h),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "lbl_total_profit".tr,
                                                style:
                                                    CustomTextStyles
                                                        .labelLargeOnPrimary_3,
                                              ),
                                              Text(
                                                "lbl_10_111_000_00".tr,
                                                style:
                                                    CustomTextStyles
                                                        .titleLarge20,
                                              ),
                                              SizedBox(height: 16.h),
                                              Text(
                                                "lbl_today_s_income2".tr,
                                                style:
                                                    CustomTextStyles
                                                        .bodySmallOnPrimary_2,
                                              ),
                                              Text(
                                                "lbl_10_002".tr,
                                                style:
                                                    CustomTextStyles
                                                        .titleMediumOnPrimary,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 4.h,
                                              ),
                                              child: Text(
                                                "msg_yesterday_s_income".tr,
                                                style:
                                                    CustomTextStyles
                                                        .bodySmallOnPrimary_2,
                                              ),
                                            ),
                                            Text(
                                              "lbl_10_000_002".tr,
                                              style:
                                                  CustomTextStyles
                                                      .titleMediumOnPrimary,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 18.h,
            width: 20.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse25,
                  height: 18.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(9.0.h),
                ),
                Text("lbl2".tr, style: CustomTextStyles.labelLargeOnPrimary),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text("lbl_income".tr, style: CustomTextStyles.titleLarge20),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "lbl_111_000_00".tr,
              style: CustomTextStyles.titleMediumLightgreenA700,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowuserone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserCyanA40002,
            height: 24.h,
            width: 24.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "msg_registration_bonus2".tr,
                style: CustomTextStyles.titleSmallBluegray20005_1,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 14.h,
              margin: EdgeInsets.only(left: 10.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "lbl_92_00".tr,
                              style: CustomTextStyles.labelLargeAmberA400_2,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 26.h),
                              child: Text(
                                "lbl_registers_3".tr,
                                style:
                                    CustomTextStyles.labelMediumBluegray40003,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgFrame14627,
                              height: 10.h,
                              width: 10.h,
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(left: 4.h),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLine60,
                    height: 1.h,
                    width: 48.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 24.h, bottom: 4.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowtelevision(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTelevisionIndigoA700,
            height: 24.h,
            width: 26.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "lbl_deposit_bonus2".tr,
                style: CustomTextStyles.titleSmallBluegray20005_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "lbl_92_00".tr,
                style: CustomTextStyles.labelLargeAmberA400_2,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Text(
              "lbl_depositors_3".tr,
              style: CustomTextStyles.labelMediumBluegray40003,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrame14627,
            height: 10.h,
            width: 12.h,
            margin: EdgeInsets.only(left: 8.h, top: 6.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowuserthree(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserPurpleA400,
            height: 24.h,
            width: 24.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "msg_qualified_bonus3".tr,
              style: CustomTextStyles.titleSmallBluegray20005_1,
            ),
          ),
          Container(
            height: 14.h,
            width: 54.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  "lbl_1292_00".tr,
                  style: CustomTextStyles.labelLargeAmberA400_2,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLine58,
                  height: 1.h,
                  width: 8.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 6.h),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_qualified_users2".tr,
              style: CustomTextStyles.labelLargeBluegray40003,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrame14627,
            height: 10.h,
            width: 10.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(left: 8.h, top: 6.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowstarone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(
                width: 26.h,
                padding: EdgeInsets.all(4.h),
                decoration: AppDecoration.outline14.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 3.h,
                      decoration: BoxDecoration(
                        color: appTheme.amberA400,
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevisionAmberA400,
                      height: 8.h,
                      width: double.maxFinite,
                    ),
                    SizedBox(height: 4.h),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text(
                "lbl_ranking_bonus".tr,
                style: CustomTextStyles.titleSmallBluegray20005_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "lbl_333_333_00".tr,
                style: CustomTextStyles.labelLargeAmberA400_2,
              ),
            ),
          ),
          Spacer(),
          SizedBox(
            width: 62.h,
            child: Divider(
              color: theme.colorScheme.onPrimary.withValues(alpha: 0.06),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChipviewregiste(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      child: BlocSelector<
        ReportDataAddRankingBonusBloc,
        ReportDataAddRankingBonusState,
        ReportdataaddTabModel?
      >(
        selector: (state) => state.reportdataaddTabModelObj,
        builder: (context, reportdataaddTabModelObj) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              direction: Axis.horizontal,
              runSpacing: 8.h,
              spacing: 8.h,
              children: List<Widget>.generate(
                reportdataaddTabModelObj?.chipviewregisteItemList.length ?? 0,
                (index) {
                  ChipviewregisteItemModel model =
                      reportdataaddTabModelObj
                          ?.chipviewregisteItemList[index] ??
                      ChipviewregisteItemModel();
                  return ChipviewregisteItemWidget(model);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

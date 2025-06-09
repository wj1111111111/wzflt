import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/report_data_summary_loading_bloc.dart';
import 'models/reportdata_tab_model.dart';

class ReportdataTabPage extends StatefulWidget {
  const ReportdataTabPage({Key? key}) : super(key: key);

  @override
  ReportdataTabPageState createState() => ReportdataTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ReportDataSummaryLoadingBloc>(
      create:
          (context) => ReportDataSummaryLoadingBloc(
            ReportDataSummaryLoadingState(
              reportdataTabModelObj: ReportdataTabModel(),
            ),
          )..add(ReportDataSummaryLoadingInitialEvent()),
      child: ReportdataTabPage(),
    );
  }
}

class ReportdataTabPageState extends State<ReportdataTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
      child: Column(
        children: [
          SizedBox(height: 4.h),
          Expanded(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                spacing: 12,
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildStackone(context),
                  _buildColumndaterange(context),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
          ),
        ],
      ),
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
                                  decoration: AppDecoration.row217,
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
  Widget _buildColumndaterange(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.h),
              decoration: AppDecoration.outline1.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Column(
                spacing: 80,
                mainAxisSize: MainAxisSize.max,
                children: [
                  BlocSelector<
                    ReportDataSummaryLoadingBloc,
                    ReportDataSummaryLoadingState,
                    TextEditingController?
                  >(
                    selector: (state) => state.dateRangeController,
                    builder: (context, dateRangeController) {
                      return CustomTextFormField(
                        controller: dateRangeController,
                        hintText: "msg_2024_08_21_2024_08_27".tr,
                        hintStyle: CustomTextStyles.labelLarge13_1,
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                          margin: EdgeInsets.fromLTRB(24.h, 12.h, 10.h, 12.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCalendar,
                            height: 14.h,
                            width: 16.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(maxHeight: 40.h),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 12.h,
                        ),
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineBlackTL6,
                        fillColor: appTheme.blueGray90004,
                      );
                    },
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage561,
                    height: 42.h,
                    width: 44.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/report_data_summary_date_filter_one_bloc.dart';
import 'models/gridall_item_model.dart';
import 'models/scrollview_tab_model.dart';
import 'widgets/gridall_item_widget.dart';

class ScrollviewTabPage extends StatefulWidget {
  const ScrollviewTabPage({Key? key}) : super(key: key);

  @override
  ScrollviewTabPageState createState() => ScrollviewTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ReportDataSummaryDateFilterOneBloc>(
      create:
          (context) => ReportDataSummaryDateFilterOneBloc(
            ReportDataSummaryDateFilterOneState(
              scrollviewTabModelObj: ScrollviewTabModel(),
            ),
          )..add(ReportDataSummaryDateFilterOneInitialEvent()),
      child: ScrollviewTabPage(),
    );
  }
}

class ScrollviewTabPageState extends State<ScrollviewTabPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillBlack9004,
              child: Column(
                children: [_buildColumnall(context), SizedBox(height: 586.h)],
              ),
            ),
            _buildStackone(context),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: BlocSelector<
                ReportDataSummaryDateFilterOneBloc,
                ReportDataSummaryDateFilterOneState,
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
                    borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                    fillColor: appTheme.gray90001,
                  );
                },
              ),
            ),
            SizedBox(height: 14.h),
            _buildRowone(context),
            SizedBox(height: 12.h),
            _buildRowregistration(context),
            SizedBox(height: 10.h),
            _buildRowdepositbonus(context),
            SizedBox(height: 10.h),
            _buildRowqualifiedbon(context),
            SizedBox(height: 10.h),
            _buildRowbettingrebat(context),
            SizedBox(height: 10.h),
            _buildRowachievement(context),
            SizedBox(height: 16.h),
            _buildColumnregisters(context),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildStackqualifiedb(
    BuildContext context, {
    required String qualifiedbonus,
    required String p1292zeroTwo,
  }) {
    return SizedBox(
      height: 18.h,
      width: 170.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              qualifiedbonus,
              style: CustomTextStyles.titleSmallBluegray20005_1.copyWith(
                color: appTheme.blueGray20005,
              ),
            ),
          ),
          Text(
            p1292zeroTwo,
            style: CustomTextStyles.titleSmallAmberA400_2.copyWith(
              color: appTheme.amberA400,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnall(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.h),
      decoration: AppDecoration.fillGray90035,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocSelector<
            ReportDataSummaryDateFilterOneBloc,
            ReportDataSummaryDateFilterOneState,
            ScrollviewTabModel?
          >(
            selector: (state) => state.scrollviewTabModelObj,
            builder: (context, scrollviewTabModelObj) {
              return ResponsiveGridListBuilder(
                minItemWidth: 1,
                minItemsPerRow: 3,
                maxItemsPerRow: 3,
                horizontalGridSpacing: 8.h,
                verticalGridSpacing: 8.h,
                builder:
                    (context, items) => ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: NeverScrollableScrollPhysics(),
                      children: items,
                    ),
                gridItems: List.generate(
                  scrollviewTabModelObj?.gridallItemList.length ?? 0,
                  (index) {
                    GridallItemModel model =
                        scrollviewTabModelObj?.gridallItemList[index] ??
                        GridallItemModel();
                    return GridallItemWidget(model);
                  },
                ),
              );
            },
          ),
          SizedBox(height: 22.h),
          Text("lbl_gustomize".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.h),
            decoration: AppDecoration.fillBluegray90004.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_08_21_2024_08_27_2024".tr,
                  style: CustomTextStyles.titleSmallBluegray200_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                  height: 16.h,
                  width: 18.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 6.h),
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
        margin: EdgeInsets.symmetric(horizontal: 14.h),
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
                                  decoration: AppDecoration.row220,
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
      margin: EdgeInsets.only(left: 14.h, right: 4.h),
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
  Widget _buildRowregistration(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 36.h,
            width: 36.h,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.outline,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrameLightBlueA400,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: _buildStackqualifiedb(
                context,
                qualifiedbonus: "msg_registration_bonus2".tr,
                p1292zeroTwo: "lbl_92_00".tr,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLine60,
            height: 1.h,
            width: 46.h,
            margin: EdgeInsets.only(left: 2.h),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.h),
              child: Text(
                "lbl_registers_3".tr,
                style: CustomTextStyles.labelLargeBluegray40003,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrame14627,
            height: 10.h,
            width: 10.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(left: 4.h, top: 12.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowdepositbonus(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 36.h,
            width: 36.h,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.outlineTL8,
            child: CustomImageView(imagePath: ImageConstant.imgFramePurpleA200),
          ),
          Expanded(
            child: Container(
              height: 20.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_deposit_bonus2".tr,
                      style: CustomTextStyles.titleSmallBluegray20005_1,
                    ),
                  ),
                  Text(
                    "lbl_92_00".tr,
                    style: CustomTextStyles.titleSmallAmberA400_2,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 66.h,
            child: Divider(
              color: theme.colorScheme.onPrimary.withValues(alpha: 0.06),
              indent: 4.h,
            ),
          ),
          Container(
            height: 16.h,
            width: 82.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame14627,
                  height: 10.h,
                  width: 12.h,
                  alignment: Alignment.topRight,
                ),
                Text(
                  "lbl_depositors_3".tr,
                  style: CustomTextStyles.labelLargeBluegray40003,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowqualifiedbon(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 36.h,
            width: 36.h,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.outlineTL81,
            child: CustomImageView(imagePath: ImageConstant.imgFramePink30002),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: _buildStackqualifiedb(
                context,
                qualifiedbonus: "msg_qualified_bonus3".tr,
                p1292zeroTwo: "lbl_1292_00".tr,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLine58Onprimary,
            height: 1.h,
            width: 16.h,
            margin: EdgeInsets.only(left: 4.h),
          ),
          Container(
            height: 16.h,
            width: 104.h,
            margin: EdgeInsets.only(left: 4.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame14627,
                  height: 10.h,
                  width: 12.h,
                  alignment: Alignment.topRight,
                ),
                Text(
                  "msg_qualified_users2".tr,
                  style: CustomTextStyles.labelLargeBluegray40003,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowbettingrebat(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 36.h,
            width: 36.h,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.outlineTL82,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrameOrange70002,
            ),
          ),
          Expanded(
            child: Container(
              height: 20.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg_betting_rebates".tr,
                      style: CustomTextStyles.titleSmallBluegray20005_1,
                    ),
                  ),
                  Text(
                    "lbl_1292_00".tr,
                    style: CustomTextStyles.titleSmallAmberA400_2,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 98.h,
            child: Divider(
              color: theme.colorScheme.onPrimary.withValues(alpha: 0.06),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowachievement(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 36.h,
            width: 36.h,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.outlineTL83,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrameLightGreenA70007,
            ),
          ),
          Expanded(
            child: Container(
              height: 20.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg_achievement_rewards2".tr,
                      style: CustomTextStyles.titleSmallBluegray20005_1,
                    ),
                  ),
                  Text(
                    "lbl_333_333_00".tr,
                    style: CustomTextStyles.titleSmallAmberA400_2,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 68.h,
            child: Divider(
              color: theme.colorScheme.onPrimary.withValues(alpha: 0.06),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnregisters(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        spacing: 18,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 6.h),
                decoration: AppDecoration.outline15.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "lbl_registers".tr,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeLightgreenA700,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 6.h),
                decoration: AppDecoration.outline1.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "lbl_deposits".tr,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.h),
                decoration: AppDecoration.outline1.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "lbl_qualifed_users2".tr,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          Container(
            height: 170.h,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h, right: 2.h),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 6.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 24.h),
                              child: Text(
                                "lbl_07_18".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeBluegray40003,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 14.h),
                              child: Text(
                                "lbl_07_20".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeBluegray40003,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 14.h),
                              child: Text(
                                "lbl_07_22".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeBluegray40003,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 14.h),
                              child: Text(
                                "lbl_07_24".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeBluegray40003,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 14.h),
                              child: Text(
                                "lbl_07_26".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeBluegray40003,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 14.h),
                              child: Text(
                                "lbl_07_28".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeBluegray40003,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 14.h),
                              child: Text(
                                "lbl_07_30".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.labelLargeBluegray40003,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_50".tr,
                                style: CustomTextStyles.labelLargeBluegray40003,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 6.h),
                                    child: Divider(
                                      color: theme.colorScheme.onPrimary
                                          .withValues(alpha: 0.1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_402".tr,
                                style: CustomTextStyles.labelLargeBluegray40003,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 6.h),
                                    child: Divider(
                                      color: theme.colorScheme.onPrimary
                                          .withValues(alpha: 0.1),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 6.h),
                        SizedBox(
                          height: 108.h,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 260.h,
                                  margin: EdgeInsets.only(right: 28.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 36.h,
                                  ),
                                  decoration: AppDecoration.column222,
                                  child: Column(
                                    spacing: 20,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          height: 5.h,
                                          width: 5.h,
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary,
                                            borderRadius: BorderRadius.circular(
                                              2.h,
                                            ),
                                            border: Border.all(
                                              color: appTheme.lightGreenA700,
                                              width: 1.6.h,
                                              strokeAlign:
                                                  BorderSide.strokeAlignOutside,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 5.h,
                                        width: 5.h,
                                        decoration: BoxDecoration(
                                          color: theme.colorScheme.onPrimary,
                                          borderRadius: BorderRadius.circular(
                                            2.h,
                                          ),
                                          border: Border.all(
                                            color: appTheme.lightGreenA700,
                                            width: 1.6.h,
                                            strokeAlign:
                                                BorderSide.strokeAlignOutside,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 66.h),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "lbl_302".tr,
                                            style:
                                                CustomTextStyles
                                                    .labelLargeBluegray40003,
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 2.h,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                        height: 5.h,
                                                        width: 5.h,
                                                        margin: EdgeInsets.only(
                                                          right: 18.h,
                                                        ),
                                                        decoration: BoxDecoration(
                                                          color:
                                                              theme
                                                                  .colorScheme
                                                                  .onPrimary,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                2.h,
                                                              ),
                                                          border: Border.all(
                                                            color:
                                                                appTheme
                                                                    .lightGreenA700,
                                                            width: 1.6.h,
                                                            strokeAlign:
                                                                BorderSide
                                                                    .strokeAlignOutside,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 5.h,
                                                      width: 5.h,
                                                      margin: EdgeInsets.only(
                                                        left: 122.h,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            theme
                                                                .colorScheme
                                                                .onPrimary,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              2.h,
                                                            ),
                                                        border: Border.all(
                                                          color:
                                                              appTheme
                                                                  .lightGreenA700,
                                                          width: 1.6.h,
                                                          strokeAlign:
                                                              BorderSide
                                                                  .strokeAlignOutside,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: double.maxFinite,
                                                      child: Divider(
                                                        color: theme
                                                            .colorScheme
                                                            .onPrimary
                                                            .withValues(
                                                              alpha: 0.1,
                                                            ),
                                                        indent: 6.h,
                                                      ),
                                                    ),
                                                    SizedBox(height: 2.h),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "lbl_20".tr,
                                              style:
                                                  CustomTextStyles
                                                      .labelLargeBluegray40003,
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              spacing: 2,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  height: 5.h,
                                                  width: 5.h,
                                                  margin: EdgeInsets.only(
                                                    right: 110.h,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        theme
                                                            .colorScheme
                                                            .onPrimary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          2.h,
                                                        ),
                                                    border: Border.all(
                                                      color:
                                                          appTheme
                                                              .lightGreenA700,
                                                      width: 1.6.h,
                                                      strokeAlign:
                                                          BorderSide
                                                              .strokeAlignOutside,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: double.maxFinite,
                                                  child: Divider(
                                                    color: theme
                                                        .colorScheme
                                                        .onPrimary
                                                        .withValues(alpha: 0.1),
                                                    indent: 6.h,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "lbl_10".tr,
                                            textAlign: TextAlign.right,
                                            style:
                                                CustomTextStyles
                                                    .labelLargeBluegray40003,
                                          ),
                                          Expanded(
                                            child: Column(
                                              spacing: 4,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 5.h,
                                                  width: 5.h,
                                                  margin: EdgeInsets.only(
                                                    left: 32.h,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        theme
                                                            .colorScheme
                                                            .onPrimary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          2.h,
                                                        ),
                                                    border: Border.all(
                                                      color:
                                                          appTheme
                                                              .lightGreenA700,
                                                      width: 1.6.h,
                                                      strokeAlign:
                                                          BorderSide
                                                              .strokeAlignOutside,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: double.maxFinite,
                                                  child: Divider(
                                                    color: theme
                                                        .colorScheme
                                                        .onPrimary
                                                        .withValues(alpha: 0.1),
                                                    indent: 6.h,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.h,
                                                  width: 5.h,
                                                  margin: EdgeInsets.only(
                                                    left: 74.h,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        theme
                                                            .colorScheme
                                                            .onPrimary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          2.h,
                                                        ),
                                                    border: Border.all(
                                                      color:
                                                          appTheme
                                                              .lightGreenA700,
                                                      width: 1.6.h,
                                                      strokeAlign:
                                                          BorderSide
                                                              .strokeAlignOutside,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    Container(
                                      width: double.maxFinite,
                                      margin: EdgeInsets.only(left: 6.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "lbl_0".tr,
                                            textAlign: TextAlign.right,
                                            style:
                                                CustomTextStyles
                                                    .labelLargeBluegray40003,
                                          ),
                                          Expanded(
                                            child: Divider(
                                              color: theme.colorScheme.onPrimary
                                                  .withValues(alpha: 0.1),
                                            ),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

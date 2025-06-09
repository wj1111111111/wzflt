import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/weekly_salary_bloc.dart';
import 'models/weekly_salary_item_model.dart';
import 'models/weekly_salary_model.dart';
import 'widgets/weekly_salary_item_widget.dart';

class WeeklySalaryScreen extends StatelessWidget {
  const WeeklySalaryScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WeeklySalaryBloc>(
      create:
          (context) => WeeklySalaryBloc(
            WeeklySalaryState(weeklySalaryModelObj: WeeklySalaryModel()),
          )..add(WeeklySalaryInitialEvent()),
      child: WeeklySalaryScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 1218.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: _buildAppbar(context),
                  ),
                  Container(
                    height: 1218.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        _buildColumncloseone(context),
                        _buildStackthreeone(context),
                        _buildColumnclose(context),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: double.maxFinite,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [_buildRow(context)],
                            ),
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.all(30.h),
                          decoration: AppDecoration.fillBlack9002,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomElevatedButton(
                                height: 48.h,
                                text: "msg_received_successfully".tr,
                                buttonStyle: CustomButtonStyles.fillBlueGrayTL8,
                                buttonTextStyle: theme.textTheme.titleMedium!,
                              ),
                              SizedBox(height: 58.h),
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
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppbar(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomAppBar(
        height: 86.h,
        leadingWidth: 23.h,
        leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
          width: 8.h,
          margin: EdgeInsets.only(left: 15.h),
        ),
        title: AppbarSubtitleTwo(
          text: "lbl_vip".tr,
          margin: EdgeInsets.only(left: 9.h),
        ),
        actions: [
          AppbarTrailingImage(imagePath: ImageConstant.imgLock),
          AppbarSubtitleOne(
            text: "lbl_r_1980_00".tr,
            margin: EdgeInsets.only(left: 8.h),
          ),
          AppbarTrailingImage(
            imagePath: ImageConstant.img1,
            height: 14.h,
            width: 16.h,
            margin: EdgeInsets.only(left: 11.h, right: 20.h),
          ),
        ],
        styleType: Style.bgShadowBlack900,
      ),
    );
  }

  /// Section Widget
  Widget _buildColumncloseone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 14.h, top: 174.h, right: 14.h),
        child: Column(
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 74.h,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.maxFinite,
                      decoration: AppDecoration.gradientBlueGrayToTeal.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img4,
                            height: 70.h,
                            width: double.maxFinite,
                            radius: BorderRadius.circular(8.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 74.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img6,
                          height: 74.h,
                          width: double.maxFinite,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCloseOnprimary,
                          height: 24.h,
                          width: 34.h,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(right: 20.h, bottom: 22.h),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 10.h),
              decoration: AppDecoration.outlineBluegray900122.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Column(
                spacing: 14,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 6.h),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 8.h,
                    ),
                    decoration: AppDecoration.outlineBluegray900121.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgCloseGray90023,
                                height: 36.h,
                                width: 36.h,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.h,
                                    bottom: 4.h,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_how_to_get".tr,
                                          style:
                                              CustomTextStyles
                                                  .titleSmallBlack_1,
                                        ),
                                        TextSpan(
                                          text: "lbl_vip2".tr,
                                          style:
                                              CustomTextStyles
                                                  .titleSmallLightgreenA700Black,
                                        ),
                                        TextSpan(text: " "),
                                        TextSpan(
                                          text: "lbl_weekly_salary".tr,
                                          style:
                                              CustomTextStyles
                                                  .titleSmallLightgreenA700Black,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "msg_you_can_receive2".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelLarge!.copyWith(
                            height: 1.33,
                          ),
                        ),
                        SizedBox(height: 14.h),
                        Text(
                          "msg_collection_time4".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.labelLarge!.copyWith(
                            height: 1.33,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_weekly_collection".tr,
                                style:
                                    CustomTextStyles.titleSmallLightgreenA700_1,
                              ),
                              TextSpan(
                                text: "lbl_sunday_22_00_00".tr,
                                style: CustomTextStyles.titleSmallGray50,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          height: 24.h,
                          width: 152.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_your_level2".tr,
                                      style: CustomTextStyles.titleSmallBlack_1,
                                    ),
                                    TextSpan(
                                      text: "lbl_v8".tr,
                                      style:
                                          CustomTextStyles.titleSmallAmberA400,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVip,
                                height: 24.h,
                                width: 28.h,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 26.h),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_weekly_salary2".tr,
                                style: CustomTextStyles.titleSmallBlack_1,
                              ),
                              TextSpan(
                                text: "lbl_1999".tr,
                                style: CustomTextStyles.titleSmallAmberA400,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgInboxBlueGray400,
                        height: 14.h,
                        width: 14.h,
                      ),
                      Text(
                        "msg_there_are_no_rewards".tr,
                        style: CustomTextStyles.labelLargeOnPrimary_6,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackthreeone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 74.h,
        margin: EdgeInsets.only(left: 14.h, top: 90.h, right: 14.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                decoration: AppDecoration.gradientOrangeToOrange.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img3,
                      height: 70.h,
                      width: double.maxFinite,
                      radius: BorderRadius.circular(8.h),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 74.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img74x344,
                    height: 74.h,
                    width: double.maxFinite,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCloseOnprimary,
                    height: 24.h,
                    width: 34.h,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(right: 20.h, bottom: 22.h),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnclose(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 14.h, right: 14.h, bottom: 54.h),
        child: Column(
          spacing: 10,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 74.h,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.maxFinite,
                      decoration: AppDecoration.gradientIndigoToDeepPurpleA
                          .copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder10,
                          ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img4,
                            height: 70.h,
                            width: double.maxFinite,
                            radius: BorderRadius.circular(8.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 74.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img7,
                          height: 74.h,
                          width: double.maxFinite,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCloseOnprimary,
                          height: 24.h,
                          width: 34.h,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(right: 20.h, bottom: 22.h),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 78.h,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.maxFinite,
                      decoration: AppDecoration.gradientBlueToBlueA.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img4,
                            height: 70.h,
                            width: double.maxFinite,
                            radius: BorderRadius.circular(8.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 78.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        SizedBox(
                          height: 74.h,
                          width: 252.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img74x250,
                                height: 74.h,
                                width: double.maxFinite,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgCloseOnprimary,
                                height: 24.h,
                                width: 34.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(
                                  right: 20.h,
                                  bottom: 22.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img896611,
                          height: 76.h,
                          width: 106.h,
                          radius: BorderRadius.circular(6.h),
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.h),
              decoration: AppDecoration.fs4bg.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder10,
              ),
              child: Column(
                spacing: 16,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_upgrade_vip_task".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    decoration: AppDecoration.fs2bg.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Column(
                      spacing: 6,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 6.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 4.h),
                                  child: Text(
                                    "lbl_vip_level".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 22.h),
                                child: _buildColumnlv(
                                  context,
                                  lvOne: "lbl_lv_12".tr,
                                ),
                              ),
                              Spacer(flex: 50),
                              _buildColumnlvthree(
                                context,
                                lvthreeOne: "lbl_lv_22".tr,
                              ),
                              Spacer(flex: 49),
                              _buildColumnlvthree(
                                context,
                                lvthreeOne: "lbl_lv_32".tr,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 28.h),
                                child: _buildColumnlvthree(
                                  context,
                                  lvthreeOne: "lbl_lv_42".tr,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 26.h),
                                child: _buildColumnlv(
                                  context,
                                  lvOne: "lbl_lv".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: double.maxFinite, child: Divider()),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: BlocSelector<
                            WeeklySalaryBloc,
                            WeeklySalaryState,
                            WeeklySalaryModel?
                          >(
                            selector: (state) => state.weeklySalaryModelObj,
                            builder: (context, weeklySalaryModelObj) {
                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 8.0.h,
                                    ),
                                    child: Divider(
                                      height: 1.h,
                                      thickness: 1.h,
                                      color: appTheme.blueGray90017,
                                    ),
                                  );
                                },
                                itemCount:
                                    weeklySalaryModelObj
                                        ?.weeklySalaryItemList
                                        .length ??
                                    0,
                                itemBuilder: (context, index) {
                                  WeeklySalaryItemModel model =
                                      weeklySalaryModelObj
                                          ?.weeklySalaryItemList[index] ??
                                      WeeklySalaryItemModel();
                                  return WeeklySalaryItemWidget(model);
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 4.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 238.h),
          padding: EdgeInsets.symmetric(horizontal: 40.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1224,
                height: 32.h,
                width: 12.h,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup1224,
                height: 32.h,
                width: 12.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildColumnlv(BuildContext context, {required String lvOne}) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.img684411655,
          height: 14.h,
          width: 16.h,
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(left: 4.h),
        ),
        Text(
          lvOne,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildColumnlvthree(
    BuildContext context, {
    required String lvthreeOne,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.img684411655,
          height: 14.h,
          width: 16.h,
          margin: EdgeInsets.symmetric(horizontal: 4.h),
        ),
        Text(
          lvthreeOne,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
      ],
    );
  }
}

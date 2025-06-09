import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/feedback_box_success_prompt_bloc.dart';
import 'models/feedback_box_success_prompt_model.dart';

// ignore_for_file: must_be_immutable
class FeedbackBoxSuccessPromptScreen extends StatelessWidget {
  FeedbackBoxSuccessPromptScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FeedbackBoxSuccessPromptBloc>(
      create:
          (context) => FeedbackBoxSuccessPromptBloc(
            FeedbackBoxSuccessPromptState(
              feedbackBoxSuccessPromptModelObj: FeedbackBoxSuccessPromptModel(),
            ),
          )..add(FeedbackBoxSuccessPromptInitialEvent()),
      child: FeedbackBoxSuccessPromptScreen(),
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
              height: 1092.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup724,
                    height: 172.h,
                    width: double.maxFinite,
                    alignment: Alignment.topCenter,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildStackcalendar(context),
                        SizedBox(height: 18.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 14.h),
                            decoration: AppDecoration.outlineBlack,
                            child: Text(
                              "lbl_teams_center".tr,
                              textAlign: TextAlign.left,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        _buildStackvectorone(context),
                        SizedBox(height: 10.h),
                        SizedBox(
                          height: 448.h,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.symmetric(horizontal: 14.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 14.h,
                                  vertical: 16.h,
                                ),
                                decoration: AppDecoration.fs4bg.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder10,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: _buildRowvectorNine(
                                        context,
                                        vectorNine:
                                            ImageConstant
                                                .imgTelevisionBlueGray400,
                                        suggestionOne: "lbl_vip2".tr,
                                      ),
                                    ),
                                    SizedBox(height: 14.h),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Divider(),
                                    ),
                                    Spacer(),
                                    _buildRowbagone(context),
                                    SizedBox(height: 6.h),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Divider(),
                                    ),
                                    SizedBox(height: 14.h),
                                    Container(
                                      width: double.maxFinite,
                                      margin: EdgeInsets.only(left: 2.h),
                                      child: _buildRowsearchOne(
                                        context,
                                        searchOne: ImageConstant.imgContrast,
                                        settingOne: "lbl_live_support".tr,
                                      ),
                                    ),
                                    SizedBox(height: 14.h),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Divider(),
                                    ),
                                    SizedBox(height: 14.h),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: _buildRowvectorNine(
                                        context,
                                        vectorNine: ImageConstant.imgVector,
                                        suggestionOne: "lbl_suggestion".tr,
                                      ),
                                    ),
                                    SizedBox(height: 14.h),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Divider(),
                                    ),
                                    SizedBox(height: 14.h),
                                    Container(
                                      width: double.maxFinite,
                                      margin: EdgeInsets.only(left: 2.h),
                                      child: _buildRowsearchOne(
                                        context,
                                        searchOne:
                                            ImageConstant.imgSearchBlueGray400,
                                        settingOne: "lbl_setting".tr,
                                      ),
                                    ),
                                    SizedBox(height: 14.h),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Divider(),
                                    ),
                                    SizedBox(height: 14.h),
                                    Container(
                                      width: double.maxFinite,
                                      margin: EdgeInsets.only(left: 2.h),
                                      child: _buildRowsearchOne(
                                        context,
                                        searchOne:
                                            ImageConstant.imgProfileBlueGray400,
                                        settingOne: "lbl_help_center".tr,
                                      ),
                                    ),
                                    SizedBox(height: 14.h),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Divider(),
                                    ),
                                    SizedBox(height: 12.h),
                                    _buildRowuserone(context),
                                    SizedBox(height: 2.h),
                                  ],
                                ),
                              ),
                              _buildStackhomeone(context),
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
      bottomNavigationBar: Container(
        width: double.maxFinite,
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        child: _buildBottombar(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  /// Section Widget
  Widget _buildWithdrawalone(BuildContext context) {
    return CustomOutlinedButton(
      width: 136.h,
      text: "lbl_withdrawal".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgTelevisionOnprimary,
          height: 10.h,
          width: 16.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientAmberToAmberTL18Decoration,
      buttonTextStyle: CustomTextStyles.titleSmallBlack,
    );
  }

  /// Section Widget
  Widget _buildDeposittwo(BuildContext context) {
    return CustomOutlinedButton(
      width: 124.h,
      text: "lbl_deposit".tr,
      margin: EdgeInsets.only(left: 10.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 6.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgShare,
          height: 10.h,
          width: 16.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientLightGreenAToLightGreenTL18Decoration,
      buttonTextStyle: CustomTextStyles.titleSmallBlack,
    );
  }

  /// Section Widget
  Widget _buildStackcalendar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: appTheme.lightGreenA700, width: 1.h),
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Container(
          height: 192.h,
          width: double.maxFinite,
          decoration: AppDecoration.gradientLightGreenAToLightgreen8002
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.2,
                child: CustomImageView(
                  imagePath: ImageConstant.img22,
                  height: 162.h,
                  width: 296.h,
                  radius: BorderRadius.circular(8.h),
                  alignment: Alignment.topLeft,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.column413,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup130x342,
                        height: 130.h,
                        width: double.maxFinite,
                        radius: BorderRadius.circular(8.h),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 6.h),
                padding: EdgeInsets.all(8.h),
                decoration: AppDecoration.outlineLightgreenA7002.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCalendarGray90001,
                            height: 40.h,
                            width: 40.h,
                            alignment: Alignment.center,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_user_name".tr,
                                    style: CustomTextStyles.titleSmallGray30001,
                                  ),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "lbl_98955464616".tr,
                                            style:
                                                CustomTextStyles
                                                    .titleSmallBlack,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.img1BlueGray100,
                                          height: 10.h,
                                          width: 10.h,
                                          margin: EdgeInsets.only(
                                            left: 6.h,
                                            top: 4.h,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.h),
                            decoration: AppDecoration.fs15.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder14,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgV4,
                                  height: 24.h,
                                  width: 24.h,
                                  alignment: Alignment.bottomCenter,
                                  margin: EdgeInsets.only(top: 4.h),
                                ),
                                Text(
                                  "lbl_vip_4".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text("lbl_balance".tr, style: theme.textTheme.titleSmall),
                    SizedBox(height: 4.h),
                    Container(
                      decoration: AppDecoration.outlineBlack,
                      child: Text(
                        "lbl_1324_00".tr,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.headlineSmallYellow50002,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          _buildWithdrawalone(context),
                          _buildDeposittwo(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 44.h,
                  width: 114.h,
                  padding: EdgeInsets.only(left: 12.h),
                  decoration: AppDecoration.gradientLightGreenToLightGreen
                      .copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL22,
                      ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup839,
                        height: 24.h,
                        width: 26.h,
                        radius: BorderRadius.circular(8.h),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEnterthegift(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: BlocSelector<
          FeedbackBoxSuccessPromptBloc,
          FeedbackBoxSuccessPromptState,
          TextEditingController?
        >(
          selector: (state) => state.enterthegiftController,
          builder: (context, enterthegiftController) {
            return CustomTextFormField(
              controller: enterthegiftController,
              hintText: "msg_enter_the_gift_code".tr,
              textInputAction: TextInputAction.done,
              contentPadding: EdgeInsets.all(12.h),
              borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExchange(BuildContext context) {
    return CustomElevatedButton(
      height: 34.h,
      width: 78.h,
      text: "lbl_exchange".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayDecoration,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
    );
  }

  /// Section Widget
  Widget _buildStackvectorone(BuildContext context) {
    return Container(
      height: 370.h,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              spacing: 10,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 10.h,
                  ),
                  decoration: AppDecoration.fs4bg.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 60.h,
                        child: Column(
                          spacing: 4,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector26x26,
                              height: 26.h,
                              width: 28.h,
                              margin: EdgeInsets.only(left: 8.h),
                            ),
                            Text(
                              "lbl_betting_record".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          spacing: 4,
                          children: [
                            Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.only(left: 30.h, right: 20.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector26x20,
                                    height: 26.h,
                                    width: 22.h,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector24x26,
                                    height: 24.h,
                                    width: 28.h,
                                    radius: BorderRadius.circular(6.h),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector26x24,
                                    height: 26.h,
                                    width: 26.h,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 50.h,
                                    margin: EdgeInsets.only(left: 16.h),
                                    child: Text(
                                      "lbl_account_record".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 46.h,
                                    child: Text(
                                      "lbl_deposit_record".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ),
                                  Container(
                                    width: 66.h,
                                    margin: EdgeInsets.only(left: 26.h),
                                    child: Text(
                                      "msg_withdrawal_record".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.labelLarge,
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
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 8.h),
                  decoration: AppDecoration.fs4bg.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  child: Column(
                    spacing: 10,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 6.h, right: 12.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgInvite1,
                              height: 36.h,
                              width: 36.h,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 4.h),
                                      child: Text(
                                        "lbl_invite3".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 10.h),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    "msg_reconnend_friends_to"
                                                        .tr,
                                                style:
                                                    CustomTextStyles
                                                        .labelLargeBluegray200_1,
                                              ),
                                              TextSpan(
                                                text: "msg_jbet88_and_earn".tr,
                                                style:
                                                    CustomTextStyles
                                                        .labelLargeLightgreenA700_1,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgArrowRightBlueGray70001,
                              height: 12.h,
                              width: 6.h,
                              margin: EdgeInsets.only(left: 10.h),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(
                          color: appTheme.blueGray90012,
                          indent: 12.h,
                          endIndent: 12.h,
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 8.h, right: 12.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgCloseOnprimary30x30,
                              height: 30.h,
                              width: 32.h,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 12.h,
                                  bottom: 4.h,
                                ),
                                child: Text(
                                  "lbl_spin".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 10.h,
                                  bottom: 6.h,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_win_real_money".tr,
                                        style:
                                            CustomTextStyles
                                                .labelLargeBluegray200_1,
                                      ),
                                      TextSpan(
                                        text: "lbl_5003".tr,
                                        style:
                                            CustomTextStyles
                                                .labelLargeLightgreenA700_1,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgArrowRightBlueGray70001,
                              height: 12.h,
                              width: 8.h,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(
                          color: appTheme.blueGray90012,
                          indent: 12.h,
                          endIndent: 12.h,
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 6.h, right: 12.h),
                        child: _buildRowadd2e694b509(
                          context,
                          add2e694b509077: ImageConstant.imgGroup120051,
                          signinOne: "lbl_cashback".tr,
                          continuousOne: "lbl_weekly_max_20".tr,
                        ),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(
                          color: appTheme.blueGray90012,
                          indent: 12.h,
                          endIndent: 12.h,
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 6.h, right: 12.h),
                        child: _buildRowadd2e694b509(
                          context,
                          add2e694b509077: ImageConstant.imgAdd2e694b509077,
                          signinOne: "lbl_sign_in".tr,
                          continuousOne: "msg_continuous_login_continuous".tr,
                        ),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(
                          color: appTheme.blueGray90012,
                          indent: 12.h,
                          endIndent: 12.h,
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(right: 6.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 36.h,
                                    width: 50.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.img236,
                                          height: 36.h,
                                          width: 38.h,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            "lbl_gift_code".tr,
                                            style:
                                                CustomTextStyles
                                                    .labelLargeBluegray7000113,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  _buildEnterthegift(context),
                                ],
                              ),
                            ),
                            _buildExchange(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 122.h,
              margin: EdgeInsets.only(top: 24.h),
              padding: EdgeInsets.symmetric(horizontal: 32.h),
              decoration: AppDecoration.fs6wz.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder14,
              ),
              child: Column(
                spacing: 8,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkOnprimary,
                    height: 42.h,
                    width: double.maxFinite,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "lbl_success".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMedium18.copyWith(
                        height: 1.11,
                      ),
                    ),
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
  Widget _buildInstalall(BuildContext context) {
    return CustomElevatedButton(
      height: 30.h,
      width: 80.h,
      text: "lbl_instalall".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientLightGreenAToLightGreenTL4Decoration,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
    );
  }

  /// Section Widget
  Widget _buildRowbagone(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgBag,
          height: 16.h,
          width: 20.h,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 4.h),
        ),
        Text(
          "msg_download_the_official".tr,
          style: CustomTextStyles.titleSmallBluegray400_1,
        ),
        _buildInstalall(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildRowuserone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserBlueGray40020x20,
            height: 20.h,
            width: 22.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "lbl_logout".tr,
              style: CustomTextStyles.titleSmallBluegray400_1,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightBlueGray70001,
            height: 12.h,
            width: 8.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 2.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackhomeone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 84.h,
        margin: EdgeInsets.only(top: 62.h),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.h),
              decoration: AppDecoration.fs3qbg,
              child: Column(
                spacing: 2,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 4.h, right: 6.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgHome,
                          height: 20.h,
                          width: 24.h,
                        ),
                        Spacer(flex: 21),
                        CustomImageView(
                          imagePath: ImageConstant.imgNavPromotion,
                          height: 20.h,
                          width: 22.h,
                        ),
                        Spacer(flex: 55),
                        CustomImageView(
                          imagePath: ImageConstant.imgNavDeposit,
                          height: 20.h,
                          width: 20.h,
                        ),
                        Spacer(flex: 22),
                        CustomImageView(
                          imagePath: ImageConstant.imgLockLightGreenA700,
                          height: 20.h,
                          width: 20.h,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(right: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("lbl_home".tr, style: theme.textTheme.labelLarge),
                        Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text(
                            "lbl_promotion".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text(
                            "lbl_invite4".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "lbl_deposit".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text(
                            "lbl_teams".tr,
                            style: CustomTextStyles.labelLargeLightgreenA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgInvite154x54,
              height: 54.h,
              width: 56.h,
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomAppBar(onChanged: (BottomBarEnum type) {}),
    );
  }

  /// Common widget
  Widget _buildRowadd2e694b509(
    BuildContext context, {
    required String add2e694b509077,
    required String signinOne,
    required String continuousOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(imagePath: add2e694b509077, height: 36.h, width: 38.h),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 10.h, bottom: 6.h),
            child: Text(
              signinOne,
              style: theme.textTheme.titleSmall!.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ),
        Container(
          width: 118.h,
          margin: EdgeInsets.only(left: 10.h),
          child: Text(
            continuousOne,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.labelLargeBluegray200.copyWith(
              color: appTheme.blueGray200,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray70001,
          height: 12.h,
          width: 8.h,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRowsearchOne(
    BuildContext context, {
    required String searchOne,
    required String settingOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(imagePath: searchOne, height: 20.h, width: 22.h),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Text(
            settingOne,
            style: CustomTextStyles.titleSmallBluegray400_1.copyWith(
              color: appTheme.blueGray400,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray70001,
          height: 12.h,
          width: 8.h,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRowvectorNine(
    BuildContext context, {
    required String vectorNine,
    required String suggestionOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(imagePath: vectorNine, height: 20.h, width: 24.h),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(
            suggestionOne,
            style: CustomTextStyles.titleSmallBluegray400_1.copyWith(
              color: appTheme.blueGray400,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlueGray70001,
          height: 12.h,
          width: 8.h,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/my_personal_center_zero_one_bloc.dart';
import 'models/my_personal_center_zero_one_model.dart';

class MyPersonalCenterZeroOneScreen extends StatelessWidget {
  const MyPersonalCenterZeroOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MyPersonalCenterZeroOneBloc>(
      create:
          (context) => MyPersonalCenterZeroOneBloc(
            MyPersonalCenterZeroOneState(
              myPersonalCenterZeroOneModelObj: MyPersonalCenterZeroOneModel(),
            ),
          )..add(MyPersonalCenterZeroOneInitialEvent()),
      child: MyPersonalCenterZeroOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      MyPersonalCenterZeroOneBloc,
      MyPersonalCenterZeroOneState
    >(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  height: 900.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      _buildColumnoneone(context),
                      Container(
                        height: 900.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: SizeUtils.height,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        width: double.maxFinite,
                                        margin: EdgeInsets.only(
                                          left: 14.h,
                                          top: 44.h,
                                          right: 14.h,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildStackcalendar(context),
                                            SizedBox(height: 18.h),
                                            Container(
                                              decoration:
                                                  AppDecoration.outlineBlack,
                                              child: Text(
                                                "lbl_teams_center".tr,
                                                textAlign: TextAlign.left,
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            _buildColumnvector(context),
                                            SizedBox(height: 10.h),
                                            _buildColumninviteone(context),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgInvite154x54,
                                      height: 54.h,
                                      width: 56.h,
                                      alignment: Alignment.bottomCenter,
                                      margin: EdgeInsets.only(bottom: 30.h),
                                    ),
                                    Container(
                                      height: SizeUtils.height,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 146.h,
                                      ),
                                      decoration: AppDecoration.fillBlack9004,
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          _buildStacka7391d138e(context),
                                          _buildStackone(context),
                                          _buildConfirm(context),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .imgCongratulations,
                                            height: 32.h,
                                            width: 232.h,
                                            alignment: Alignment.topCenter,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            _buildColumntelevisio(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: _buildColumnhomeone(context),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnoneone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.h),
        decoration: AppDecoration.column195,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img1Black90012x356,
              height: 12.h,
              width: double.maxFinite,
            ),
            SizedBox(height: 166.h),
          ],
        ),
      ),
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
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: appTheme.lightGreenA700, width: 1.h),
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Container(
          height: 192.h,
          width: double.maxFinite,
          decoration: AppDecoration.gradientLightGreenAToLightgreen800.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
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
                  decoration: AppDecoration.column196,
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
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCalendarGray90001,
                            height: 40.h,
                            width: 42.h,
                            alignment: Alignment.center,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_user_name".tr,
                                  style: CustomTextStyles.titleSmallGray30001,
                                ),
                                Text(
                                  "lbl_98955464616".tr,
                                  style: CustomTextStyles.titleSmallBlack,
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img1BlueGray100,
                            height: 10.h,
                            width: 12.h,
                            margin: EdgeInsets.only(left: 6.h, bottom: 4.h),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
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
  Widget _buildColumnvector(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 8.h, right: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVector26x26,
                  height: 26.h,
                  width: 28.h,
                ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 44.h,
                  child: Text(
                    "lbl_betting_record".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Spacer(flex: 50),
                SizedBox(
                  width: 50.h,
                  child: Text(
                    "lbl_account_record".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Spacer(flex: 49),
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
    );
  }

  /// Section Widget
  Widget _buildColumninviteone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.h),
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
            margin: EdgeInsets.only(right: 6.h),
            child: _buildRowsettingsOne(
              context,
              settingsOne: ImageConstant.imgInvite1,
              spinOne: "lbl_invite3".tr,
              priceOne: "msg_reconnend_friends_to2".tr,
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.blueGray90012,
              indent: 6.h,
              endIndent: 6.h,
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 6.h),
            child: _buildRowsettingsOne(
              context,
              settingsOne: ImageConstant.imgSettingsOnprimary36x36,
              spinOne: "lbl_spin".tr,
              priceOne: "msg_win_real_money_500".tr,
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.blueGray90012,
              indent: 6.h,
              endIndent: 6.h,
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 6.h),
            child: _buildRowsettingsOne(
              context,
              settingsOne: ImageConstant.imgGroup120051,
              spinOne: "lbl_cashback".tr,
              priceOne: "lbl_weekly_max_20".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStacka7391d138e(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 362.h,
        margin: EdgeInsets.only(top: 4.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img362x374,
              height: 362.h,
              width: double.maxFinite,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 58.h),
                decoration: AppDecoration.gradientRedToYellow,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 200.h,
                      width: double.maxFinite,
                      padding: EdgeInsets.only(top: 16.h),
                      decoration: AppDecoration.stack199,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Container(
                            width: 244.h,
                            margin: EdgeInsets.only(top: 18.h),
                            decoration: AppDecoration.column200,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 80.h),
                                Text(
                                  "lbl_67_99".tr,
                                  style:
                                      CustomTextStyles
                                          .headlineMediumArialYellow50,
                                ),
                              ],
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: theme.colorScheme.onPrimary,
                                width: 2.2.h,
                              ),
                              borderRadius: BorderRadiusStyle.circleBorder14,
                            ),
                            child: Container(
                              height: 100.h,
                              width: 102.h,
                              decoration: AppDecoration.outlineOnPrimary9
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder14,
                                  ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgA65bbb3b63d7cef,
                                    height: 96.h,
                                    width: double.maxFinite,
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 92.h,
                                      child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .imgB928f94165e9728,
                                            height: 78.h,
                                            width: 80.h,
                                            alignment: Alignment.topRight,
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .imgB928f94165e9728,
                                            height: 78.h,
                                            width: 80.h,
                                          ),
                                        ],
                                      ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackone(BuildContext context) {
    return Container(
      height: 204.h,
      margin: EdgeInsets.only(left: 14.h, right: 14.h, bottom: 64.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.h),
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Container(
              height: 170.h,
              padding: EdgeInsets.only(left: 10.h, right: 10.h, bottom: 8.h),
              decoration: AppDecoration.gradientRedToYellow70001,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 108.h,
                    width: 324.h,
                    margin: EdgeInsets.only(bottom: 4.h),
                    decoration: BoxDecoration(
                      color: appTheme.black9008c,
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Column(
                      spacing: 16,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "msg_activate_privileges".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          "msg_1_congratulations".tr,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleSmall!.copyWith(
                            height: 1.14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 26.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup1224,
                              height: 48.h,
                              width: 12.h,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup1224,
                              height: 48.h,
                              width: 12.h,
                              margin: EdgeInsets.only(right: 2.h),
                            ),
                          ],
                        ),
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
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
      height: 32.h,
      width: 210.h,
      text: "lbl_confirm".tr,
      margin: EdgeInsets.only(top: 218.h),
      buttonTextStyle: CustomTextStyles.titleMediumRed90001,
      alignment: Alignment.topCenter,
    );
  }

  /// Section Widget
  Widget _buildInstalall(BuildContext context) {
    return CustomElevatedButton(
      height: 30.h,
      width: 80.h,
      text: "lbl_instalall".tr,
      margin: EdgeInsets.only(left: 6.h),
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientLightGreenAToLightGreenTL4Decoration,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
    );
  }

  /// Section Widget
  Widget _buildColumntelevisio(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 16.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTelevisionBlueGray400,
                  height: 18.h,
                  width: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "lbl_vip2".tr,
                    style: CustomTextStyles.titleSmallBluegray400_1,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightBlueGray70001,
                  height: 12.h,
                  width: 8.h,
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(width: double.maxFinite, child: Divider()),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h),
            child: _buildRownotification(
              context,
              imageSix: ImageConstant.imgGridBlueGray400,
              notification: "lbl_promotion".tr,
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(width: double.maxFinite, child: Divider()),
          SizedBox(height: 10.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: _buildRownotification(
              context,
              imageSix: ImageConstant.imgGroup830,
              notification: "lbl_notification".tr,
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(width: double.maxFinite, child: Divider()),
          SizedBox(height: 8.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBag,
                  height: 16.h,
                  width: 20.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: 4.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "msg_free_28_bonus_by_downloading".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallBluegray400_1,
                  ),
                ),
                _buildInstalall(context),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          SizedBox(width: double.maxFinite, child: Divider()),
          SizedBox(height: 14.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: _buildRownotification(
              context,
              imageSix: ImageConstant.imgSearchBlueGray400,
              notification: "lbl_setting".tr,
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(width: double.maxFinite, child: Divider()),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: _buildRownotification(
              context,
              imageSix: ImageConstant.imgContrast,
              notification: "lbl_live_support".tr,
            ),
          ),
          SizedBox(height: 52.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnhomeone(BuildContext context) {
    return Container(
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
                Text("lbl_deposit".tr, style: theme.textTheme.labelLarge),
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
    );
  }

  /// Common widget
  Widget _buildRownotification(
    BuildContext context, {
    required String imageSix,
    required String notification,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(imagePath: imageSix, height: 22.h, width: 22.h),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(
            notification,
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
  Widget _buildRowsettingsOne(
    BuildContext context, {
    required String settingsOne,
    required String spinOne,
    required String priceOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(imagePath: settingsOne, height: 36.h, width: 38.h),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 10.h, bottom: 6.h),
            child: Text(
              spinOne,
              style: theme.textTheme.titleSmall!.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 10.h, bottom: 8.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_win_real_money".tr,
                    style: CustomTextStyles.labelLargeBluegray200_1,
                  ),
                  TextSpan(
                    text: "lbl_5003".tr,
                    style: CustomTextStyles.labelLargeLightgreenA700_1,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
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

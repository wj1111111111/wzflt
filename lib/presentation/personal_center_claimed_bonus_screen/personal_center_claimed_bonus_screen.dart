import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/personal_center_claimed_bonus_bloc.dart';
import 'models/listbettingreco_item_model.dart';
import 'models/listinvite_one_item_model.dart';
import 'models/personal_center_claimed_bonus_model.dart';
import 'widgets/listbettingreco_item_widget.dart';
import 'widgets/listinvite_one_item_widget.dart';

// ignore_for_file: must_be_immutable
class PersonalCenterClaimedBonusScreen extends StatelessWidget {
  PersonalCenterClaimedBonusScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PersonalCenterClaimedBonusBloc>(
      create:
          (context) => PersonalCenterClaimedBonusBloc(
            PersonalCenterClaimedBonusState(
              personalCenterClaimedBonusModelObj:
                  PersonalCenterClaimedBonusModel(),
            ),
          )..add(PersonalCenterClaimedBonusInitialEvent()),
      child: PersonalCenterClaimedBonusScreen(),
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
              height: 1262.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup724,
                    height: 172.h,
                    width: double.maxFinite,
                    alignment: Alignment.topCenter,
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 14.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildStackcalendar(context),
                        SizedBox(height: 20.h),
                        _buildRowteamscenter(context),
                        SizedBox(height: 2.h),
                        _buildColumnbettingre(context),
                        SizedBox(height: 12.h),
                        _buildColumninvite(context),
                        SizedBox(height: 10.h),
                        _buildColumntelevisio(context),
                        SizedBox(height: 10.h),
                        _buildRowjoinourone(context),
                        SizedBox(height: 10.h),
                        _buildColumnd62a60592(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: _buildBottomappbarnav(context),
      ),
      floatingActionButton: CustomFloatingButton(
        height: 56,
        width: 56,
        backgroundColor: appTheme.blueGray90021,
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup403,
          height: 28.0.h,
          width: 28.0.h,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                  decoration: AppDecoration.column410,
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
                  spacing: 20,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          Column(
                            spacing: 2,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_total_balance".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              Container(
                                decoration: AppDecoration.outlineBlack,
                                child: Text(
                                  "lbl_693_00".tr,
                                  textAlign: TextAlign.left,
                                  style:
                                      CustomTextStyles.headlineSmallYellow50002,
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.h,
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          CustomOutlinedButton(
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
                            decoration:
                                CustomButtonStyles
                                    .gradientAmberToAmberTL18Decoration,
                            buttonTextStyle: CustomTextStyles.titleSmallBlack,
                          ),
                          CustomOutlinedButton(
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
                                CustomButtonStyles
                                    .gradientLightGreenAToLightGreenTL18Decoration,
                            buttonTextStyle: CustomTextStyles.titleSmallBlack,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 114.h,
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  decoration: AppDecoration.gradientLightGreenToLightGreen
                      .copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL22,
                      ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup839,
                        height: 24.h,
                        width: 26.h,
                        radius: BorderRadius.circular(8.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 12.h,
                        width: 8.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 6.h),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: EdgeInsets.only(right: 50.h, bottom: 72.h),
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "lbl_1324_00".tr,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.headlineSmallYellow50002,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 78.h, right: 38.h),
                  child: Text(
                    "msg_total_bonus_claimed".tr,
                    style: theme.textTheme.titleSmall,
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
  Widget _buildRowteamscenter(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: AppDecoration.outlineBlack,
            child: Text(
              "lbl_teams_center".tr,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightGray90002,
            height: 20.h,
            width: 22.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnbettingre(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.maxFinite,
            child: BlocSelector<
              PersonalCenterClaimedBonusBloc,
              PersonalCenterClaimedBonusState,
              PersonalCenterClaimedBonusModel?
            >(
              selector: (state) => state.personalCenterClaimedBonusModelObj,
              builder: (context, personalCenterClaimedBonusModelObj) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 36.h,
                    children: List.generate(
                      personalCenterClaimedBonusModelObj
                              ?.listbettingrecoItemList
                              .length ??
                          0,
                      (index) {
                        ListbettingrecoItemModel model =
                            personalCenterClaimedBonusModelObj
                                ?.listbettingrecoItemList[index] ??
                            ListbettingrecoItemModel();
                        return ListbettingrecoItemWidget(model);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumninvite(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 8,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: BlocSelector<
              PersonalCenterClaimedBonusBloc,
              PersonalCenterClaimedBonusState,
              PersonalCenterClaimedBonusModel?
            >(
              selector: (state) => state.personalCenterClaimedBonusModelObj,
              builder: (context, personalCenterClaimedBonusModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0.h),
                      child: Divider(
                        height: 1.h,
                        thickness: 1.h,
                        color: appTheme.blueGray90012,
                      ),
                    );
                  },
                  itemCount:
                      personalCenterClaimedBonusModelObj
                          ?.listinviteOneItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    ListinviteOneItemModel model =
                        personalCenterClaimedBonusModelObj
                            ?.listinviteOneItemList[index] ??
                        ListinviteOneItemModel();
                    return ListinviteOneItemWidget(model);
                  },
                );
              },
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup13081,
                  height: 36.h,
                  width: 36.h,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.h, bottom: 6.h),
                    child: Text(
                      "msg_cumulative_deposit".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "lbl_get_bonus".tr,
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

  /// Section Widget
  Widget _buildColumntelevisio(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 16.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildRowvectorOne(
              context,
              vectorOne: ImageConstant.imgTelevisionBlueGray400,
              suggestionOne: "lbl_vip2".tr,
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
              imageFive: ImageConstant.imgGridBlueGray400,
              notification: "lbl_promotion".tr,
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              spacing: 10,
              children: [
                SizedBox(width: double.maxFinite, child: Divider()),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 2.h),
                  child: _buildRownotification(
                    context,
                    imageFive: ImageConstant.imgGroup830,
                    notification: "lbl_notification".tr,
                  ),
                ),
              ],
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
                Container(
                  width: 170.h,
                  margin: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "msg_download_the_official".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallBluegray400_1,
                  ),
                ),
                CustomElevatedButton(
                  height: 30.h,
                  width: 80.h,
                  text: "lbl_instalall".tr,
                  margin: EdgeInsets.only(left: 28.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles
                          .gradientLightGreenAToLightGreenTL4Decoration,
                  buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
                ),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          SizedBox(width: double.maxFinite, child: Divider()),
          SizedBox(height: 14.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: _buildRownotification(
              context,
              imageFive: ImageConstant.imgContrast,
              notification: "lbl_live_support".tr,
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(width: double.maxFinite, child: Divider()),
          SizedBox(height: 14.h),
          SizedBox(
            width: double.maxFinite,
            child: _buildRowvectorOne(
              context,
              vectorOne: ImageConstant.imgVector,
              suggestionOne: "lbl_suggestion".tr,
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(width: double.maxFinite, child: Divider()),
          SizedBox(height: 14.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: _buildRownotification(
              context,
              imageFive: ImageConstant.imgSearchBlueGray400,
              notification: "lbl_setting".tr,
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(width: double.maxFinite, child: Divider()),
          SizedBox(height: 14.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: _buildRownotification(
              context,
              imageFive: ImageConstant.imgProfileBlueGray400,
              notification: "lbl_help_center".tr,
            ),
          ),
          SizedBox(height: 14.h),
          SizedBox(width: double.maxFinite, child: Divider()),
          SizedBox(height: 12.h),
          SizedBox(
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
          ),
          SizedBox(height: 2.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowjoinourone(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_join_our_community".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 34.h,
                            width: 34.h,
                            padding: EdgeInsets.all(4.h),
                            decoration: IconButtonStyleHelper.fillLightBlueTL8,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSaveOnprimary32x32,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: CustomIconButton(
                              height: 34.h,
                              width: 34.h,
                              padding: EdgeInsets.all(4.h),
                              decoration: IconButtonStyleHelper.fillIndigoTL8,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgFacebookOnprimary,
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
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFavorite,
            height: 8.h,
            width: 10.h,
            margin: EdgeInsets.only(top: 16.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnd62a60592(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 4.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            decoration: AppDecoration.fs4bg.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgD62a6059252dd42,
                  height: 14.h,
                  width: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "lbl_english".tr,
                    style: CustomTextStyles.labelLargeOnPrimary_6,
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
  Widget _buildBottomappbarnav(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomAppBar(onChanged: (BottomBarEnum type) {}),
    );
  }

  /// Common widget
  Widget _buildRowvectorOne(
    BuildContext context, {
    required String vectorOne,
    required String suggestionOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(imagePath: vectorOne, height: 20.h, width: 24.h),
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

  /// Common widget
  Widget _buildRownotification(
    BuildContext context, {
    required String imageFive,
    required String notification,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(imagePath: imageFive, height: 22.h, width: 22.h),
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
}

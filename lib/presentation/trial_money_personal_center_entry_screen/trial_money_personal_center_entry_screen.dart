import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/trial_money_personal_center_entry_bloc.dart';
import 'models/listbettingreco_item_model.dart';
import 'models/listinvite_one_item_model.dart';
import 'models/trial_money_personal_center_entry_model.dart';
import 'widgets/listbettingreco_item_widget.dart';
import 'widgets/listinvite_one_item_widget.dart';

// ignore_for_file: must_be_immutable
class TrialMoneyPersonalCenterEntryScreen extends StatelessWidget {
  TrialMoneyPersonalCenterEntryScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<TrialMoneyPersonalCenterEntryBloc>(
      create:
          (context) => TrialMoneyPersonalCenterEntryBloc(
            TrialMoneyPersonalCenterEntryState(
              trialMoneyPersonalCenterEntryModelObj:
                  TrialMoneyPersonalCenterEntryModel(),
            ),
          )..add(TrialMoneyPersonalCenterEntryInitialEvent()),
      child: TrialMoneyPersonalCenterEntryScreen(),
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
              height: 1422.h,
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
                        _buildStackinviteone(context),
                        SizedBox(height: 10.h),
                        _buildColumntelevisio(context),
                        SizedBox(height: 10.h),
                        _buildColumnjoinour(context),
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
  Widget _buildWithdrawal(BuildContext context) {
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
                  decoration: AppDecoration.column393,
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
                          _buildWithdrawal(context),
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
              TrialMoneyPersonalCenterEntryBloc,
              TrialMoneyPersonalCenterEntryState,
              TrialMoneyPersonalCenterEntryModel?
            >(
              selector: (state) => state.trialMoneyPersonalCenterEntryModelObj,
              builder: (context, trialMoneyPersonalCenterEntryModelObj) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 36.h,
                    children: List.generate(
                      trialMoneyPersonalCenterEntryModelObj
                              ?.listbettingrecoItemList
                              .length ??
                          0,
                      (index) {
                        ListbettingrecoItemModel model =
                            trialMoneyPersonalCenterEntryModelObj
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
  Widget _buildEnterthegift(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        TrialMoneyPersonalCenterEntryBloc,
        TrialMoneyPersonalCenterEntryState,
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
    );
  }

  /// Section Widget
  Widget _buildExchange(BuildContext context) {
    return CustomElevatedButton(
      height: 34.h,
      width: 78.h,
      text: "lbl_exchange".tr,
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayDecoration,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
    );
  }

  /// Section Widget
  Widget _buildStackinviteone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
        color: appTheme.gray90001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Container(
          height: 448.h,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 8.h),
          decoration: AppDecoration.fs4bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h, right: 12.h),
                  child: BlocSelector<
                    TrialMoneyPersonalCenterEntryBloc,
                    TrialMoneyPersonalCenterEntryState,
                    TrialMoneyPersonalCenterEntryModel?
                  >(
                    selector:
                        (state) => state.trialMoneyPersonalCenterEntryModelObj,
                    builder: (context, trialMoneyPersonalCenterEntryModelObj) {
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
                            trialMoneyPersonalCenterEntryModelObj
                                ?.listinviteOneItemList
                                .length ??
                            0,
                        itemBuilder: (context, index) {
                          ListinviteOneItemModel model =
                              trialMoneyPersonalCenterEntryModelObj
                                  ?.listinviteOneItemList[index] ??
                              ListinviteOneItemModel();
                          return ListinviteOneItemWidget(model);
                        },
                      );
                    },
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(right: 6.h),
                child: Column(
                  spacing: 20,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(left: 2.h, right: 4.h),
                      child: Column(
                        spacing: 10,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            child: Divider(
                              color: appTheme.blueGray90012,
                              indent: 8.h,
                            ),
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 32.h,
                                  width: 38.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.img28x18,
                                        height: 4.h,
                                        width: 12.h,
                                        alignment: Alignment.bottomLeft,
                                        margin: EdgeInsets.only(
                                          left: 6.h,
                                          bottom: 4.h,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.img132x66,
                                        height: 18.h,
                                        width: double.maxFinite,
                                        alignment: Alignment.bottomCenter,
                                        margin: EdgeInsets.only(bottom: 4.h),
                                      ),
                                      Container(
                                        height: 32.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.img1756x66,
                                              height: 32.h,
                                              width: double.maxFinite,
                                            ),
                                            Container(
                                              height: 26.h,
                                              child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        right: 12.h,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage381,
                                                            height: 6.h,
                                                            width: 8.h,
                                                            alignment:
                                                                Alignment
                                                                    .centerRight,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage383,
                                                            height: 4.h,
                                                            width: 4.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                  right: 2.h,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .imgImage382,
                                                    height: 4.h,
                                                    width: 6.h,
                                                    alignment:
                                                        Alignment.topLeft,
                                                    margin: EdgeInsets.only(
                                                      left: 12.h,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 18.h,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .img1434x68,
                                                          height: 18.h,
                                                          width:
                                                              double.maxFinite,
                                                        ),
                                                        Container(
                                                          decoration:
                                                              AppDecoration
                                                                  .outlineBlack90013,
                                                          child: Text(
                                                            "lbl_experience".tr,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style:
                                                                CustomTextStyles
                                                                    .aaHouDiHeiYellow30006,
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
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          "msg_experience_bonus3".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 118.h,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_bonus_up_to".tr,
                                                style:
                                                    CustomTextStyles
                                                        .labelLargeBluegray200_1,
                                              ),
                                              TextSpan(
                                                text: "msg_100_00_for_new".tr,
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
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant
                                                .imgArrowRightBlueGray70001,
                                        height: 12.h,
                                        width: 6.h,
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
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildInstalall(BuildContext context) {
    return CustomElevatedButton(
      height: 30.h,
      width: 80.h,
      text: "lbl_instalall".tr,
      margin: EdgeInsets.only(left: 28.h),
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
              imageSeven: ImageConstant.imgGridBlueGray400,
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
                    imageSeven: ImageConstant.imgGroup830,
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
                _buildInstalall(context),
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
              imageSeven: ImageConstant.imgContrast,
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
              imageSeven: ImageConstant.imgSearchBlueGray400,
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
              imageSeven: ImageConstant.imgProfileBlueGray400,
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
  Widget _buildColumnjoinour(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("msg_join_our_community".tr, style: theme.textTheme.labelLarge),
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
          SizedBox(height: 4.h),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgD62a6059252dd42,
                  height: 14.h,
                  width: 32.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Text(
                    "lbl_english".tr,
                    style: CustomTextStyles.labelLargeOnPrimary_6,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 8.h,
                  width: 12.h,
                  margin: EdgeInsets.only(right: 4.h),
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
  Widget _buildRownotification(
    BuildContext context, {
    required String imageSeven,
    required String notification,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(imagePath: imageSeven, height: 22.h, width: 22.h),
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
}

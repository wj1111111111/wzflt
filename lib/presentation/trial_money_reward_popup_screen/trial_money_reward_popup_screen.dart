import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/trial_money_reward_popup_bloc.dart';
import 'models/trial_money_reward_popup_model.dart';

class TrialMoneyRewardPopupScreen extends StatelessWidget {
  const TrialMoneyRewardPopupScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TrialMoneyRewardPopupBloc>(
      create:
          (context) => TrialMoneyRewardPopupBloc(
            TrialMoneyRewardPopupState(
              trialMoneyRewardPopupModelObj: TrialMoneyRewardPopupModel(),
            ),
          )..add(TrialMoneyRewardPopupInitialEvent()),
      child: TrialMoneyRewardPopupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrialMoneyRewardPopupBloc, TrialMoneyRewardPopupState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  height: 884.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 142.h,
                          width: 142.h,
                          margin: EdgeInsets.only(top: 188.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70.h),
                            gradient: LinearGradient(
                              begin: Alignment(0.45, 0),
                              end: Alignment(0.5, 1),
                              colors: [
                                appTheme.lime4004c,
                                appTheme.lightGreenA4004c,
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 884.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 18.h,
                                    right: 16.h,
                                  ),
                                  decoration: AppDecoration.outlineBluegray40044
                                      .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder10,
                                      ),
                                  width: double.maxFinite,
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 11,
                                        sigmaY: 11,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4.h,
                                          vertical: 12.h,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgOnprimary,
                                              height: 588.h,
                                              width: 30.h,
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    bottom: 6.h,
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          right: 4.h,
                                                        ),
                                                        child: _buildRowinviteoverte(
                                                          context,
                                                          inviteoverten:
                                                              "msg_invite_over_5_qualified"
                                                                  .tr,
                                                          p10tenOne:
                                                              "lbl_5_52".tr,
                                                        ),
                                                      ),
                                                      SizedBox(height: 6.h),
                                                      Container(
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          left: 6.h,
                                                          right: 4.h,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          2.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_get".tr,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .bodyMediumBluegray400,
                                                                ),
                                                              ),
                                                            ),
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgJb16x20,
                                                              height: 16.h,
                                                              width: 22.h,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      left: 4.h,
                                                                      bottom:
                                                                          4.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_88_002"
                                                                      .tr,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .titleSmallBluegray400_1,
                                                                ),
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            _buildClaimed(
                                                              context,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      SizedBox(
                                                        width: double.maxFinite,
                                                        child: Divider(
                                                          color:
                                                              appTheme
                                                                  .blueGray80005,
                                                          endIndent: 4.h,
                                                        ),
                                                      ),
                                                      SizedBox(height: 24.h),
                                                      _buildRowinviteoverte(
                                                        context,
                                                        inviteoverten:
                                                            "msg_invite_over_10_qualified"
                                                                .tr,
                                                        p10tenOne:
                                                            "lbl_10_10".tr,
                                                      ),
                                                      SizedBox(height: 6.h),
                                                      Container(
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          left: 6.h,
                                                          right: 4.h,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          2.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_get".tr,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .bodyMediumOnPrimary,
                                                                ),
                                                              ),
                                                            ),
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgJb16x20,
                                                              height: 16.h,
                                                              width: 22.h,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          4.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_188_003"
                                                                      .tr,
                                                                  style:
                                                                      theme
                                                                          .textTheme
                                                                          .titleSmall,
                                                                ),
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            _buildClaim(
                                                              context,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      SizedBox(
                                                        width: double.maxFinite,
                                                        child: Divider(
                                                          color:
                                                              appTheme
                                                                  .blueGray80005,
                                                          endIndent: 4.h,
                                                        ),
                                                      ),
                                                      SizedBox(height: 24.h),
                                                      _buildRowinviteover10(
                                                        context,
                                                        inviteover100:
                                                            "msg_invite_over_20_qualified"
                                                                .tr,
                                                        p5100One:
                                                            "lbl_12_20".tr,
                                                      ),
                                                      SizedBox(height: 6.h),
                                                      Container(
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          left: 6.h,
                                                          right: 4.h,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          2.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_get".tr,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .bodyMediumOnPrimary,
                                                                ),
                                                              ),
                                                            ),
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgJb16x20,
                                                              height: 16.h,
                                                              width: 22.h,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          4.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_388_002"
                                                                      .tr,
                                                                  style:
                                                                      theme
                                                                          .textTheme
                                                                          .titleSmall,
                                                                ),
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            Container(
                                                              padding:
                                                                  EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        22.h,
                                                                    vertical:
                                                                        2.h,
                                                                  ),
                                                              decoration: AppDecoration
                                                                  .fs23
                                                                  .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .circleBorder14,
                                                                  ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    "lbl_invite"
                                                                        .tr,
                                                                    style:
                                                                        CustomTextStyles
                                                                            .bodyMediumBlack900,
                                                                  ),
                                                                  SizedBox(
                                                                    height: 2.h,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      SizedBox(
                                                        width: double.maxFinite,
                                                        child: Divider(
                                                          color:
                                                              appTheme
                                                                  .blueGray80005,
                                                          endIndent: 4.h,
                                                        ),
                                                      ),
                                                      SizedBox(height: 24.h),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            "msg_invite_over_50_qualified"
                                                                .tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .bodyMediumBluegray400,
                                                          ),
                                                          RichText(
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      "lbl_56"
                                                                          .tr,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .titleMediumLightgreenA700_1,
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      "lbl_502"
                                                                          .tr,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .bodySmallOnPrimary10_1,
                                                                ),
                                                              ],
                                                            ),
                                                            textAlign:
                                                                TextAlign.left,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 6.h),
                                                      Container(
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          left: 6.h,
                                                          right: 4.h,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          2.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_get".tr,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .bodyMediumOnPrimary,
                                                                ),
                                                              ),
                                                            ),
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgJb16x20,
                                                              height: 16.h,
                                                              width: 22.h,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          4.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_888_003"
                                                                      .tr,
                                                                  style:
                                                                      theme
                                                                          .textTheme
                                                                          .titleSmall,
                                                                ),
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            _buildInvitethree(
                                                              context,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      SizedBox(
                                                        width: double.maxFinite,
                                                        child: Divider(
                                                          color:
                                                              appTheme
                                                                  .blueGray80005,
                                                          endIndent: 4.h,
                                                        ),
                                                      ),
                                                      SizedBox(height: 24.h),
                                                      _buildRowinviteover10(
                                                        context,
                                                        inviteover100:
                                                            "msg_invite_over_100"
                                                                .tr,
                                                        p5100One:
                                                            "lbl_5_100".tr,
                                                      ),
                                                      SizedBox(height: 6.h),
                                                      Container(
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          left: 6.h,
                                                          right: 4.h,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          2.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_get".tr,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .bodyMediumOnPrimary,
                                                                ),
                                                              ),
                                                            ),
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgJb16x20,
                                                              height: 16.h,
                                                              width: 22.h,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          4.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_1888_002"
                                                                      .tr,
                                                                  style:
                                                                      theme
                                                                          .textTheme
                                                                          .titleSmall,
                                                                ),
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            _buildInvitefour(
                                                              context,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      SizedBox(
                                                        width: double.maxFinite,
                                                        child: Divider(
                                                          color:
                                                              appTheme
                                                                  .blueGray80005,
                                                          endIndent: 4.h,
                                                        ),
                                                      ),
                                                      SizedBox(height: 26.h),
                                                      _buildRowinviteoverte(
                                                        context,
                                                        inviteoverten:
                                                            "msg_invite_over_200"
                                                                .tr,
                                                        p10tenOne:
                                                            "lbl_5_200".tr,
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      Container(
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          left: 6.h,
                                                          right: 4.h,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          6.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_get".tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .bodyMediumOnPrimary,
                                                                ),
                                                              ),
                                                            ),
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgJb16x20,
                                                              height: 16.h,
                                                              width: 22.h,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          6.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_2888_00"
                                                                      .tr,
                                                                  style:
                                                                      theme
                                                                          .textTheme
                                                                          .titleSmall,
                                                                ),
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            _buildInvitefive(
                                                              context,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 38.h),
                                                      _buildRowinviteoverte(
                                                        context,
                                                        inviteoverten:
                                                            "msg_invite_over_500"
                                                                .tr,
                                                        p10tenOne:
                                                            "lbl_5_500".tr,
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      Container(
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          left: 6.h,
                                                          right: 4.h,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          6.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_get".tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      CustomTextStyles
                                                                          .bodyMediumOnPrimary,
                                                                ),
                                                              ),
                                                            ),
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgJb16x20,
                                                              height: 16.h,
                                                              width: 22.h,
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      bottom:
                                                                          6.h,
                                                                    ),
                                                                child: Text(
                                                                  "lbl_8888_00"
                                                                      .tr,
                                                                  style:
                                                                      theme
                                                                          .textTheme
                                                                          .titleSmall,
                                                                ),
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            _buildInvitesix(
                                                              context,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(height: 10.h),
                                                      SizedBox(
                                                        width: double.maxFinite,
                                                        child: Divider(
                                                          color:
                                                              appTheme
                                                                  .blueGray80005,
                                                          endIndent: 4.h,
                                                        ),
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
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: SizeUtils.height,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: _buildAppbar(context),
                                    ),
                                    Container(
                                      height: SizeUtils.height,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: SizedBox(
                                              width: double.maxFinite,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  _buildRowduration(context),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                              height: 6.h,
                                              width: 346.h,
                                              margin: EdgeInsets.only(
                                                top: 176.h,
                                              ),
                                            ),
                                          ),
                                          _buildColumnachieveme(context),
                                          ClipRect(
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 8,
                                                sigmaY: 8,
                                              ),
                                              child: Container(
                                                height: SizeUtils.height,
                                                padding: EdgeInsets.only(
                                                  top: 78.h,
                                                ),
                                                decoration:
                                                    AppDecoration.outline6,
                                                child: Stack(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant.img2,
                                                      height: 280.h,
                                                      width: double.maxFinite,
                                                    ),
                                                    Container(
                                                      height: 586.h,
                                                      margin: EdgeInsets.only(
                                                        top: 8.h,
                                                      ),
                                                      child: Stack(
                                                        alignment:
                                                            Alignment
                                                                .bottomCenter,
                                                        children: [
                                                          Container(
                                                            height: 374.h,
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .img1374x374,
                                                                  height: 374.h,
                                                                  width: 374.h,
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets.only(
                                                                        bottom:
                                                                            88.h,
                                                                      ),
                                                                  child: CustomIconButton(
                                                                    height:
                                                                        32.h,
                                                                    width: 32.h,
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                          8.h,
                                                                        ),
                                                                    decoration:
                                                                        IconButtonStyleHelper
                                                                            .none,
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgCloseGray400,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                Alignment
                                                                    .topCenter,
                                                            child: Container(
                                                              height: 428.h,
                                                              margin:
                                                                  EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        24.h,
                                                                  ),
                                                              child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .bottomCenter,
                                                                children: [
                                                                  Card(
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    elevation:
                                                                        0,
                                                                    margin:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    color:
                                                                        appTheme
                                                                            .gray90002,
                                                                    shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .circleBorder14,
                                                                    ),
                                                                    child: Container(
                                                                      height:
                                                                          356.h,
                                                                      decoration: AppDecoration
                                                                          .fs2bg
                                                                          .copyWith(
                                                                            borderRadius:
                                                                                BorderRadiusStyle.circleBorder14,
                                                                          ),
                                                                      child: Stack(
                                                                        alignment:
                                                                            Alignment.bottomCenter,
                                                                        children: [
                                                                          _buildColumngotit(
                                                                            context,
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            child: Container(
                                                                              height:
                                                                                  164.h,
                                                                              width:
                                                                                  166.h,
                                                                              margin: EdgeInsets.only(
                                                                                top:
                                                                                    24.h,
                                                                              ),
                                                                              child: Stack(
                                                                                alignment:
                                                                                    Alignment.center,
                                                                                children: [
                                                                                  Opacity(
                                                                                    opacity:
                                                                                        0.8,
                                                                                    child: CustomImageView(
                                                                                      imagePath:
                                                                                          ImageConstant.imgF1,
                                                                                      height:
                                                                                          164.h,
                                                                                      width:
                                                                                          164.h,
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment:
                                                                                        Alignment.centerLeft,
                                                                                    child: Container(
                                                                                      height:
                                                                                          112.h,
                                                                                      width:
                                                                                          120.h,
                                                                                      margin: EdgeInsets.only(
                                                                                        left:
                                                                                            18.h,
                                                                                      ),
                                                                                      child: Stack(
                                                                                        alignment:
                                                                                            Alignment.bottomLeft,
                                                                                        children: [
                                                                                          CustomImageView(
                                                                                            imagePath:
                                                                                                ImageConstant.imgB928f94165e9728,
                                                                                            height:
                                                                                                98.h,
                                                                                            width:
                                                                                                100.h,
                                                                                            alignment:
                                                                                                Alignment.topRight,
                                                                                          ),
                                                                                          CustomImageView(
                                                                                            imagePath:
                                                                                                ImageConstant.imgB928f94165e9728,
                                                                                            height:
                                                                                                98.h,
                                                                                            width:
                                                                                                100.h,
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          _buildColumn(
                                                                            context,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter,
                                                                    child: Container(
                                                                      height:
                                                                          122.h,
                                                                      margin: EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            14.h,
                                                                      ),
                                                                      child: Stack(
                                                                        alignment:
                                                                            Alignment.bottomCenter,
                                                                        children: [
                                                                          CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgImage360,
                                                                            height:
                                                                                78.h,
                                                                            width:
                                                                                138.h,
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                          ),
                                                                          Container(
                                                                            height:
                                                                                78.h,
                                                                            child: Stack(
                                                                              alignment:
                                                                                  Alignment.center,
                                                                              children: [
                                                                                CustomImageView(
                                                                                  imagePath:
                                                                                      ImageConstant.imgImage540,
                                                                                  height:
                                                                                      78.h,
                                                                                  width:
                                                                                      double.maxFinite,
                                                                                ),
                                                                                Align(
                                                                                  alignment:
                                                                                      Alignment.topCenter,
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.only(
                                                                                      top:
                                                                                          14.h,
                                                                                    ),
                                                                                    child: Text(
                                                                                      "msg_received_successfully3".tr,
                                                                                      style:
                                                                                          CustomTextStyles.titleLargeLilitaOneOrange5001,
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
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildClaimed(BuildContext context) {
    return CustomElevatedButton(
      height: 30.h,
      width: 80.h,
      text: "lbl_claimed".tr,
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
    );
  }

  /// Section Widget
  Widget _buildClaim(BuildContext context) {
    return CustomElevatedButton(
      height: 30.h,
      width: 80.h,
      text: "lbl_claim".tr,
      buttonStyle: CustomButtonStyles.fillAmberA,
      buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
    );
  }

  /// Section Widget
  Widget _buildInvitethree(BuildContext context) {
    return CustomElevatedButton(
      height: 30.h,
      width: 80.h,
      text: "lbl_invite".tr,
      buttonStyle: CustomButtonStyles.fillLightGreenA,
      buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
    );
  }

  /// Section Widget
  Widget _buildInvitefour(BuildContext context) {
    return CustomElevatedButton(
      height: 30.h,
      width: 80.h,
      text: "lbl_invite".tr,
      buttonStyle: CustomButtonStyles.fillLightGreenA,
      buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
    );
  }

  /// Section Widget
  Widget _buildInvitefive(BuildContext context) {
    return CustomElevatedButton(
      height: 30.h,
      width: 80.h,
      text: "lbl_invite".tr,
      buttonStyle: CustomButtonStyles.fillLightGreenA,
      buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
    );
  }

  /// Section Widget
  Widget _buildInvitesix(BuildContext context) {
    return CustomElevatedButton(
      height: 30.h,
      width: 80.h,
      text: "lbl_invite".tr,
      buttonStyle: CustomButtonStyles.fillLightGreenA,
      buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
    );
  }

  /// Section Widget
  Widget _buildAppbar(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: CustomAppBar(
        height: 68.h,
        title: SizedBox(
          width: double.maxFinite,
          child: AppbarTitleImage(
            imagePath: ImageConstant.imgLogoWj931,
            height: 28.h,
            width: 124.h,
            margin: EdgeInsets.only(left: 15.h),
          ),
        ),
        actions: [
          AppbarTrailingImage(imagePath: ImageConstant.imgLock),
          AppbarSubtitleThree(
            text: "lbl_1980_00".tr,
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
  Widget _buildRowduration(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 140.h),
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 6.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_countdown".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: "lbl7".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              TextSpan(
                                text: " ",
                                style: CustomTextStyles.bodySmallOnPrimary_1,
                              ),
                              TextSpan(
                                text: " ",
                                style:
                                    CustomTextStyles.bodySmallLightgreenA700_1,
                              ),
                              TextSpan(
                                text: "msg_22days_22hr_9min".tr,
                                style:
                                    CustomTextStyles.titleSmallLightgreenA700_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 106.h),
                            child: Text(
                              "lbl_40_100".tr,
                              style: CustomTextStyles.bodySmallOnPrimary10,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_we_re".tr,
                                  style: CustomTextStyles.bodySmallGray6000110,
                                ),
                                TextSpan(
                                  text: "msg_5_missions_short".tr,
                                  style:
                                      CustomTextStyles.bodySmallAmberA40010_1,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 20.h,
                margin: EdgeInsets.only(right: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 18.h,
                      width: 16.h,
                      decoration: AppDecoration.outlineAmberA.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "lbl6".tr,
                            style: CustomTextStyles.labelLargeAmberA400Black,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "lbl_rules".tr,
                      style: CustomTextStyles.bodySmallOnPrimary10,
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
  Widget _buildColumnachieveme(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 68.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        decoration: AppDecoration.fillGray90010,
        child: Column(
          spacing: 6,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.h),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                children: [
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrameBlueGray400,
                        height: 20.h,
                        width: 20.h,
                        margin: EdgeInsets.symmetric(horizontal: 4.h),
                      ),
                      Text("lbl_invite".tr, style: theme.textTheme.bodySmall),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.only(right: 4.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFrameLightGreenA700,
                            height: 20.h,
                            width: 22.h,
                            margin: EdgeInsets.only(right: 24.h),
                          ),
                          Text(
                            "lbl_achievement".tr,
                            style: CustomTextStyles.bodySmallOnPrimary_3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 6.h),
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrameBlueGray40020x20,
                          height: 20.h,
                          width: 22.h,
                        ),
                        Text("lbl_teams".tr, style: theme.textTheme.bodySmall),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame20x20,
                          height: 20.h,
                          width: 22.h,
                          margin: EdgeInsets.only(right: 12.h),
                        ),
                        Text(
                          "lbl_incomes".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 6.h),
                    padding: EdgeInsets.symmetric(horizontal: 6.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup1321314646,
                          height: 20.h,
                          width: 22.h,
                          margin: EdgeInsets.only(left: 6.h),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_bonus3".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame1321314655,
                          height: 20.h,
                          width: 20.h,
                        ),
                        Text("lbl_faq".tr, style: theme.textTheme.bodySmall),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 2.h,
              width: 36.h,
              margin: EdgeInsets.only(left: 68.h),
              decoration: BoxDecoration(
                color: appTheme.lightGreenA700,
                borderRadius: BorderRadius.circular(1.h),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGotit(BuildContext context) {
    return CustomElevatedButton(
      height: 50.h,
      text: "lbl_got_it".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientLightGreenAToLightGreenTL22Decoration,
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }

  /// Section Widget
  Widget _buildColumngotit(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 90.0, sigmaY: 90.0),
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outline7.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder162,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [SizedBox(height: 32.h), _buildGotit(context)],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 76.h),
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Column(
        spacing: 2,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("lbl_12_005".tr, style: CustomTextStyles.headlineLargeAmberA400),
          Text(
            "msg_new_user_experience".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleMediumLime200.copyWith(height: 1.50),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowinviteoverte(
    BuildContext context, {
    required String inviteoverten,
    required String p10tenOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          inviteoverten,
          style: CustomTextStyles.bodyMediumBluegray400.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_103".tr,
                style: CustomTextStyles.titleMediumLightgreenA700_1,
              ),
              TextSpan(
                text: "lbl_104".tr,
                style: CustomTextStyles.bodySmallOnPrimary10_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRowinviteover10(
    BuildContext context, {
    required String inviteover100,
    required String p5100One,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          inviteover100,
          style: CustomTextStyles.bodyMediumBluegray400.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_56".tr,
                style: CustomTextStyles.titleMediumLightgreenA700_1,
              ),
              TextSpan(
                text: "lbl_1002".tr,
                style: CustomTextStyles.bodySmallOnPrimary10_1,
              ),
            ],
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}

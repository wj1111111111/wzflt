import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/download_details_pc_bloc.dart';
import 'models/download_details_pc_model.dart';

class DownloadDetailsPcScreen extends StatelessWidget {
  const DownloadDetailsPcScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DownloadDetailsPcBloc>(
      create:
          (context) => DownloadDetailsPcBloc(
            DownloadDetailsPcState(
              downloadDetailsPcModelObj: DownloadDetailsPcModel(),
            ),
          )..add(DownloadDetailsPcInitialEvent()),
      child: DownloadDetailsPcScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadDetailsPcBloc, DownloadDetailsPcState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 12.h),
                  child: Column(
                    spacing: 20,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_install_the".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                                TextSpan(
                                  text: "lbl_jbet88_app_now".tr,
                                  style: CustomTextStyles.titleLargeAmber30002,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      _buildStackandroid(context),
                      _buildRowoneone(context),
                      SizedBox(height: 6.h),
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
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 48.h,
      leadingWidth: 21.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_download_app".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildStackandroid(BuildContext context) {
    return SizedBox(
      height: 454.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 380.h,
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.h),
              decoration: AppDecoration.stack263,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 316.h,
                    width: 316.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(158.h),
                      border: Border.all(
                        color: appTheme.blueGray90030.withValues(alpha: 0.8),
                        width: 1.h,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 306.h,
                      margin: EdgeInsets.only(right: 6.h),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup12109,
                            height: 306.h,
                            width: 250.h,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: double.maxFinite,
                              margin: EdgeInsets.only(top: 12.h),
                              child: Column(
                                spacing: 82,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: double.maxFinite,
                                    margin: EdgeInsets.only(
                                      left: 12.h,
                                      right: 2.h,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              height: 46.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .imgRectangle630,
                                                    height: 46.h,
                                                    width: double.maxFinite,
                                                    radius:
                                                        BorderRadius.circular(
                                                          4.h,
                                                        ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: SizedBox(
                                                      width: double.maxFinite,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          SizedBox(
                                                            width:
                                                                double
                                                                    .maxFinite,
                                                            child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .bottomCenter,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      left: 4.h,
                                                                      right:
                                                                          4.h,
                                                                      bottom:
                                                                          6.h,
                                                                    ),
                                                                child: Row(
                                                                  children: [
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgThumbsUp42x44,
                                                                      height:
                                                                          26.h,
                                                                      width:
                                                                          28.h,
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          112.h,
                                                                      child: Text(
                                                                        "msg_fast_deposit_and"
                                                                            .tr,
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow.ellipsis,
                                                                        style:
                                                                            theme.textTheme.titleSmall,
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
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              bottom: 10.h,
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 6.h,
                                              vertical: 4.h,
                                            ),
                                            decoration: AppDecoration.row264,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgF5124981615ba92,
                                                  height: 26.h,
                                                  width: 22.h,
                                                  margin: EdgeInsets.only(
                                                    top: 2.h,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                    width: 124.h,
                                                    margin: EdgeInsets.only(
                                                      top: 2.h,
                                                    ),
                                                    child: Text(
                                                      "msg_make_your_account"
                                                          .tr,
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style:
                                                          theme
                                                              .textTheme
                                                              .titleSmall,
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
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              height: 76.h,
                                              margin: EdgeInsets.only(
                                                top: 36.h,
                                              ),
                                              decoration:
                                                  AppDecoration.stack265,
                                              child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Container(
                                                    width: 140.h,
                                                    margin: EdgeInsets.only(
                                                      right: 2.h,
                                                    ),
                                                    child: Text(
                                                      "msg_open_pg_jili_and".tr,
                                                      maxLines: 4,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style:
                                                          theme
                                                              .textTheme
                                                              .titleSmall,
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant
                                                            .imgGroup12101,
                                                    height: 34.h,
                                                    width: 36.h,
                                                    alignment:
                                                        Alignment.topLeft,
                                                    margin: EdgeInsets.only(
                                                      top: 12.h,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 4.h,
                                              vertical: 2.h,
                                            ),
                                            decoration: AppDecoration.row266,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgGroup12100,
                                                  height: 22.h,
                                                  width: 20.h,
                                                  margin: EdgeInsets.only(
                                                    top: 4.h,
                                                  ),
                                                ),
                                                Container(
                                                  width: 118.h,
                                                  margin: EdgeInsets.only(
                                                    bottom: 10.h,
                                                  ),
                                                  child: Text(
                                                    "msg_receive_the_latest".tr,
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style:
                                                        theme
                                                            .textTheme
                                                            .titleSmall,
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
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              spacing: 16,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomElevatedButton(
                  height: 44.h,
                  text: "lbl_android".tr,
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 18.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFrameOnprimary24x24,
                      height: 24.h,
                      width: 24.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillGreen,
                  buttonTextStyle: CustomTextStyles.titleMedium18,
                ),
                CustomElevatedButton(
                  height: 44.h,
                  text: "lbl_download_on_the".tr,
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFrame24x24,
                      height: 24.h,
                      width: 24.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillLightBlue,
                  buttonTextStyle: CustomTextStyles.bodySmallOnPrimary_3,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowoneone(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 14.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            spacing: 64,
            children: [
              Text("lbl_15".tr, style: CustomTextStyles.bodySmallBluegray200),
              Text("lbl_27".tr, style: CustomTextStyles.bodySmallBluegray200),
              Text("lbl_34".tr, style: CustomTextStyles.bodySmallBluegray200),
              Text("lbl_42".tr, style: CustomTextStyles.bodySmallBluegray200),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 324.h,
              margin: EdgeInsets.only(bottom: 14.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_make_your_account2".tr,
                      style: CustomTextStyles.bodySmallBluegray200_1,
                    ),
                    TextSpan(
                      text: "msg_jbet88_team_greetings".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
                maxLines: 32,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

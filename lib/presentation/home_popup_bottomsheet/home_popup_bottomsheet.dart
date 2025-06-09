import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/home_popup_bloc.dart';
import 'models/home_popup_model.dart'; // ignore_for_file: must_be_immutable

class HomePopupBottomsheet extends StatelessWidget {
  const HomePopupBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePopupBloc>(
      create:
          (context) =>
              HomePopupBloc(HomePopupState(homePopupModelObj: HomePopupModel()))
                ..add(HomePopupInitialEvent()),
      child: HomePopupBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16.h),
          SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  spacing: 14,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildColumndiscovera(context),
                    _buildColumnvector(context),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumndiscovera(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 290.h,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.h, bottom: 64.h),
                    child: Text(
                      "msg_discover_a_new_version".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: 226.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_your_account".tr,
                            style: CustomTextStyles.bodyMediumBluegray20005,
                          ),
                          TextSpan(
                            text: "msg_9895546461_has_been".tr,
                            style: CustomTextStyles.titleSmallLightblue700,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 66.h),
                    padding: EdgeInsets.symmetric(horizontal: 4.h),
                    decoration: AppDecoration.gradientYellowToLime.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Text(
                      "lbl_v2_0".tr.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleSmallGray90002,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgApp1,
                  height: 126.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(8.h),
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 64.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img112,
                  height: 50.h,
                  width: 52.h,
                  radius: BorderRadius.circular(8.h),
                  alignment: Alignment.topLeft,
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
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 20.h,
                                top: 8.h,
                                right: 20.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 40.h),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_jbet".tr.toUpperCase(),
                                            style:
                                                CustomTextStyles
                                                    .headlineSmallAmber30002,
                                          ),
                                          TextSpan(
                                            text: "lbl_88_com".tr.toUpperCase(),
                                            style:
                                                CustomTextStyles
                                                    .headlineSmallGreen50,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgSettingsLightBlue700,
                                    height: 34.h,
                                    width: 36.h,
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
                CustomImageView(
                  imagePath: ImageConstant.img0ca323f5188d84e240x144,
                  height: 240.h,
                  width: 146.h,
                  margin: EdgeInsets.only(bottom: 6.h),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 316.h,
            child: Text(
              "msg_update_the_app_and".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumBluegray20005_1.copyWith(
                height: 1.29,
              ),
            ),
          ),
          SizedBox(height: 18.h),
          CustomElevatedButton(
            height: 44.h,
            text: "lbl_update_now".tr,
            margin: EdgeInsets.only(right: 20.h),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgFrame1Onprimary,
                height: 24.h,
                width: 24.h,
                fit: BoxFit.contain,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillGreen,
            buttonTextStyle: CustomTextStyles.titleMedium18,
          ),
          SizedBox(height: 18.h),
          Text(
            "msg_installing_an_application".tr,
            style: CustomTextStyles.titleSmallBluegray20005_1,
          ),
          SizedBox(height: 8.h),
          Container(
            width: 306.h,
            margin: EdgeInsets.only(left: 2.h),
            child: Text(
              "msg_click_the_button".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(height: 1.50),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnvector(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.h),
      decoration: AppDecoration.fs2bg,
      child: Column(
        spacing: 8,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorGreen50005,
                  height: 16.h,
                  width: 16.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "lbl_friendly_notice".tr,
                    style: CustomTextStyles.titleSmallBluegray20005_1,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "msg_this_app_has_passed".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall!.copyWith(height: 1.50),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}

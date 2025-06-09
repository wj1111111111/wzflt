import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/help_bloc.dart';
import 'models/help_model.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HelpBloc>(
      create:
          (context) =>
              HelpBloc(HelpState(helpModelObj: HelpModel()))
                ..add(HelpInitialEvent()),
      child: HelpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HelpBloc, HelpState>(
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
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: Column(
                    children: [
                      SizedBox(height: 16.h),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.only(
                          left: 14.h,
                          top: 8.h,
                          right: 14.h,
                        ),
                        decoration: AppDecoration.fs4bg.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "msg_forgot_your_password".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleSmallLightgreenA700
                                  .copyWith(height: 1.14),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_1_open_the".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_jbet88".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "lbl_app_or_visit".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_jbet88_co2".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_in_your_browser_2_tap".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_forgot_password2".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_on_the_login".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "msg_send_4_input_the".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 10,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 12.h),
                            SizedBox(width: double.maxFinite, child: Divider()),
                            SizedBox(height: 12.h),
                            Text(
                              "msg_to_update_your_withdrawal".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleSmallLightgreenA700
                                  .copyWith(height: 1.14),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_1_launch_the".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_jbet88".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "lbl_app_or_visit".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_jbet88_co2".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_using_your_preferred".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_member2".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_section_in_the".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_setting".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "lbl_and_choose".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_security".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_5_enter_your".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "msg_forgot_password".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 16,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 12.h),
                            SizedBox(width: double.maxFinite, child: Divider()),
                            SizedBox(height: 12.h),
                            SizedBox(
                              width: 280.h,
                              child: Text(
                                "msg_to_initiate_a_cash".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleSmallLightgreenA700
                                    .copyWith(height: 1.14),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_1_launch_the".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_jbet88".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "lbl_app_or_visit2".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_jbet88_co3".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_through_your_preferred".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_withdrawal".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_at_the_top_to".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "msg_submit_6_your".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 7,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 120.h),
                            SizedBox(width: double.maxFinite, child: Divider()),
                            SizedBox(height: 12.h),
                            Text(
                              "msg_to_make_a_deposit".tr,
                              style: CustomTextStyles.titleSmallLightgreenA700,
                            ),
                            SizedBox(height: 6.h),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_1_open_the".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_jbet88".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "lbl_app_or_visit".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_jbet883".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_co_through_your".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_deposit".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_at_the_top_to2".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "msg_confirm_to_submit".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 14.h),
                            SizedBox(width: double.maxFinite, child: Divider()),
                            SizedBox(height: 12.h),
                            Text(
                              "msg_to_manage_your_bank".tr,
                              style: CustomTextStyles.titleSmallLightgreenA700,
                            ),
                            SizedBox(height: 6.h),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_add_a_bank_card".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_1_when_initiating".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_jbet88".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "lbl_app_or_visit".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_jbet88_co2".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_through_your_preferred2".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_member2".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_in_the_bottom".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_setting".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "lbl_and_choose".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_bank_account".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_6_select_the".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_submit".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_to_successfully".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "msg_delete_a_bank_card".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_1_follow_steps_1_5".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_edit".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                  TextSpan(
                                    text: "msg_button_in_the".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyMediumBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "msg_clear_button_to".tr,
                                    style:
                                        CustomTextStyles.bodyMediumOnPrimary_2,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
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
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 23.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        width: 8.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_notifications".tr,
        margin: EdgeInsets.only(left: 9.h),
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
          margin: EdgeInsets.only(left: 11.h, right: 15.h),
        ),
      ],
      styleType: Style.bgShadowBlack900,
    );
  }
}

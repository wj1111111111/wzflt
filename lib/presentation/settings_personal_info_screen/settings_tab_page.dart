import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/settings_personal_info_bloc.dart';
import 'models/settings_tab_model.dart';

class SettingsTabPage extends StatefulWidget {
  const SettingsTabPage({Key? key}) : super(key: key);

  @override
  SettingsTabPageState createState() => SettingsTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsPersonalInfoBloc>(
      create:
          (context) => SettingsPersonalInfoBloc(
            SettingsPersonalInfoState(settingsTabModelObj: SettingsTabModel()),
          )..add(SettingsPersonalInfoInitialEvent()),
      child: SettingsTabPage(),
    );
  }
}

class SettingsTabPageState extends State<SettingsTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildRowcloseone(context),
                SizedBox(height: 12.h),
                _buildColumntelephone(context),
                SizedBox(height: 46.h),
                _buildSave(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowlockThree(
    BuildContext context, {
    required String lockThree,
    required String mailOne,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(imagePath: lockThree, height: 12.h, width: 16.h),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              mailOne,
              style: theme.textTheme.titleSmall!.copyWith(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRowcloseone(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline1.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCloseGray90002,
                  height: 48.h,
                  width: 48.h,
                ),
                Expanded(
                  child: Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_13345688800".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        "msg_uid_6755399442622092".tr,
                        style: CustomTextStyles.titleSmallBluegray400_1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      child: BlocBuilder<SettingsPersonalInfoBloc, SettingsPersonalInfoState>(
        builder: (context, state) {
          return CustomPhoneNumber(
            country:
                state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context.read<SettingsPersonalInfoBloc>().add(
                ChangeCountryEvent(value: value),
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h, right: 6.h),
      child: BlocSelector<
        SettingsPersonalInfoBloc,
        SettingsPersonalInfoState,
        TextEditingController?
      >(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
            controller: emailController,
            hintText: "msg_please_input_your".tr,
            prefix: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray400,
                height: 16.h,
                width: 18.h,
                fit: BoxFit.contain,
              ),
            ),
            prefixConstraints: BoxConstraints(maxHeight: 48.h),
            suffix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 14.h, 10.h, 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgEditBlueGray400,
                height: 16.h,
                width: 16.h,
                fit: BoxFit.contain,
              ),
            ),
            suffixConstraints: BoxConstraints(maxHeight: 48.h),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 14.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL61,
            fillColor: appTheme.gray90002,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h, right: 6.h),
      child: BlocBuilder<SettingsPersonalInfoBloc, SettingsPersonalInfoState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.emailoneController,
            hintText: "msg_please_enter_your".tr,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTrophy,
                height: 16.h,
                width: 14.h,
                fit: BoxFit.contain,
              ),
            ),
            prefixConstraints: BoxConstraints(maxHeight: 48.h),
            suffix: InkWell(
              onTap: () {
                context.read<SettingsPersonalInfoBloc>().add(
                  ChangePasswordVisibilityEvent(value: !state.isShowPassword),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(16.h, 14.h, 10.h, 14.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEyeBlueGray40016x18,
                  height: 16.h,
                  width: 18.h,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(maxHeight: 48.h),
            obscureText: state.isShowPassword,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 14.h,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL61,
            fillColor: appTheme.gray90002,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildColumntelephone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 18.h),
            decoration: AppDecoration.outline1.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: _buildRowlockThree(
                    context,
                    lockThree: ImageConstant.imgGroup444,
                    mailOne: "lbl_telephone".tr,
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 8.h),
                  child: _buildPhoneNumber(context),
                ),
                SizedBox(height: 16.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: _buildRowlockThree(
                    context,
                    lockThree: ImageConstant.imgLockOnprimary,
                    mailOne: "lbl_mail".tr,
                  ),
                ),
                SizedBox(height: 8.h),
                _buildEmail(context),
                SizedBox(height: 4.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "msg_please_enter_the3".tr,
                      style: CustomTextStyles.labelLargeRed40001,
                    ),
                  ),
                ),
                SizedBox(height: 18.h),
                _buildEmailone(context),
                SizedBox(height: 6.h),
                Text(
                  "msg_please_enter_6_12".tr,
                  style: CustomTextStyles.labelLargeRed40001,
                ),
                SizedBox(height: 14.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 12.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img1LightGreenA700,
                        height: 18.h,
                        width: 14.h,
                      ),
                      Container(
                        width: 254.h,
                        margin: EdgeInsets.only(left: 6.h),
                        child: Column(
                          children: [
                            Text(
                              "msg_click_to_set_your".tr,
                              style: CustomTextStyles.titleMediumLightgreenA700,
                            ),
                            SizedBox(
                              width: double.maxFinite,
                              child: Divider(color: appTheme.lightGreenA700),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      height: 50.h,
      text: "lbl_save".tr,
      margin: EdgeInsets.only(left: 12.h, right: 10.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayTL24Decoration,
      buttonTextStyle: CustomTextStyles.titleMediumBluegray400,
    );
  }
}

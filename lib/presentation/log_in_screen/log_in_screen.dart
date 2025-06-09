import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/log_in_bloc.dart';
import 'models/log_in_model.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInBloc>(
      create:
          (context) =>
              LogInBloc(LogInState(logInModelObj: LogInModel()))
                ..add(LogInInitialEvent()),
      child: LogInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90035,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 28.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgLogoWj93246x128,
                    height: 46.h,
                    width: 130.h,
                  ),
                  SizedBox(height: 26.h),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 20.h),
                    child: _buildPhoneNumber(context),
                  ),
                  SizedBox(height: 12.h),
                  _buildPasswordone(context),
                  SizedBox(height: 12.h),
                  _buildPasswordtwo(context),
                  SizedBox(height: 12.h),
                  _buildReteamspassword(context),
                  SizedBox(height: 26.h),
                  _buildLogin(context),
                  SizedBox(height: 10.h),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 40.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_forgot_password".tr,
                          style: CustomTextStyles.labelLargeLightgreenA700Black,
                        ),
                        Text(
                          "lbl_register".tr,
                          style: CustomTextStyles.titleSmallBluegray20005_1,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 34.h),
                  _buildStackline121(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 60.h,
      leadingWidth: 28.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftOnprimary16x8,
        width: 8.h,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarTitle(text: "lbl_login".tr),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocBuilder<LogInBloc, LogInState>(
        builder: (context, state) {
          return CustomPhoneNumber(
            country:
                state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context.read<LogInBloc>().add(ChangeCountryEvent(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocBuilder<LogInBloc, LogInState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordoneController,
            hintText: "lbl16".tr,
            hintStyle: theme.textTheme.titleSmall!,
            prefix: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.img1BlueGray40016x14,
                height: 16.h,
                width: 14.h,
                fit: BoxFit.contain,
              ),
            ),
            prefixConstraints: BoxConstraints(maxHeight: 48.h),
            suffix: InkWell(
              onTap: () {
                context.read<LogInBloc>().add(
                  ChangePasswordVisibilityEvent(value: !state.isShowPassword),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(16.h, 14.h, 10.h, 14.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEyeBlueGray400,
                  height: 16.h,
                  width: 20.h,
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
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordtwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocSelector<LogInBloc, LogInState, TextEditingController?>(
        selector: (state) => state.passwordtwoController,
        builder: (context, passwordtwoController) {
          return CustomTextFormField(
            controller: passwordtwoController,
            hintText: "msg_verification_code".tr,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup12110,
                height: 16.h,
                width: 14.h,
                fit: BoxFit.contain,
              ),
            ),
            prefixConstraints: BoxConstraints(maxHeight: 48.h),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 14.h,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildReteamspassword(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: BlocSelector<LogInBloc, LogInState, bool?>(
          selector: (state) => state.reteamspassword,
          builder: (context, reteamspassword) {
            return CustomCheckboxButton(
              alignment: Alignment.centerLeft,
              text: "msg_reteams_password".tr,
              value: reteamspassword,
              onChange: (value) {
                context.read<LogInBloc>().add(
                  ChangeCheckBoxEvent(value: value),
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogin(BuildContext context) {
    return CustomElevatedButton(
      height: 50.h,
      text: "lbl_login".tr,
      margin: EdgeInsets.symmetric(horizontal: 26.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayTL24Decoration,
      buttonTextStyle: CustomTextStyles.titleMediumBluegray400,
    );
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 42.h,
        text: "lbl_google".tr,
        leftIcon: Container(
          padding: EdgeInsets.all(2.h),
          margin: EdgeInsets.only(right: 12.h),
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(14.h),
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGooglelogo98082,
            height: 20.h,
            width: 20.h,
            fit: BoxFit.contain,
          ),
        ),
        buttonStyle: CustomButtonStyles.fillOnPrimaryTL8,
        buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
      ),
    );
  }

  /// Section Widget
  Widget _buildTelegramtwo(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 42.h,
        text: "lbl_telegram".tr,
        leftIcon: Container(
          margin: EdgeInsets.only(right: 12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgSaveLightBlue40001,
            height: 28.h,
            width: 28.h,
            fit: BoxFit.contain,
          ),
        ),
        buttonStyle: CustomButtonStyles.fillOnPrimaryTL8,
        buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
      ),
    );
  }

  /// Section Widget
  Widget _buildStackline121(BuildContext context) {
    return SizedBox(
      height: 332.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 324.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.06,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage36,
                    height: 324.h,
                    width: double.maxFinite,
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Container(
                  height: 324.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 128.h,
                          width: 374.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 0.98),
                              colors: [appTheme.gray90002, appTheme.gray90000],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 32.h,
                        width: 374.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.5, 0.98),
                            end: Alignment(0.5, 0),
                            colors: [
                              appTheme.gray90002,
                              appTheme.gray90002.withValues(alpha: 0),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 254.h,
                          margin: EdgeInsets.only(bottom: 26.h),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Opacity(
                                opacity: 0.06,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage37254x372,
                                  height: 254.h,
                                  width: double.maxFinite,
                                ),
                              ),
                              Container(
                                height: 254.h,
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Opacity(
                                      opacity: 0.06,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgImage38,
                                        height: 254.h,
                                        width: double.maxFinite,
                                      ),
                                    ),
                                    Container(
                                      height: 254.h,
                                      child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          Opacity(
                                            opacity: 0.06,
                                            child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage39,
                                              height: 254.h,
                                              width: double.maxFinite,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: double.maxFinite,
                                              margin: EdgeInsets.only(
                                                top: 72.h,
                                              ),
                                              child: Column(
                                                spacing: 10,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    "msg_join_our_community2"
                                                        .tr,
                                                    style:
                                                        CustomTextStyles
                                                            .bodyMediumOnPrimary,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .imgSaveOnprimary,
                                                        height: 36.h,
                                                        width: 36.h,
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment
                                                                .bottomCenter,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                bottom: 6.h,
                                                              ),
                                                          child: Text(
                                                            "lbl_telegram".tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .bodyMediumBluegray400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
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
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 14.h),
              child: Column(
                spacing: 28,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 6.h),
                            child: Divider(color: appTheme.blueGray70004),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_or".tr,
                            style: CustomTextStyles.labelLargeBluegray200,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 6.h),
                            child: Divider(color: appTheme.blueGray70004),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 4.h),
                    child: Row(
                      children: [
                        _buildGoogle(context),
                        _buildTelegramtwo(context),
                      ],
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
}

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
import 'bloc/register_click_agreement_text_bloc.dart';
import 'models/register_click_agreement_text_model.dart';

class RegisterClickAgreementTextScreen extends StatelessWidget {
  const RegisterClickAgreementTextScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterClickAgreementTextBloc>(
      create:
          (context) => RegisterClickAgreementTextBloc(
            RegisterClickAgreementTextState(
              registerClickAgreementTextModelObj:
                  RegisterClickAgreementTextModel(),
            ),
          )..add(RegisterClickAgreementTextInitialEvent()),
      child: RegisterClickAgreementTextScreen(),
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
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 14.h, top: 28.h, right: 14.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogoWj93246x128,
                height: 46.h,
                width: 130.h,
              ),
              SizedBox(height: 26.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 4.h),
                child: _buildPhoneNumber(context),
              ),
              SizedBox(height: 12.h),
              _buildPasswordone(context),
              SizedBox(height: 12.h),
              _buildPasswordtwo(context),
              SizedBox(height: 12.h),
              _buildLagreetotheuser(context),
              SizedBox(height: 10.h),
              _buildLagreetoreceive(context),
              SizedBox(height: 28.h),
              _buildRegistertwo(context),
              SizedBox(height: 12.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_forgot_password".tr,
                      style: CustomTextStyles.labelLargeLightgreenA700Black,
                    ),
                    Text(
                      "lbl_login".tr,
                      style: CustomTextStyles.titleSmallBluegray20005_1,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              _buildColumnline121(context),
            ],
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
      title: AppbarTitle(text: "lbl_register".tr),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      child: BlocBuilder<
        RegisterClickAgreementTextBloc,
        RegisterClickAgreementTextState
      >(
        builder: (context, state) {
          return CustomPhoneNumber(
            country:
                state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context.read<RegisterClickAgreementTextBloc>().add(
                ChangeCountryEvent(value: value),
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: BlocBuilder<
        RegisterClickAgreementTextBloc,
        RegisterClickAgreementTextState
      >(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordoneController,
            hintText: "lbl_password".tr,
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
                context.read<RegisterClickAgreementTextBloc>().add(
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
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: BlocSelector<
        RegisterClickAgreementTextBloc,
        RegisterClickAgreementTextState,
        TextEditingController?
      >(
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
  Widget _buildLagreetotheuser(BuildContext context) {
    return BlocSelector<
      RegisterClickAgreementTextBloc,
      RegisterClickAgreementTextState,
      bool?
    >(
      selector: (state) => state.lagreetotheuser,
      builder: (context, lagreetotheuser) {
        return CustomCheckboxButton(
          text: "msg_l_agree_to_the_user".tr,
          isExpandedText: true,
          value: lagreetotheuser,
          onChange: (value) {
            context.read<RegisterClickAgreementTextBloc>().add(
              ChangeCheckBoxEvent(value: value),
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLagreetoreceive(BuildContext context) {
    return BlocSelector<
      RegisterClickAgreementTextBloc,
      RegisterClickAgreementTextState,
      bool?
    >(
      selector: (state) => state.lagreetoreceive,
      builder: (context, lagreetoreceive) {
        return CustomCheckboxButton(
          text: "msg_l_agree_to_receive".tr,
          isExpandedText: true,
          value: lagreetoreceive,
          onChange: (value) {
            context.read<RegisterClickAgreementTextBloc>().add(
              ChangeCheckBox1Event(value: value),
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRegistertwo(BuildContext context) {
    return CustomElevatedButton(
      height: 50.h,
      text: "lbl_register".tr,
      margin: EdgeInsets.only(left: 12.h, right: 10.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayTL24Decoration,
      buttonTextStyle: CustomTextStyles.titleMediumBluegray400,
    );
  }

  /// Section Widget
  Widget _buildLoginwith(BuildContext context) {
    return CustomElevatedButton(
      height: 42.h,
      text: "msg_login_with_google".tr,
      margin: EdgeInsets.only(left: 64.h, right: 56.h),
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
      buttonStyle: CustomButtonStyles.fillIndigo,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
    );
  }

  /// Section Widget
  Widget _buildColumnline121(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 28,
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
          _buildLoginwith(context),
        ],
      ),
    );
  }
}

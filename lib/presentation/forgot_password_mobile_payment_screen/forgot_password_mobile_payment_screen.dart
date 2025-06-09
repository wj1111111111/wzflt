import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/forgot_password_mobile_payment_bloc.dart';
import 'models/forgot_password_mobile_payment_model.dart';

class ForgotPasswordMobilePaymentScreen extends StatelessWidget {
  const ForgotPasswordMobilePaymentScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordMobilePaymentBloc>(
      create:
          (context) => ForgotPasswordMobilePaymentBloc(
            ForgotPasswordMobilePaymentState(
              forgotPasswordMobilePaymentModelObj:
                  ForgotPasswordMobilePaymentModel(),
            ),
          )..add(ForgotPasswordMobilePaymentInitialEvent()),
      child: ForgotPasswordMobilePaymentScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 310.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "msg_please_retrieve".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleSmallBluegray400_1.copyWith(
                      height: 1.14,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                child: _buildPhoneNumber(context),
              ),
              SizedBox(height: 20.h),
              _buildStackone(context),
              SizedBox(height: 20.h),
              _buildPassword(context),
              SizedBox(height: 20.h),
              _buildConfirmpassword(context),
              Spacer(flex: 36),
              _buildConfirm(context),
              Spacer(flex: 63),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 58.h,
      leadingWidth: 25.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40010x10,
        height: 10.h,
        width: 10.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "msg_forgot_transaction".tr,
        margin: EdgeInsets.only(left: 5.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      child: BlocBuilder<
        ForgotPasswordMobilePaymentBloc,
        ForgotPasswordMobilePaymentState
      >(
        builder: (context, state) {
          return CustomPhoneNumber(
            country:
                state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context.read<ForgotPasswordMobilePaymentBloc>().add(
                ChangeCountryEvent(value: value),
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildOneone(BuildContext context) {
    return BlocSelector<
      ForgotPasswordMobilePaymentBloc,
      ForgotPasswordMobilePaymentState,
      TextEditingController?
    >(
      selector: (state) => state.oneoneController,
      builder: (context, oneoneController) {
        return CustomTextFormField(
          controller: oneoneController,
          hintText: "lbl_sms".tr,
          prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
            child: CustomImageView(
              imagePath: ImageConstant.img19,
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
    );
  }

  /// Section Widget
  Widget _buildSend(BuildContext context) {
    return CustomOutlinedButton(
      height: 34.h,
      width: 76.h,
      text: "lbl_send".tr,
      margin: EdgeInsets.only(right: 12.h),
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientLightGreenAToLightGreenTL41Decoration,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildStackone(BuildContext context) {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Stack(
        alignment: Alignment.center,
        children: [_buildOneone(context), _buildSend(context)],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: BlocBuilder<
        ForgotPasswordMobilePaymentBloc,
        ForgotPasswordMobilePaymentState
      >(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordController,
            hintText: "msg_set_new_transaction".tr,
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
                context.read<ForgotPasswordMobilePaymentBloc>().add(
                  ChangePasswordVisibilityEvent(value: !state.isShowPassword),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(16.h, 14.h, 10.h, 14.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEye16x20,
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
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: BlocBuilder<
        ForgotPasswordMobilePaymentBloc,
        ForgotPasswordMobilePaymentState
      >(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.confirmpasswordController,
            hintText: "msg_confirm_password2".tr,
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
                context.read<ForgotPasswordMobilePaymentBloc>().add(
                  ChangePasswordVisibilityEvent1(value: !state.isShowPassword1),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(16.h, 14.h, 10.h, 14.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEye16x20,
                  height: 16.h,
                  width: 20.h,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(maxHeight: 48.h),
            obscureText: state.isShowPassword1,
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
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
      height: 50.h,
      text: "lbl_confirm".tr,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayTL24Decoration,
      buttonTextStyle: CustomTextStyles.titleMediumBluegray400,
    );
  }
}

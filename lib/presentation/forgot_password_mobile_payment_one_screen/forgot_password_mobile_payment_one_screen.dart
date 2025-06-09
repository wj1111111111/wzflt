import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/forgot_password_mobile_payment_one_bloc.dart';
import 'models/forgot_password_mobile_payment_one_model.dart';

class ForgotPasswordMobilePaymentOneScreen extends StatelessWidget {
  const ForgotPasswordMobilePaymentOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordMobilePaymentOneBloc>(
      create:
          (context) => ForgotPasswordMobilePaymentOneBloc(
            ForgotPasswordMobilePaymentOneState(
              forgotPasswordMobilePaymentOneModelObj:
                  ForgotPasswordMobilePaymentOneModel(),
            ),
          )..add(ForgotPasswordMobilePaymentOneInitialEvent()),
      child: ForgotPasswordMobilePaymentOneScreen(),
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
          padding: EdgeInsets.only(left: 12.h, top: 14.h, right: 12.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
              SizedBox(height: 8.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 8.h),
                child: _buildPhoneNumber(context),
              ),
              SizedBox(height: 4.h),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_the_mobile_num_is2".tr,
                  style: CustomTextStyles.labelLargeRed40001,
                ),
              ),
              SizedBox(height: 18.h),
              _buildStackone(context),
              SizedBox(height: 4.h),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_please_enter_a_valid".tr,
                  style: CustomTextStyles.labelLargeRed40001,
                ),
              ),
              SizedBox(height: 18.h),
              _buildPassword(context),
              SizedBox(height: 6.h),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_please_enter_6".tr,
                  style: CustomTextStyles.labelLargeRed40001,
                ),
              ),
              SizedBox(height: 16.h),
              _buildConfirmpassword(context),
              SizedBox(height: 6.h),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_the_password_is".tr,
                  style: CustomTextStyles.labelLargeRed40001,
                ),
              ),
              SizedBox(height: 38.h),
              _buildConfirm(context),
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
        ForgotPasswordMobilePaymentOneBloc,
        ForgotPasswordMobilePaymentOneState
      >(
        builder: (context, state) {
          return CustomPhoneNumber(
            country:
                state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context.read<ForgotPasswordMobilePaymentOneBloc>().add(
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
      ForgotPasswordMobilePaymentOneBloc,
      ForgotPasswordMobilePaymentOneState,
      TextEditingController?
    >(
      selector: (state) => state.oneoneController,
      builder: (context, oneoneController) {
        return CustomTextFormField(
          controller: oneoneController,
          hintText: "lbl_sms".tr,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 16.h, 8.h, 16.h),
            child: CustomImageView(
              imagePath: ImageConstant.img19,
              height: 14.h,
              width: 14.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(maxHeight: 50.h),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 14.h,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildS(BuildContext context) {
    return CustomElevatedButton(
      height: 34.h,
      width: 78.h,
      text: "lbl_59s".tr,
      margin: EdgeInsets.only(right: 16.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayTL61Decoration,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildStackone(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Stack(
        alignment: Alignment.center,
        children: [_buildOneone(context), _buildS(context)],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: BlocBuilder<
        ForgotPasswordMobilePaymentOneBloc,
        ForgotPasswordMobilePaymentOneState
      >(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordController,
            hintText: "msg_set_new_transaction".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(12.h, 16.h, 8.h, 16.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTrophy,
                height: 14.h,
                width: 14.h,
                fit: BoxFit.contain,
              ),
            ),
            prefixConstraints: BoxConstraints(maxHeight: 50.h),
            suffix: InkWell(
              onTap: () {
                context.read<ForgotPasswordMobilePaymentOneBloc>().add(
                  ChangePasswordVisibilityEvent(value: !state.isShowPassword),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(16.h, 16.h, 12.h, 16.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEye16x20,
                  height: 14.h,
                  width: 20.h,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(maxHeight: 50.h),
            obscureText: state.isShowPassword,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.h,
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
        ForgotPasswordMobilePaymentOneBloc,
        ForgotPasswordMobilePaymentOneState
      >(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.confirmpasswordController,
            hintText: "msg_confirm_password2".tr,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(12.h, 16.h, 8.h, 16.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTrophy,
                height: 14.h,
                width: 14.h,
                fit: BoxFit.contain,
              ),
            ),
            prefixConstraints: BoxConstraints(maxHeight: 50.h),
            suffix: InkWell(
              onTap: () {
                context.read<ForgotPasswordMobilePaymentOneBloc>().add(
                  ChangePasswordVisibilityEvent1(value: !state.isShowPassword1),
                );
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(16.h, 16.h, 12.h, 16.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEye16x20,
                  height: 14.h,
                  width: 20.h,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(maxHeight: 50.h),
            obscureText: state.isShowPassword1,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.h,
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

import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/third_party_login_complete_info_one_bloc.dart';
import 'models/third_party_login_complete_info_one_model.dart';

class ThirdPartyLoginCompleteInfoOneScreen extends StatelessWidget {
  const ThirdPartyLoginCompleteInfoOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ThirdPartyLoginCompleteInfoOneBloc>(
      create:
          (context) => ThirdPartyLoginCompleteInfoOneBloc(
            ThirdPartyLoginCompleteInfoOneState(
              thirdPartyLoginCompleteInfoOneModelObj:
                  ThirdPartyLoginCompleteInfoOneModel(),
            ),
          )..add(ThirdPartyLoginCompleteInfoOneInitialEvent()),
      child: ThirdPartyLoginCompleteInfoOneScreen(),
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
          padding: EdgeInsets.only(top: 22.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_dear".tr,
                    style: CustomTextStyles.titleMediumBluegray400,
                  ),
                  Text(
                    "lbl_123_gmail_com".tr,
                    style: CustomTextStyles.titleMedium18,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              SizedBox(width: double.maxFinite, child: Divider()),
              SizedBox(
                width: 68.h,
                child: Divider(color: appTheme.lightGreenA700),
              ),
              SizedBox(height: 24.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "msg_finish_setting".tr,
                    style: CustomTextStyles.titleSmallBluegray400_1,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                child: _buildPhoneNumber(context),
              ),
              SizedBox(height: 20.h),
              _buildPassword(context),
              SizedBox(height: 12.h),
              _buildPasswordone(context),
              SizedBox(height: 12.h),
              _buildColumnenterrefe(context),
              SizedBox(height: 58.h),
              _buildSignin(context),
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
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocBuilder<
        ThirdPartyLoginCompleteInfoOneBloc,
        ThirdPartyLoginCompleteInfoOneState
      >(
        builder: (context, state) {
          return CustomPhoneNumber(
            country:
                state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context.read<ThirdPartyLoginCompleteInfoOneBloc>().add(
                ChangeCountryEvent(value: value),
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocBuilder<
        ThirdPartyLoginCompleteInfoOneBloc,
        ThirdPartyLoginCompleteInfoOneState
      >(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordController,
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
                context.read<ThirdPartyLoginCompleteInfoOneBloc>().add(
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
  Widget _buildPasswordone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h, right: 12.h),
      child: BlocSelector<
        ThirdPartyLoginCompleteInfoOneBloc,
        ThirdPartyLoginCompleteInfoOneState,
        TextEditingController?
      >(
        selector: (state) => state.passwordoneController,
        builder: (context, passwordoneController) {
          return CustomTextFormField(
            controller: passwordoneController,
            hintText: "msg_account_already".tr,
            hintStyle: theme.textTheme.titleSmall!,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(10.h, 20.h, 6.h, 20.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgVideoCamera,
                height: 14.h,
                width: 14.h,
                fit: BoxFit.contain,
              ),
            ),
            prefixConstraints: BoxConstraints(maxHeight: 64.h),
            obscureText: true,
            maxLines: 3,
            contentPadding: EdgeInsets.fromLTRB(10.h, 6.h, 34.h, 6.h),
            borderDecoration: TextFormFieldStyleHelper.outlineLightGreen,
            fillColor: appTheme.gray90033,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPromoCode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: BlocSelector<
        ThirdPartyLoginCompleteInfoOneBloc,
        ThirdPartyLoginCompleteInfoOneState,
        TextEditingController?
      >(
        selector: (state) => state.promoCodeController,
        builder: (context, promoCodeController) {
          return CustomTextFormField(
            controller: promoCodeController,
            hintText: "lbl_invitation_code".tr,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgPromocode1,
                height: 16.h,
                width: 24.h,
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
  Widget _buildColumnenterrefe(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 16.h, right: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        spacing: 6,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Text(
                  "msg_enter_referral".tr,
                  style: CustomTextStyles.titleSmallMedium,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowUpBlueGray400,
                  height: 20.h,
                  width: 20.h,
                  margin: EdgeInsets.only(left: 4.h),
                ),
              ],
            ),
          ),
          _buildPromoCode(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignin(BuildContext context) {
    return CustomElevatedButton(
      height: 50.h,
      text: "lbl_sign_in2".tr,
      margin: EdgeInsets.symmetric(horizontal: 26.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayTL24Decoration,
      buttonTextStyle: CustomTextStyles.titleMediumBluegray400,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/register_bloc.dart';
import 'models/register_model.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create:
          (context) =>
              RegisterBloc(RegisterState(registerModelObj: RegisterModel()))
                ..add(RegisterInitialEvent()),
      child: RegisterScreen(),
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
              _buildPassword(context),
              SizedBox(height: 12.h),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child:
                    BlocSelector<RegisterBloc, RegisterState, RegisterModel?>(
                      selector: (state) => state.registerModelObj,
                      builder: (context, registerModelObj) {
                        return CustomDropDown(
                          width: 194.h,
                          icon: Container(
                            margin: EdgeInsets.only(left: 4.h),
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgCheckmarkBlueGray40020x20,
                              height: 20.h,
                              width: 20.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          iconSize: 20.h,
                          hintText: "msg_enter_referral".tr,
                          alignment: Alignment.centerLeft,
                          items: registerModelObj?.dropdownItemList ?? [],
                          contentPadding: EdgeInsets.all(12.h),
                        );
                      },
                    ),
              ),
              SizedBox(height: 12.h),
              _buildLagreetotheuser(context),
              SizedBox(height: 10.h),
              _buildLagreetoreceive(context),
              SizedBox(height: 28.h),
              _buildRegisterthree(context),
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
      child: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return CustomPhoneNumber(
            country:
                state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context.read<RegisterBloc>().add(
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
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return CustomTextFormField(
            controller: state.passwordController,
            hintText: "lbl_password".tr,
            textInputAction: TextInputAction.done,
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
                context.read<RegisterBloc>().add(
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
  Widget _buildLagreetotheuser(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, bool?>(
      selector: (state) => state.lagreetotheuser,
      builder: (context, lagreetotheuser) {
        return CustomCheckboxButton(
          text: "msg_l_agree_to_the_user".tr,
          isExpandedText: true,
          value: lagreetotheuser,
          onChange: (value) {
            context.read<RegisterBloc>().add(ChangeCheckBoxEvent(value: value));
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLagreetoreceive(BuildContext context) {
    return BlocSelector<RegisterBloc, RegisterState, bool?>(
      selector: (state) => state.lagreetoreceive,
      builder: (context, lagreetoreceive) {
        return CustomCheckboxButton(
          text: "msg_l_agree_to_receive".tr,
          isExpandedText: true,
          value: lagreetoreceive,
          onChange: (value) {
            context.read<RegisterBloc>().add(
              ChangeCheckBox1Event(value: value),
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRegisterthree(BuildContext context) {
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
  Widget _buildTelegram(BuildContext context) {
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
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 4.h),
            child: Row(
              children: [_buildGoogle(context), _buildTelegram(context)],
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/settings_change_password_bloc.dart';
import 'models/settings_change_password_model.dart'; // ignore_for_file: must_be_immutable

class SettingsChangePasswordPage extends StatefulWidget {
  const SettingsChangePasswordPage({Key? key}) : super(key: key);

  @override
  SettingsChangePasswordPageState createState() =>
      SettingsChangePasswordPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsChangePasswordBloc>(
      create:
          (context) => SettingsChangePasswordBloc(
            SettingsChangePasswordState(
              settingsChangePasswordModelObj: SettingsChangePasswordModel(),
            ),
          )..add(SettingsChangePasswordInitialEvent()),
      child: SettingsChangePasswordPage(),
    );
  }
}

class SettingsChangePasswordPageState extends State<SettingsChangePasswordPage>
    with AutomaticKeepAliveClientMixin<SettingsChangePasswordPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        width: double.maxFinite,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(14.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      spacing: 12,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: ClipRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 12.h,
                                ),
                                decoration: AppDecoration.outline1.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder10,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "lbl_fund_password".tr,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: 278.h,
                                        margin: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "msg_set_a_fund_password".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Divider(),
                                    ),
                                    SizedBox(height: 8.h),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: _buildRownewpassword(
                                        context,
                                        newpasswordTwo: "lbl_old_password".tr,
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    _buildPassword(context),
                                    SizedBox(height: 12.h),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: _buildRownewpassword(
                                        context,
                                        newpasswordTwo: "lbl_new_password".tr,
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    _buildNewpassword(context),
                                    SizedBox(height: 12.h),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: _buildRownewpassword(
                                        context,
                                        newpasswordTwo:
                                            "msg_confirm_new_password".tr,
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    _buildNewpasswordone(context),
                                    SizedBox(height: 10.h),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "msg_forgot_password2".tr,
                                        style:
                                            CustomTextStyles
                                                .labelLargeLightgreenA700,
                                      ),
                                    ),
                                    SizedBox(height: 26.h),
                                    _buildSave(context),
                                    SizedBox(height: 8.h),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        _buildColumnvideocame(context),
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
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocBuilder<SettingsChangePasswordBloc, SettingsChangePasswordState>(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.passwordController,
          hintText: "lbl_123456789".tr,
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
              context.read<SettingsChangePasswordBloc>().add(
                ChangePasswordVisibilityEvent(value: !state.isShowPassword),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(16.h, 14.h, 10.h, 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgEyeBlueGray40016x20,
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
          borderDecoration: TextFormFieldStyleHelper.outlineLightGreenTL6,
          fillColor: appTheme.gray90002,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNewpassword(BuildContext context) {
    return BlocBuilder<SettingsChangePasswordBloc, SettingsChangePasswordState>(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.newpasswordController,
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
              context.read<SettingsChangePasswordBloc>().add(
                ChangePasswordVisibilityEvent1(value: !state.isShowPassword1),
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
          obscureText: state.isShowPassword1,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 14.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL61,
          fillColor: appTheme.gray90002,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNewpasswordone(BuildContext context) {
    return BlocBuilder<SettingsChangePasswordBloc, SettingsChangePasswordState>(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.newpasswordoneController,
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
              context.read<SettingsChangePasswordBloc>().add(
                ChangePasswordVisibilityEvent2(value: !state.isShowPassword2),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(16.h, 14.h, 10.h, 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgEyeBlueGray400,
                height: 16.h,
                width: 18.h,
                fit: BoxFit.contain,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(maxHeight: 48.h),
          obscureText: state.isShowPassword2,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 14.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL61,
          fillColor: appTheme.gray90002,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
      height: 42.h,
      text: "lbl_save".tr,
      margin: EdgeInsets.only(left: 42.h, right: 40.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayTL20Decoration,
      buttonTextStyle: CustomTextStyles.titleMediumBluegray400,
    );
  }

  /// Section Widget
  Widget _buildNewpasswordtwo(BuildContext context) {
    return BlocBuilder<SettingsChangePasswordBloc, SettingsChangePasswordState>(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.newpasswordtwoController,
          hintText: "msg_enter_a_new_password".tr,
          prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
            child: CustomImageView(
              imagePath: ImageConstant.img116x14,
              height: 16.h,
              width: 14.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(maxHeight: 48.h),
          suffix: InkWell(
            onTap: () {
              context.read<SettingsChangePasswordBloc>().add(
                ChangePasswordVisibilityEvent3(value: !state.isShowPassword3),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(16.h, 14.h, 10.h, 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.img3BlueGray400,
                height: 16.h,
                width: 18.h,
                fit: BoxFit.contain,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(maxHeight: 48.h),
          obscureText: state.isShowPassword3,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 14.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL61,
          fillColor: appTheme.gray90002,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNewpassword1(BuildContext context) {
    return BlocBuilder<SettingsChangePasswordBloc, SettingsChangePasswordState>(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.newpassword1Controller,
          hintText: "msg_confirm_password2".tr,
          textInputAction: TextInputAction.done,
          prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
            child: CustomImageView(
              imagePath: ImageConstant.img116x14,
              height: 16.h,
              width: 14.h,
              fit: BoxFit.contain,
            ),
          ),
          prefixConstraints: BoxConstraints(maxHeight: 48.h),
          suffix: InkWell(
            onTap: () {
              context.read<SettingsChangePasswordBloc>().add(
                ChangePasswordVisibilityEvent4(value: !state.isShowPassword4),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(16.h, 14.h, 10.h, 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.img3BlueGray400,
                height: 16.h,
                width: 18.h,
                fit: BoxFit.contain,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(maxHeight: 48.h),
          obscureText: state.isShowPassword4,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 14.h,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL61,
          fillColor: appTheme.gray90002,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSaveone(BuildContext context) {
    return CustomElevatedButton(
      height: 42.h,
      text: "lbl_save".tr,
      margin: EdgeInsets.only(left: 40.h, right: 38.h),
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientLightGreenAToLightGreenTL201Decoration,
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }

  /// Section Widget
  Widget _buildColumnvideocame(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 14.h),
            decoration: AppDecoration.outline1.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVideoCameraBlueGray40012x12,
                        height: 12.h,
                        width: 12.h,
                        margin: EdgeInsets.only(top: 2.h),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "msg_please_create_a".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRownewpassword(
                    context,
                    newpasswordTwo: "lbl_new_password".tr,
                  ),
                ),
                SizedBox(height: 8.h),
                _buildNewpasswordtwo(context),
                SizedBox(height: 12.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildRownewpassword(
                    context,
                    newpasswordTwo: "msg_confirm_new_password".tr,
                  ),
                ),
                SizedBox(height: 6.h),
                _buildNewpassword1(context),
                SizedBox(height: 30.h),
                _buildSaveone(context),
                SizedBox(height: 8.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildRownewpassword(
    BuildContext context, {
    required String newpasswordTwo,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            newpasswordTwo,
            style: CustomTextStyles.titleSmallBluegray400_1.copyWith(
              color: appTheme.blueGray400,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgRedA70004,
          height: 4.h,
          width: 4.h,
          margin: EdgeInsets.only(left: 6.h, top: 6.h),
        ),
      ],
    );
  }
}

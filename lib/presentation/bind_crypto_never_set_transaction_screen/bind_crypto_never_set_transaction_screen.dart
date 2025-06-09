import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/bind_crypto_never_set_transaction_bloc.dart';
import 'models/bind_crypto_never_set_transaction_model.dart';

class BindCryptoNeverSetTransactionScreen extends StatelessWidget {
  const BindCryptoNeverSetTransactionScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<BindCryptoNeverSetTransactionBloc>(
      create:
          (context) => BindCryptoNeverSetTransactionBloc(
            BindCryptoNeverSetTransactionState(
              bindCryptoNeverSetTransactionModelObj:
                  BindCryptoNeverSetTransactionModel(),
            ),
          )..add(BindCryptoNeverSetTransactionInitialEvent()),
      child: BindCryptoNeverSetTransactionScreen(),
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
          padding: EdgeInsets.only(left: 14.h, top: 8.h, right: 14.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildColumncryptopro(context),
              SizedBox(height: 16.h),
              _buildColumnwalletadd(context),
              SizedBox(height: 16.h),
              _buildColumnconbinati(context),
              SizedBox(height: 10.h),
              _buildConfirmpassword(context),
              SizedBox(height: 30.h),
              _buildSubmit(context),
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
      leadingWidth: 21.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_crypto_wallet2".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildColumncryptopro(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 6,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_crypto_product".tr,
                  style: CustomTextStyles.titleSmallBluegray400,
                ),
                TextSpan(
                  text: "lbl21".tr,
                  style: CustomTextStyles.titleSmallRed60003,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          BlocSelector<
            BindCryptoNeverSetTransactionBloc,
            BindCryptoNeverSetTransactionState,
            BindCryptoNeverSetTransactionModel?
          >(
            selector: (state) => state.bindCryptoNeverSetTransactionModelObj,
            builder: (context, bindCryptoNeverSetTransactionModelObj) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.only(left: 16.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdownOnprimary,
                    height: 16.h,
                    width: 12.h,
                    fit: BoxFit.contain,
                  ),
                ),
                iconSize: 16.h,
                hintText: "lbl_crypto_product".tr,
                hintStyle: CustomTextStyles.bodyMediumBluegray400,
                items:
                    bindCryptoNeverSetTransactionModelObj?.dropdownItemList ??
                    [],
                prefix: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 14.h,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPlayBlueGray400,
                    height: 16.h,
                    width: 18.h,
                    fit: BoxFit.contain,
                  ),
                ),
                prefixConstraints: BoxConstraints(maxHeight: 48.h),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 14.h,
                ),
                borderDecoration: DropDownStyleHelper.fillGray,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return BlocSelector<
      BindCryptoNeverSetTransactionBloc,
      BindCryptoNeverSetTransactionState,
      TextEditingController?
    >(
      selector: (state) => state.addressController,
      builder: (context, addressController) {
        return CustomTextFormField(
          controller: addressController,
          hintText: "lbl_wallet_address".tr,
          prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgLinkedin,
              height: 16.h,
              width: 18.h,
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
  Widget _buildColumnwalletadd(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 6,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_wallet_address".tr,
                  style: CustomTextStyles.titleSmallBluegray400,
                ),
                TextSpan(
                  text: "lbl21".tr,
                  style: CustomTextStyles.titleSmallRed60003,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          _buildAddress(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocBuilder<
      BindCryptoNeverSetTransactionBloc,
      BindCryptoNeverSetTransactionState
    >(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.passwordController,
          hintText: "msg_set_transaction".tr,
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
              context.read<BindCryptoNeverSetTransactionBloc>().add(
                ChangePasswordVisibilityEvent(value: !state.isShowPassword),
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
          obscureText: state.isShowPassword,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 14.h,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnconbinati(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 6,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_please_set_up_your2".tr,
                  style: theme.textTheme.bodySmall,
                ),
                TextSpan(
                  text: "lbl21".tr,
                  style: CustomTextStyles.labelLargeRed60003,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          _buildPassword(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return BlocBuilder<
      BindCryptoNeverSetTransactionBloc,
      BindCryptoNeverSetTransactionState
    >(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.confirmpasswordController,
          hintText: "msg_confirm_password".tr,
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
              context.read<BindCryptoNeverSetTransactionBloc>().add(
                ChangePasswordVisibilityEvent1(value: !state.isShowPassword1),
              );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(16.h, 14.h, 10.h, 14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgEyeBlueGray200,
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
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
      height: 50.h,
      text: "lbl_submit".tr,
      margin: EdgeInsets.only(left: 14.h, right: 8.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayTL241Decoration,
      buttonTextStyle: CustomTextStyles.titleMediumBluegray400,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/redemption_code_expired_one_bloc.dart';
import 'models/redemption_code_expired_one_model.dart'; // ignore_for_file: must_be_immutable

class RedemptionCodeExpiredOneDialog extends StatelessWidget {
  const RedemptionCodeExpiredOneDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RedemptionCodeExpiredOneBloc>(
      create:
          (context) => RedemptionCodeExpiredOneBloc(
            RedemptionCodeExpiredOneState(
              redemptionCodeExpiredOneModelObj: RedemptionCodeExpiredOneModel(),
            ),
          )..add(RedemptionCodeExpiredOneInitialEvent()),
      child: RedemptionCodeExpiredOneDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.h),
          decoration: AppDecoration.outlineBlueGrayF.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 234.h,
                margin: EdgeInsets.only(left: 6.h),
                child: Text(
                  "msg_receive_rewards".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!.copyWith(height: 1.14),
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 2.h),
                child: _buildPhoneNumber(context),
              ),
              SizedBox(height: 4.h),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "msg_the_mobile_num_is".tr,
                  style: CustomTextStyles.labelLargeRed40001,
                ),
              ),
              SizedBox(height: 10.h),
              _buildStackcheckmark(context),
              SizedBox(height: 4.h),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "msg_please_enter_a_valid".tr,
                  style: CustomTextStyles.labelLargeRed40001,
                ),
              ),
              SizedBox(height: 10.h),
              _buildPasswordone(context),
              SizedBox(height: 4.h),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "msg_please_enter_a_valid".tr,
                  style: CustomTextStyles.labelLargeRed40001,
                ),
              ),
              SizedBox(height: 10.h),
              _buildRowvideocamera(context),
              SizedBox(height: 34.h),
              _buildComplete(context),
              SizedBox(height: 6.h),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: BlocBuilder<
        RedemptionCodeExpiredOneBloc,
        RedemptionCodeExpiredOneState
      >(
        builder: (context, state) {
          return CustomPhoneNumber(
            country:
                state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context.read<RedemptionCodeExpiredOneBloc>().add(
                ChangeCountryEvent(value: value),
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckmarkone(BuildContext context) {
    return BlocSelector<
      RedemptionCodeExpiredOneBloc,
      RedemptionCodeExpiredOneState,
      TextEditingController?
    >(
      selector: (state) => state.checkmarkoneController,
      builder: (context, checkmarkoneController) {
        return CustomTextFormField(
          controller: checkmarkoneController,
          hintText: "lbl_sms".tr,
          prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmarkBlueGray40016x14,
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
  Widget _buildS(BuildContext context) {
    return CustomElevatedButton(
      height: 34.h,
      width: 78.h,
      text: "lbl_59s".tr,
      margin: EdgeInsets.only(right: 12.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayDecoration,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildStackcheckmark(BuildContext context) {
    return Container(
      height: 48.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Stack(
        alignment: Alignment.center,
        children: [_buildCheckmarkone(context), _buildS(context)],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordone(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: BlocSelector<
        RedemptionCodeExpiredOneBloc,
        RedemptionCodeExpiredOneState,
        TextEditingController?
      >(
        selector: (state) => state.passwordoneController,
        builder: (context, passwordoneController) {
          return CustomTextFormField(
            controller: passwordoneController,
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
  Widget _buildRowvideocamera(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.h),
      decoration: AppDecoration.row194,
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVideoCamera,
            height: 14.h,
            width: 14.h,
            margin: EdgeInsets.only(top: 12.h),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 278.h,
              margin: EdgeInsets.only(top: 12.h),
              child: Text(
                "msg_the_mobile_number".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall!.copyWith(height: 1.29),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComplete(BuildContext context) {
    return CustomElevatedButton(
      height: 50.h,
      text: "msg_complete_verification".tr,
      margin: EdgeInsets.only(left: 2.h),
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientLightGreenAToLightGreenTL22Decoration,
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/redemption_code_expired_bloc.dart';
import 'models/redemption_code_expired_model.dart'; // ignore_for_file: must_be_immutable

class RedemptionCodeExpiredDialog extends StatelessWidget {
  const RedemptionCodeExpiredDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RedemptionCodeExpiredBloc>(
      create:
          (context) => RedemptionCodeExpiredBloc(
            RedemptionCodeExpiredState(
              redemptionCodeExpiredModelObj: RedemptionCodeExpiredModel(),
            ),
          )..add(RedemptionCodeExpiredInitialEvent()),
      child: RedemptionCodeExpiredDialog(),
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
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
          decoration: AppDecoration.outlineBlueGrayF.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 234.h,
                margin: EdgeInsets.only(left: 4.h),
                child: Text(
                  "msg_receive_rewards".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!.copyWith(height: 1.14),
                ),
              ),
              SizedBox(height: 8.h),
              SizedBox(
                width: double.maxFinite,
                child: _buildPhoneNumber(context),
              ),
              SizedBox(height: 12.h),
              _buildRowcheckmark(context),
              SizedBox(height: 12.h),
              _buildPasswordone(context),
              SizedBox(height: 12.h),
              _buildRowvideocamera(context),
              SizedBox(height: 34.h),
              _buildComplete(context),
              SizedBox(height: 4.h),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: BlocBuilder<RedemptionCodeExpiredBloc, RedemptionCodeExpiredState>(
        builder: (context, state) {
          return CustomPhoneNumber(
            country:
                state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context.read<RedemptionCodeExpiredBloc>().add(
                ChangeCountryEvent(value: value),
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGetcode(BuildContext context) {
    return CustomOutlinedButton(
      height: 34.h,
      width: 76.h,
      text: "lbl_get_code".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientLightGreenAToLightGreenTL41Decoration,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
    );
  }

  /// Section Widget
  Widget _buildRowcheckmark(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 6.h),
      decoration: AppDecoration.outlineBluegray70001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkBlueGray40016x14,
            height: 16.h,
            width: 16.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "lbl_sms".tr,
              style: CustomTextStyles.titleSmallBluegray400_1,
            ),
          ),
          Spacer(),
          _buildGetcode(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordone(BuildContext context) {
    return BlocSelector<
      RedemptionCodeExpiredBloc,
      RedemptionCodeExpiredState,
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
    );
  }

  /// Section Widget
  Widget _buildRowvideocamera(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.h),
      decoration: AppDecoration.row193,
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
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayTL24Decoration,
      buttonTextStyle: CustomTextStyles.titleMediumBluegray400,
    );
  }
}

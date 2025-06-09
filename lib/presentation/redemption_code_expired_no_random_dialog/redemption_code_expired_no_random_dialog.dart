import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/redemption_code_expired_no_random_bloc.dart';
import 'models/redemption_code_expired_no_random_model.dart'; // ignore_for_file: must_be_immutable

class RedemptionCodeExpiredNoRandomDialog extends StatelessWidget {
  const RedemptionCodeExpiredNoRandomDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RedemptionCodeExpiredNoRandomBloc>(
      create:
          (context) => RedemptionCodeExpiredNoRandomBloc(
            RedemptionCodeExpiredNoRandomState(
              redemptionCodeExpiredNoRandomModelObj:
                  RedemptionCodeExpiredNoRandomModel(),
            ),
          )..add(RedemptionCodeExpiredNoRandomInitialEvent()),
      child: RedemptionCodeExpiredNoRandomDialog(),
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
              SizedBox(
                height: 48.h,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [_buildCheckmarkone(context), _buildSend(context)],
                ),
              ),
              SizedBox(height: 24.h),
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
      child: BlocBuilder<
        RedemptionCodeExpiredNoRandomBloc,
        RedemptionCodeExpiredNoRandomState
      >(
        builder: (context, state) {
          return CustomPhoneNumber(
            country:
                state.selectedCountry ??
                CountryPickerUtils.getCountryByPhoneCode('1'),
            controller: state.phoneNumberController,
            onTap: (Country value) {
              context.read<RedemptionCodeExpiredNoRandomBloc>().add(
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
      RedemptionCodeExpiredNoRandomBloc,
      RedemptionCodeExpiredNoRandomState,
      TextEditingController?
    >(
      selector: (state) => state.checkmarkoneController,
      builder: (context, checkmarkoneController) {
        return CustomTextFormField(
          controller: checkmarkoneController,
          hintText: "lbl_sms".tr,
          textInputAction: TextInputAction.done,
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

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/my_personal_center_zero_bloc.dart';
import 'models/my_personal_center_zero_model.dart';

class MyPersonalCenterZeroScreen extends StatelessWidget {
  const MyPersonalCenterZeroScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MyPersonalCenterZeroBloc>(
      create:
          (context) => MyPersonalCenterZeroBloc(
            MyPersonalCenterZeroState(
              myPersonalCenterZeroModelObj: MyPersonalCenterZeroModel(),
            ),
          )..add(MyPersonalCenterZeroInitialEvent()),
      child: MyPersonalCenterZeroScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 18.h, top: 76.h, right: 18.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_012".tr, style: CustomTextStyles.titleMedium18),
              SizedBox(height: 26.h),
              _buildRowgiftcodetwo(context),
              SizedBox(height: 62.h),
              Text("lbl_022".tr, style: CustomTextStyles.titleMedium18),
              SizedBox(height: 20.h),
              _buildRowgiftcodeone(context),
              SizedBox(height: 44.h),
              Text("lbl_032".tr, style: CustomTextStyles.titleMedium18),
              SizedBox(height: 42.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 40.h),
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 4.h),
                decoration: AppDecoration.fs7wz.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "msg_the_redemption_code".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.titleMedium18.copyWith(
                        height: 1.22,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 44.h),
              _buildSend(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEnterthegift(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        MyPersonalCenterZeroBloc,
        MyPersonalCenterZeroState,
        TextEditingController?
      >(
        selector: (state) => state.enterthegiftController,
        builder: (context, enterthegiftController) {
          return CustomTextFormField(
            controller: enterthegiftController,
            hintText: "msg_enter_the_gift_code".tr,
            contentPadding: EdgeInsets.all(12.h),
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildExchange(BuildContext context) {
    return CustomElevatedButton(
      height: 34.h,
      width: 78.h,
      text: "lbl_exchange".tr,
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayDecoration,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
    );
  }

  /// Section Widget
  Widget _buildRowgiftcodetwo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 6.h),
      child: Row(
        children: [
          _buildStackgiftcode(context, giftcodeOne: "lbl_gift_code".tr),
          _buildEnterthegift(context),
          _buildExchange(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildXxx(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        MyPersonalCenterZeroBloc,
        MyPersonalCenterZeroState,
        TextEditingController?
      >(
        selector: (state) => state.xxxController,
        builder: (context, xxxController) {
          return CustomTextFormField(
            controller: xxxController,
            hintText: "lbl_123456789xxx".tr,
            hintStyle: theme.textTheme.titleSmall!,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.all(12.h),
            borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildExchangeone(BuildContext context) {
    return CustomElevatedButton(
      height: 34.h,
      width: 78.h,
      text: "lbl_exchange".tr,
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientLightGreenAToLightGreenTL16Decoration,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
    );
  }

  /// Section Widget
  Widget _buildRowgiftcodeone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 6.h),
      child: Row(
        children: [
          _buildStackgiftcode(context, giftcodeOne: "lbl_gift_code".tr),
          _buildXxx(context),
          _buildExchangeone(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSend(BuildContext context) {
    return CustomOutlinedButton(
      height: 34.h,
      width: 76.h,
      text: "lbl_send".tr,
      margin: EdgeInsets.only(right: 16.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientBlueGrayToBlueGrayTL4Decoration,
      buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
      alignment: Alignment.centerRight,
    );
  }

  /// Common widget
  Widget _buildStackgiftcode(
    BuildContext context, {
    required String giftcodeOne,
  }) {
    return SizedBox(
      height: 36.h,
      width: 50.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img236,
            height: 36.h,
            width: 38.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              giftcodeOne,
              style: CustomTextStyles.labelLargeBluegray7000113.copyWith(
                color: appTheme.blueGray70001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

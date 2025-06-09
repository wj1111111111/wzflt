import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_phone_number.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/third_party_login_complete_info_bloc.dart';
import 'models/third_party_login_complete_info_model.dart';

class ThirdPartyLoginCompleteInfoScreen extends StatelessWidget {
  const ThirdPartyLoginCompleteInfoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ThirdPartyLoginCompleteInfoBloc>(
      create:
          (context) => ThirdPartyLoginCompleteInfoBloc(
            ThirdPartyLoginCompleteInfoState(
              thirdPartyLoginCompleteInfoModelObj:
                  ThirdPartyLoginCompleteInfoModel(),
            ),
          )..add(ThirdPartyLoginCompleteInfoInitialEvent()),
      child: ThirdPartyLoginCompleteInfoScreen(),
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
                child: BlocBuilder<
                  ThirdPartyLoginCompleteInfoBloc,
                  ThirdPartyLoginCompleteInfoState
                >(
                  builder: (context, state) {
                    return CustomPhoneNumber(
                      country:
                          state.selectedCountry ??
                          CountryPickerUtils.getCountryByPhoneCode('1'),
                      controller: state.phoneNumberController,
                      onTap: (Country value) {
                        context.read<ThirdPartyLoginCompleteInfoBloc>().add(
                          ChangeCountryEvent(value: value),
                        );
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 6.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "msg_please_enter_10".tr,
                    style: CustomTextStyles.labelLargeRed40001,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.only(left: 16.h, right: 12.h),
                child: BlocSelector<
                  ThirdPartyLoginCompleteInfoBloc,
                  ThirdPartyLoginCompleteInfoState,
                  TextEditingController?
                >(
                  selector: (state) => state.mobileNumberController,
                  builder: (context, mobileNumberController) {
                    return CustomTextFormField(
                      controller: mobileNumberController,
                      hintText: "msg_the_mobile_number".tr,
                      hintStyle: theme.textTheme.titleSmall!,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(10.h, 20.h, 6.h, 20.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgVideoCamera,
                          height: 14.h,
                          width: 14.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(maxHeight: 82.h),
                      maxLines: 4,
                      contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 28.h, 8.h),
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineLightGreen,
                      fillColor: appTheme.gray90033,
                    );
                  },
                ),
              ),
              SizedBox(height: 12.h),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: BlocSelector<
                  ThirdPartyLoginCompleteInfoBloc,
                  ThirdPartyLoginCompleteInfoState,
                  ThirdPartyLoginCompleteInfoModel?
                >(
                  selector:
                      (state) => state.thirdPartyLoginCompleteInfoModelObj,
                  builder: (context, thirdPartyLoginCompleteInfoModelObj) {
                    return CustomDropDown(
                      width: 194.h,
                      icon: Container(
                        margin: EdgeInsets.only(left: 4.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmarkBlueGray40020x20,
                          height: 20.h,
                          width: 20.h,
                          fit: BoxFit.contain,
                        ),
                      ),
                      iconSize: 20.h,
                      hintText: "msg_enter_referral".tr,
                      alignment: Alignment.centerLeft,
                      items:
                          thirdPartyLoginCompleteInfoModelObj
                              ?.dropdownItemList ??
                          [],
                      contentPadding: EdgeInsets.all(12.h),
                    );
                  },
                ),
              ),
              SizedBox(height: 58.h),
              CustomElevatedButton(
                height: 50.h,
                text: "lbl_sign_in2".tr,
                margin: EdgeInsets.symmetric(horizontal: 26.h),
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientGrayToBlueGrayTL24Decoration,
                buttonTextStyle: CustomTextStyles.titleMediumBluegray400,
              ),
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
}

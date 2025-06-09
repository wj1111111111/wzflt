import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/add_top_up_account_bank_account_bloc.dart';
import 'models/add_top_up_account_bank_account_model.dart';

class AddTopUpAccountBankAccountScreen extends StatelessWidget {
  const AddTopUpAccountBankAccountScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AddTopUpAccountBankAccountBloc>(
      create:
          (context) => AddTopUpAccountBankAccountBloc(
            AddTopUpAccountBankAccountState(
              addTopUpAccountBankAccountModelObj:
                  AddTopUpAccountBankAccountModel(),
            ),
          )..add(AddTopUpAccountBankAccountInitialEvent()),
      child: AddTopUpAccountBankAccountScreen(),
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
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 20.h),
          child: Column(
            children: [
              _buildRowuserone(context),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_e_wallet_type".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 12.h),
              _buildColumnpixcpf(context),
              SizedBox(height: 16.h),
              _buildOneone(context),
              SizedBox(height: 20.h),
              _buildPassword(context),
              SizedBox(height: 6.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "msg_please_set_up_your".tr,
                    style: CustomTextStyles.labelLargeRed40001,
                  ),
                ),
              ),
              Spacer(flex: 36),
              _buildSubmit(context),
              Spacer(flex: 63),
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
        text: "msg_add_bank_account2".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildRowuserone(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
      decoration: AppDecoration.outlineBluegray70001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserBlueGray40014x18,
            height: 14.h,
            width: 18.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 8.h, top: 2.h),
              child: Text(
                "msg_please_enter_the2".tr,
                style: CustomTextStyles.titleSmallBluegray400_1,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEditBlueGray400,
            height: 16.h,
            width: 16.h,
            margin: EdgeInsets.only(left: 16.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPixcnpj(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 40.h,
        text: "lbl_pix_cnpj".tr,
        buttonStyle: CustomButtonStyles.fillGrayTL8,
        buttonTextStyle: CustomTextStyles.titleSmallBluegray400_1,
      ),
    );
  }

  /// Section Widget
  Widget _buildPixemail(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 40.h,
        text: "lbl_pix_email".tr,
        buttonStyle: CustomButtonStyles.fillGrayTL8,
        buttonTextStyle: CustomTextStyles.titleSmallBluegray400_1,
      ),
    );
  }

  /// Section Widget
  Widget _buildPixmobile(BuildContext context) {
    return CustomElevatedButton(
      height: 40.h,
      width: 106.h,
      text: "lbl_pix_mobile".tr,
      buttonStyle: CustomButtonStyles.fillGrayTL8,
      buttonTextStyle: CustomTextStyles.titleSmallBluegray400_1,
    );
  }

  /// Section Widget
  Widget _buildColumnpixcpf(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.zero,
                    color: appTheme.gray90001,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: appTheme.lightGreenA700,
                        width: 1.6.h,
                      ),
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Container(
                      height: 40.h,
                      decoration: AppDecoration.outlineLightgreenA700.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Text(
                            "lbl_pix_cpf".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgSettingsLightGreenA70032x32,
                            height: 32.h,
                            width: 34.h,
                            alignment: Alignment.bottomRight,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                _buildPixcnpj(context),
                _buildPixemail(context),
              ],
            ),
          ),
          _buildPixmobile(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOneone(BuildContext context) {
    return BlocSelector<
      AddTopUpAccountBankAccountBloc,
      AddTopUpAccountBankAccountState,
      TextEditingController?
    >(
      selector: (state) => state.oneoneController,
      builder: (context, oneoneController) {
        return CustomTextFormField(
          controller: oneoneController,
          hintText: "msg_chave_do_pix_cpf".tr,
          prefix: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
            child: CustomImageView(
              imagePath: ImageConstant.img18,
              height: 16.h,
              width: 16.h,
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
  Widget _buildPassword(BuildContext context) {
    return BlocBuilder<
      AddTopUpAccountBankAccountBloc,
      AddTopUpAccountBankAccountState
    >(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.passwordController,
          hintText: "msg_set_transaction".tr,
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
              context.read<AddTopUpAccountBankAccountBloc>().add(
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
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
      height: 50.h,
      text: "lbl_submit".tr,
      margin: EdgeInsets.only(left: 10.h, right: 12.h),
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientLightGreenAToLightGreenTL22Decoration,
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }
}

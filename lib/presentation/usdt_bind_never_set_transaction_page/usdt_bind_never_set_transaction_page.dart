import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/usdt_bind_never_set_transaction_bloc.dart';
import 'models/usdt_bind_never_set_transaction_model.dart'; // ignore_for_file: must_be_immutable

class UsdtBindNeverSetTransactionPage extends StatefulWidget {
  const UsdtBindNeverSetTransactionPage({Key? key}) : super(key: key);

  @override
  UsdtBindNeverSetTransactionPageState createState() =>
      UsdtBindNeverSetTransactionPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<UsdtBindNeverSetTransactionBloc>(
      create:
          (context) => UsdtBindNeverSetTransactionBloc(
            UsdtBindNeverSetTransactionState(
              usdtBindNeverSetTransactionModelObj:
                  UsdtBindNeverSetTransactionModel(),
            ),
          )..add(UsdtBindNeverSetTransactionInitialEvent()),
      child: UsdtBindNeverSetTransactionPage(),
    );
  }
}

class UsdtBindNeverSetTransactionPageState
    extends State<UsdtBindNeverSetTransactionPage>
    with AutomaticKeepAliveClientMixin<UsdtBindNeverSetTransactionPage> {
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
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(right: 4.h),
                    child: Column(
                      children: [
                        _buildRowvideocamera(context),
                        SizedBox(height: 24.h),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup278BlueGray70001,
                          height: 184.h,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 42.h, right: 66.h),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 118.h),
                            child: Text(
                              "lbl_crypto_wallet2".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        _buildStacklineseven(context),
                        SizedBox(height: 50.h),
                        _buildRowprice(context),
                        SizedBox(height: 6.h),
                        _buildOnefour(context),
                        SizedBox(height: 6.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_withdrawal_fee2".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  TextSpan(
                                    text: "lbl_0_00".tr,
                                    style:
                                        CustomTextStyles
                                            .labelLargeLightgreenA700_1,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 222.h,
                            margin: EdgeInsets.only(left: 6.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_payment_quantity".tr,
                                    style: CustomTextStyles.bodySmallRed40001,
                                  ),
                                  TextSpan(
                                    text: "lbl_2000".tr,
                                    style:
                                        CustomTextStyles
                                            .bodyLargeLightgreenA700,
                                  ),
                                  TextSpan(text: " "),
                                  TextSpan(
                                    text: "lbl_usdt".tr,
                                    style: CustomTextStyles.bodySmallRed40001,
                                  ),
                                  TextSpan(
                                    text: "  \n",
                                    style: CustomTextStyles.bodySmallRed4000110,
                                  ),
                                  TextSpan(
                                    text: "lbl_exchange_rate".tr,
                                    style: CustomTextStyles.bodyMediumRed40001,
                                  ),
                                  TextSpan(
                                    text: " ",
                                    style: CustomTextStyles.bodySmallRed4000110,
                                  ),
                                  TextSpan(
                                    text: "lbl_1_usdt_58".tr,
                                    style: CustomTextStyles.bodyLargeRed40001,
                                  ),
                                  TextSpan(
                                    text: "msg_the_rate_is_for".tr,
                                    style: CustomTextStyles.bodySmallRed40001,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        _buildColumnconfirmpa(context),
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
  Widget _buildRowvideocamera(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.all(8.h),
      decoration: AppDecoration.fillBluegray90004.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVideoCameraLightGreenA700,
            height: 16.h,
            width: 16.h,
          ),
          SizedBox(
            width: 302.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_your_mobile_number".tr,
                    style: CustomTextStyles.labelLargeMedium_1,
                  ),
                  TextSpan(
                    text: "lbl_verify_now2".tr,
                    style: CustomTextStyles.labelLargeAmberA400Medium.copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStacklineseven(BuildContext context) {
    return SizedBox(
      height: 238.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              spacing: 22,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: double.maxFinite, child: Divider(indent: 4.h)),
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "msg_withdrawaltime_gmt_8".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 8.h),
                        child: Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_single_withdrawal2".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                  TextSpan(
                                    text: "lbl_200_3000".tr,
                                    style:
                                        CustomTextStyles
                                            .labelLargeLightgreenA700_1,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img1BlueGray40016x16,
                              height: 16.h,
                              width: 16.h,
                              margin: EdgeInsets.only(left: 8.h),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_withdrawal_fee2".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                              TextSpan(
                                text: "lbl_03".tr,
                                style:
                                    CustomTextStyles.labelLargeLightgreenA700_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_number_of_withdrawals2".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                              TextSpan(
                                text: "lbl_limited".tr,
                                style:
                                    CustomTextStyles.labelLargeLightgreenA700_1,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 10.h,
                        ),
                        decoration: AppDecoration.outline.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder10,
                        ),
                        child: Column(
                          spacing: 6,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_total_redemption".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  TextSpan(
                                    text: "lbl_04".tr,
                                    style:
                                        CustomTextStyles.titleSmallAmberA400_1,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Container(
                              height: 32.h,
                              width: double.maxFinite,
                              margin: EdgeInsets.only(right: 28.h),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Text(
                                    "msg_complete_the_remaining".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.labelLarge!.copyWith(
                                      height: 1.33,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 10.h),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_bet_now".tr,
                                              style: CustomTextStyles
                                                  .labelLargeBlue400
                                                  .copyWith(
                                                    decoration:
                                                        TextDecoration
                                                            .underline,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: "lbl20".tr,
                                              style:
                                                  CustomTextStyles
                                                      .labelLargeBlue400_1,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 2.h),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 50.h,
              width: 52.h,
              margin: EdgeInsets.only(right: 10.h),
              decoration: AppDecoration.fs23.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder24,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup665,
                    height: 30.h,
                    width: 32.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowprice(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_withdrawal_available".tr,
                  style: theme.textTheme.titleMedium,
                ),
                TextSpan(
                  text: "lbl_04".tr,
                  style: CustomTextStyles.titleMediumAmberA400_2,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          CustomImageView(
            imagePath: ImageConstant.img1BlueGray40016x16,
            height: 16.h,
            width: 16.h,
            margin: EdgeInsets.only(left: 8.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOnefour(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
      decoration: AppDecoration.outlineBluegray70006.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 18.h,
            width: 20.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse25,
                  height: 18.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(9.0.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img16x8,
                  height: 16.h,
                  width: 10.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text("lbl_2000".tr, style: theme.textTheme.titleSmall),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgEditBlueGray400,
            height: 16.h,
            width: 18.h,
            margin: EdgeInsets.only(right: 6.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnconfirmpa(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      child: Column(
        spacing: 28,
        children: [
          BlocBuilder<
            UsdtBindNeverSetTransactionBloc,
            UsdtBindNeverSetTransactionState
          >(
            builder: (context, state) {
              return CustomTextFormField(
                controller: state.confirmpasswordController,
                hintText: "msg_confirm_password".tr,
                prefix: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 14.h,
                  ),
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
                    context.read<UsdtBindNeverSetTransactionBloc>().add(
                      ChangePasswordVisibilityEvent(
                        value: !state.isShowPassword,
                      ),
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
                obscureText: state.isShowPassword,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 14.h,
                ),
              );
            },
          ),
          CustomElevatedButton(
            height: 50.h,
            text: "lbl_submit".tr,
            margin: EdgeInsets.only(left: 12.h, right: 10.h),
            buttonStyle: CustomButtonStyles.none,
            decoration:
                CustomButtonStyles.gradientGrayToBlueGrayTL241Decoration,
            buttonTextStyle: CustomTextStyles.titleMediumBluegray400,
          ),
          BlocSelector<
            UsdtBindNeverSetTransactionBloc,
            UsdtBindNeverSetTransactionState,
            TextEditingController?
          >(
            selector: (state) => state.oneoneController,
            builder: (context, oneoneController) {
              return CustomTextFormField(
                controller: oneoneController,
                hintText: "msg_withdrawal_record2".tr,
                hintStyle: CustomTextStyles.titleSmallLightgreenA700,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(24.h, 12.h, 10.h, 12.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.img1Onprimary14x14,
                    height: 14.h,
                    width: 14.h,
                    fit: BoxFit.contain,
                  ),
                ),
                suffixConstraints: BoxConstraints(maxHeight: 44.h),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 12.h,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGray,
                fillColor: appTheme.gray90001,
              );
            },
          ),
        ],
      ),
    );
  }
}

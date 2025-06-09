import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/wallet_withdraw_wager_requirement_bloc.dart';
import 'models/slidervector_item_model.dart';
import 'models/wallet_withdraw_wager_requirement_model.dart';
import 'widgets/slidervector_item_widget.dart';

class WalletWithdrawWagerRequirementScreen extends StatelessWidget {
  const WalletWithdrawWagerRequirementScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WalletWithdrawWagerRequirementBloc>(
      create:
          (context) => WalletWithdrawWagerRequirementBloc(
            WalletWithdrawWagerRequirementState(
              walletWithdrawWagerRequirementModelObj:
                  WalletWithdrawWagerRequirementModel(),
            ),
          )..add(WalletWithdrawWagerRequirementInitialEvent()),
      child: WalletWithdrawWagerRequirementScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(left: 10.h, top: 16.h, right: 10.h),
              child: Column(
                children: [
                  _buildColumnvector(context),
                  SizedBox(height: 6.h),
                  _buildColumnwithdrawa(context),
                  SizedBox(height: 24.h),
                  _buildRowonefive(context),
                  SizedBox(height: 6.h),
                  _buildRowninehundredn(context),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.h),
                    child: BlocSelector<
                      WalletWithdrawWagerRequirementBloc,
                      WalletWithdrawWagerRequirementState,
                      TextEditingController?
                    >(
                      selector: (state) => state.passwordController,
                      builder: (context, passwordController) {
                        return CustomTextFormField(
                          controller: passwordController,
                          hintText: "msg_transaction_password".tr,
                          obscureText: true,
                          contentPadding: EdgeInsets.fromLTRB(
                            10.h,
                            8.h,
                            10.h,
                            18.h,
                          ),
                          borderDecoration:
                              TextFormFieldStyleHelper.outlineBlueGrayTL6,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 36.h),
                  CustomElevatedButton(
                    height: 50.h,
                    text: "lbl_submit".tr,
                    margin: EdgeInsets.only(left: 16.h, right: 14.h),
                    buttonStyle: CustomButtonStyles.none,
                    decoration: CustomButtonStyles.gradientRedToRedDecoration,
                    buttonTextStyle: theme.textTheme.titleMedium!,
                  ),
                  SizedBox(height: 24.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.h),
                    child: BlocSelector<
                      WalletWithdrawWagerRequirementBloc,
                      WalletWithdrawWagerRequirementState,
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
                  ),
                  SizedBox(height: 18.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 21.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_wallet".tr,
        margin: EdgeInsets.only(left: 9.h),
      ),
      actions: [
        AppbarTrailingImage(imagePath: ImageConstant.imgLock),
        AppbarSubtitleThree(
          text: "lbl_1980_00".tr,
          margin: EdgeInsets.only(left: 8.h),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.img1,
          height: 14.h,
          width: 16.h,
          margin: EdgeInsets.only(left: 11.h, right: 20.h),
        ),
      ],
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildColumnvector(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        spacing: 8,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: BlocBuilder<
              WalletWithdrawWagerRequirementBloc,
              WalletWithdrawWagerRequirementState
            >(
              builder: (context, state) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 148.h,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      context.read<WalletWithdrawWagerRequirementBloc>().add(
                        ChangeSliderIndexEvent(value: index),
                      );
                    },
                  ),
                  itemCount:
                      state
                          .walletWithdrawWagerRequirementModelObj
                          ?.slidervectorItemList
                          .length ??
                      0,
                  itemBuilder: (context, index, realIndex) {
                    SlidervectorItemModel model =
                        state
                            .walletWithdrawWagerRequirementModelObj
                            ?.slidervectorItemList[index] ??
                        SlidervectorItemModel();
                    return SlidervectorItemWidget(model);
                  },
                );
              },
            ),
          ),
          BlocBuilder<
            WalletWithdrawWagerRequirementBloc,
            WalletWithdrawWagerRequirementState
          >(
            builder: (context, state) {
              return SizedBox(
                height: 5.h,
                child: AnimatedSmoothIndicator(
                  activeIndex: state.sliderIndex,
                  count:
                      state
                          .walletWithdrawWagerRequirementModelObj
                          ?.slidervectorItemList
                          .length ??
                      0,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 4,
                    activeDotColor: appTheme.amber30002,
                    dotColor: appTheme.blueGray70001.withValues(alpha: 0.53),
                    dotHeight: 5.h,
                    dotWidth: 5.h,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnwithdrawa(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 8.h, right: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "msg_withdrawaltime_gmt_82".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: CustomIconButton(
                    height: 50.h,
                    width: 50.h,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillLightGreenATL24,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCloseGray90014,
                    ),
                  ),
                ),
              ],
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
                        text: "msg_single_withdrawal4".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                      TextSpan(
                        text: "lbl_10_999".tr,
                        style: CustomTextStyles.labelLargeLightgreenA700_1,
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
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 10.h),
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
                        text: "lbl_135".tr,
                        style: CustomTextStyles.titleSmallAmberA400_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Container(
                  height: 32.h,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(right: 26.h),
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
                                  style: CustomTextStyles.labelLargeBlue400
                                      .copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                                TextSpan(
                                  text: "lbl20".tr,
                                  style: CustomTextStyles.labelLargeBlue400_1,
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
    );
  }

  /// Section Widget
  Widget _buildRowonefive(BuildContext context) {
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
  Widget _buildRowninehundredn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.h),
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
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 4.h),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text("lbl_999".tr, style: theme.textTheme.titleSmall),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgEdit,
            height: 14.h,
            width: 18.h,
            margin: EdgeInsets.only(right: 4.h),
          ),
        ],
      ),
    );
  }
}

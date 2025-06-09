import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/deposit_info_3rd_party_success_one_bloc.dart';
import 'models/deposit_info_3rd_party_success_one_model.dart';
import 'models/listdepositmeth_item_model.dart';
import 'widgets/listdepositmeth_item_widget.dart';

class DepositInfo3rdPartySuccessOneScreen extends StatelessWidget {
  const DepositInfo3rdPartySuccessOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DepositInfo3rdPartySuccessOneBloc>(
      create:
          (context) => DepositInfo3rdPartySuccessOneBloc(
            DepositInfo3rdPartySuccessOneState(
              depositInfo3rdPartySuccessOneModelObj:
                  DepositInfo3rdPartySuccessOneModel(),
            ),
          )..add(DepositInfo3rdPartySuccessOneInitialEvent()),
      child: DepositInfo3rdPartySuccessOneScreen(),
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
              padding: EdgeInsets.only(left: 14.h, top: 12.h, right: 14.h),
              child: Column(
                children: [
                  _buildColumnoneone(context),
                  SizedBox(height: 12.h),
                  _buildColumndepositme(context),
                  SizedBox(height: 30.h),
                  _buildRowproblem(context),
                  SizedBox(height: 18.h),
                  Text(
                    "msg_once_the_funds_have".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge!.copyWith(height: 1.17),
                  ),
                  SizedBox(height: 8.h),
                  _buildRowtenone(context),
                  SizedBox(height: 12.h),
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
      height: 48.h,
      leadingWidth: 21.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_deposit_record".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildColumnoneone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 36.h),
            decoration: AppDecoration.outline1.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              spacing: 6,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomIconButton(
                  height: 54.h,
                  width: 54.h,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillTeal,
                  child: CustomImageView(
                    imagePath: ImageConstant.img1Onprimary56x56,
                  ),
                ),
                SizedBox(
                  width: 148.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 18.h,
                        width: 18.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse25,
                              height: 18.h,
                              width: double.maxFinite,
                              radius: BorderRadius.circular(9.0.h),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 4.h),
                                child: Text(
                                  "lbl2".tr,
                                  style: CustomTextStyles.bodyMediumOnPrimary13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_150_00".tr,
                          style:
                              CustomTextStyles
                                  .headlineLargeNotoSansLightgreenA700,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUpBlueGray70001,
                        height: 16.h,
                        width: 16.h,
                        margin: EdgeInsets.only(left: 8.h),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumndepositme(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 18.h),
            decoration: AppDecoration.outline1.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: BlocSelector<
                    DepositInfo3rdPartySuccessOneBloc,
                    DepositInfo3rdPartySuccessOneState,
                    DepositInfo3rdPartySuccessOneModel?
                  >(
                    selector:
                        (state) => state.depositInfo3rdPartySuccessOneModelObj,
                    builder: (context, depositInfo3rdPartySuccessOneModelObj) {
                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 12.h);
                        },
                        itemCount:
                            depositInfo3rdPartySuccessOneModelObj
                                ?.listdepositmethItemList
                                .length ??
                            0,
                        itemBuilder: (context, index) {
                          ListdepositmethItemModel model =
                              depositInfo3rdPartySuccessOneModelObj
                                  ?.listdepositmethItemList[index] ??
                              ListdepositmethItemModel();
                          return ListdepositmethItemWidget(model);
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "msg_upload_certificate".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 28.h),
                  decoration: AppDecoration.fs2bg.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCamera,
                        height: 34.h,
                        width: 44.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "msg_validity_period".tr,
                        style: CustomTextStyles.titleSmallBluegray400_1,
                      ),
                      Text(
                        "lbl_00_29_33".tr,
                        style: CustomTextStyles.labelLargeOnPrimary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowproblem(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: CustomElevatedButton(
              height: 40.h,
              text: "msg_problem_encountered".tr,
              buttonStyle: CustomButtonStyles.fillGrayTL8,
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              height: 40.h,
              text: "lbl_paid".tr,
              buttonStyle: CustomButtonStyles.none,
              decoration:
                  CustomButtonStyles.gradientLightGreenAToLightGreenDecoration,
              buttonTextStyle: theme.textTheme.titleMedium!,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowtenone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img10LightGreen800,
            height: 14.h,
            width: 14.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg_customer_service".tr,
              style: CustomTextStyles.titleMediumLightgreen800,
            ),
          ),
        ],
      ),
    );
  }
}

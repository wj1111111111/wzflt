import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_rating_bar.dart';
import 'bloc/top_up_promo_popup_bloc.dart';
import 'models/list102x1000_item_model.dart';
import 'models/listcollect_one_item_model.dart';
import 'models/listdeposit_item_model.dart';
import 'models/top_up_promo_popup_initial_model.dart';
import 'widgets/list102x1000_item_widget.dart';
import 'widgets/listcollect_one_item_widget.dart';
import 'widgets/listdeposit_item_widget.dart';

class TopUpPromoPopupInitialPage extends StatefulWidget {
  const TopUpPromoPopupInitialPage({Key? key}) : super(key: key);

  @override
  TopUpPromoPopupInitialPageState createState() =>
      TopUpPromoPopupInitialPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<TopUpPromoPopupBloc>(
      create:
          (context) => TopUpPromoPopupBloc(
            TopUpPromoPopupState(
              topUpPromoPopupInitialModelObj: TopUpPromoPopupInitialModel(),
            ),
          )..add(TopUpPromoPopupInitialEvent()),
      child: TopUpPromoPopupInitialPage(),
    );
  }
}

class TopUpPromoPopupInitialPageState
    extends State<TopUpPromoPopupInitialPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 1512.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: SizeUtils.height,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    _buildColumn3b4bde395(context),
                    _buildColumnspacer(context),
                    _buildList102x1000(context),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 88.h,
                        width: 90.h,
                        margin: EdgeInsets.only(right: 16.h, bottom: 54.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img441000,
                              height: 88.h,
                              width: 88.h,
                              radius: BorderRadius.circular(4.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgTelevisionAmberA40003,
                              height: 18.h,
                              width: 36.h,
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 88.h,
                        width: 90.h,
                        margin: EdgeInsets.only(right: 112.h, bottom: 54.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img431000,
                              height: 88.h,
                              width: 88.h,
                              radius: BorderRadius.circular(4.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgTelevisionAmberA40003,
                              height: 18.h,
                              width: 36.h,
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 88.h,
                        width: 90.h,
                        margin: EdgeInsets.only(left: 76.h, bottom: 54.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img277771000,
                              height: 88.h,
                              width: 88.h,
                              radius: BorderRadius.circular(4.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgTelevisionAmberA40003,
                              height: 18.h,
                              width: 36.h,
                              alignment: Alignment.topLeft,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 52.h,
                        margin: EdgeInsets.only(left: 96.h, bottom: 156.h),
                        decoration: AppDecoration.outlineBlack900,
                        child: Text(
                          "lbl_roma_x".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.labelLargeNotoSans,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [_buildRowspacertwo(context)],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 90.h,
                        margin: EdgeInsets.only(right: 112.h, bottom: 156.h),
                        decoration: AppDecoration.outlineBlack900,
                        child: Text(
                          "lbl_diamond_party".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.labelLargeNotoSans,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 90.h,
                        margin: EdgeInsets.only(right: 16.h, bottom: 156.h),
                        decoration: AppDecoration.outlineBlack900,
                        child: Text(
                          "lbl_lucky_coming".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.labelLargeNotoSans,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 58.h),
                        padding: EdgeInsets.symmetric(horizontal: 14.h),
                        decoration: AppDecoration.fs15.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL81,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 4.h),
                            CustomImageView(
                              imagePath: ImageConstant.img236x36,
                              height: 36.h,
                              width: 36.h,
                            ),
                            Text(
                              "lbl_table".tr,
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 108.h,
                        width: 126.h,
                        margin: EdgeInsets.only(right: 6.h, bottom: 62.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img9850ea1719a3a4f,
                              height: 108.h,
                              width: double.maxFinite,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 18.h),
                                child: Text(
                                  "lbl_activity".tr,
                                  style: CustomTextStyles.titleMediumBlack,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                        child: Container(
                          width: double.maxFinite,
                          decoration: AppDecoration.outline6,
                          child: Column(
                            spacing: 12,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              _buildStack877aca258c(context),
                              Container(
                                height: 612.h,
                                width: double.maxFinite,
                                margin: EdgeInsets.symmetric(horizontal: 16.h),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCloseGray90001,
                                      height: 32.h,
                                      width: 34.h,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(right: 10.h),
                                    ),
                                    SizedBox(
                                      width: double.maxFinite,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          _buildStackfirst5time(context),
                                          SizedBox(height: 2.h),
                                          _buildListdeposit(context),
                                          SizedBox(height: 20.h),
                                          _buildDepositnow(context),
                                          SizedBox(height: 8.h),
                                          Text(
                                            "msg_note_select_your".tr,
                                            style: theme.textTheme.titleSmall,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              _buildViewmore(context),
                              SizedBox(height: 80.h),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(right: 16.h),
              child: Column(
                spacing: 4,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildRowsevenone(context),
                  SizedBox(
                    height: 618.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: double.maxFinite,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [_buildRowspacerthree(context)],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 14.h,
                              vertical: 4.h,
                            ),
                            decoration: AppDecoration.fs15.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL81,
                            ),
                            child: Column(
                              spacing: 4,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 4.h),
                                CustomImageView(
                                  imagePath: ImageConstant.img636x36,
                                  height: 36.h,
                                  width: 36.h,
                                ),
                                Text(
                                  "lbl_sport".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 14.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildRowspacerfour(context),
                              SizedBox(height: 10.h),
                              _buildRowspacerfive(context),
                              SizedBox(height: 14.h),
                              _buildRowspacersix(context),
                              SizedBox(height: 10.h),
                              _buildRowspacerseven(context),
                              SizedBox(height: 32.h),
                              CustomImageView(
                                imagePath: ImageConstant.imgLogoWj93128x78,
                                height: 28.h,
                                width: 80.h,
                              ),
                              SizedBox(height: 12.h),
                              _buildRowlogooneone(context),
                              SizedBox(height: 14.h),
                              _buildRowlogoseven(context),
                              SizedBox(height: 14.h),
                              Container(
                                height: 12.h,
                                width: double.maxFinite,
                                margin: EdgeInsets.symmetric(horizontal: 62.h),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgSexybcrt,
                                      height: 12.h,
                                      width: 64.h,
                                      alignment: Alignment.centerRight,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgFc,
                                      height: 12.h,
                                      width: 64.h,
                                      alignment: Alignment.centerLeft,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgLogo212x62,
                                      height: 12.h,
                                      width: 64.h,
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.only(left: 30.h),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPg,
                                      height: 12.h,
                                      width: 64.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPp2,
                                      height: 12.h,
                                      width: 64.h,
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(right: 46.h),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "msg_this_site_offers".tr,
                                textAlign: TextAlign.center,
                                style:
                                    CustomTextStyles.labelLargeNotoSansMedium,
                              ),
                              SizedBox(height: 8.h),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_emall".tr,
                                      style:
                                          CustomTextStyles
                                              .bodySmallMicrosoftYaHei_1,
                                    ),
                                    TextSpan(text: " "),
                                    TextSpan(
                                      text: "lbl_wj_gmail_com".tr,
                                      style:
                                          CustomTextStyles
                                              .bodySmallMicrosoftYaHeiLightgreenA700,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 24.h),
                              Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.symmetric(horizontal: 38.h),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 28.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgMobile,
                                              height: 26.h,
                                              width: 28.h,
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: SizedBox(
                                                width: double.maxFinite,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .imgPlusRedA400,
                                                      height: 10.h,
                                                      width: 12.h,
                                                      alignment:
                                                          Alignment.centerRight,
                                                    ),
                                                    Text(
                                                      "lbl_183".tr,
                                                      style:
                                                          CustomTextStyles
                                                              .titleSmallRedA400,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgFacebookIndigo60001,
                                      height: 26.h,
                                      width: 28.h,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgTrashLightBlue60001,
                                      height: 26.h,
                                      width: 28.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgWarning,
                                      height: 26.h,
                                      width: 28.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgInfo,
                                      height: 26.h,
                                      width: 28.h,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgPlayGreenA70002,
                                      height: 26.h,
                                      width: 28.h,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgGroup12149,
                                      height: 26.h,
                                      width: 28.h,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 24.h),
                              Text(
                                "msg_2022_wj_gmail_com".tr,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodySmallMicrosoftYaHei,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn3b4bde395(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(right: 14.h, bottom: 126.h),
        child: Column(
          spacing: 12,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(left: 14.h),
              padding: EdgeInsets.all(6.h),
              decoration: AppDecoration.fs4bg.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder14,
              ),
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img3b4bde395738f0c,
                    height: 18.h,
                    width: 26.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl6".tr,
                            style: CustomTextStyles.bodyMediumLightgreenA700_1,
                          ),
                          TextSpan(
                            text: "msg_the_recharge_of".tr,
                            style: CustomTextStyles.titleSmallLightgreenA700_1,
                          ),
                          TextSpan(
                            text: "lbl_e".tr,
                            style: CustomTextStyles.bodyMediumLightgreenA700_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp,
                    height: 16.h,
                    width: 18.h,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_the_recharge".tr,
                        style: CustomTextStyles.titleSmallLightgreenA700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 338.h,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      width: 2.h,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 284.h,
                              decoration: AppDecoration.gradientGreenAToLimeA
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 8.h,
                                          bottom: 6.h,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "msg_generous_bonuses".tr,
                                              style:
                                                  CustomTextStyles
                                                      .labelLargeGreen90020,
                                            ),
                                            SizedBox(
                                              width: double.maxFinite,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "msg_jbet88_promotion".tr,
                                                    style:
                                                        CustomTextStyles
                                                            .titleSmallGreen90021,
                                                  ),
                                                  Opacity(
                                                    opacity: 0.5,
                                                    child: CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .img116x16,
                                                      height: 16.h,
                                                      width: 18.h,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 56.h,
                                    width: 96.h,
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Opacity(
                                          opacity: 0.4,
                                          child: CustomImageView(
                                            imagePath: ImageConstant.img214x12,
                                            height: 14.h,
                                            width: 14.h,
                                            alignment: Alignment.topRight,
                                            margin: EdgeInsets.only(
                                              top: 2.h,
                                              right: 14.h,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.img63ae502f31c03ca,
                                          height: 56.h,
                                          width: double.maxFinite,
                                          alignment: Alignment.centerLeft,
                                        ),
                                        Opacity(
                                          opacity: 0.6,
                                          child: CustomImageView(
                                            imagePath: ImageConstant.img316x16,
                                            height: 16.h,
                                            width: 18.h,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BlocSelector<
                    TopUpPromoPopupBloc,
                    TopUpPromoPopupState,
                    TopUpPromoPopupInitialModel?
                  >(
                    selector: (state) => state.topUpPromoPopupInitialModelObj,
                    builder: (context, topUpPromoPopupInitialModelObj) {
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount:
                            topUpPromoPopupInitialModelObj
                                ?.listcollectOneItemList
                                .length ??
                            0,
                        itemBuilder: (context, index) {
                          ListcollectOneItemModel model =
                              topUpPromoPopupInitialModelObj
                                  ?.listcollectOneItemList[index] ??
                              ListcollectOneItemModel();
                          return ListcollectOneItemWidget(model);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWithdrawal(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_withdrawal".tr,
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientAmberToAmberTL2Decoration,
      ),
    );
  }

  /// Section Widget
  Widget _buildDeposittwo(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "lbl_deposit".tr,
        leftIcon: Container(
          margin: EdgeInsets.only(right: 6.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgShare,
            height: 10.h,
            width: 16.h,
            fit: BoxFit.contain,
          ),
        ),
        buttonStyle: CustomButtonStyles.none,
        decoration:
            CustomButtonStyles.gradientLightGreenAToLightGreenTL2Decoration,
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnspacer(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 14.h, top: 76.h, right: 14.h),
        child: Column(
          spacing: 6,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLogoWj93128x78,
                    height: 28.h,
                    width: 78.h,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgLock,
                            height: 16.h,
                            width: 16.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "lbl_1980_00".tr,
                              style: CustomTextStyles.titleMediumAmberA400_1,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.img1,
                            height: 14.h,
                            width: 18.h,
                            margin: EdgeInsets.only(left: 20.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                children: [
                  _buildWithdrawal(context),
                  _buildDeposittwo(context),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.img130x344,
              height: 130.h,
              width: double.maxFinite,
              radius: BorderRadius.circular(8.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildList102x1000(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: EdgeInsets.only(right: 16.h, bottom: 182.h),
        child: BlocSelector<
          TopUpPromoPopupBloc,
          TopUpPromoPopupState,
          TopUpPromoPopupInitialModel?
        >(
          selector: (state) => state.topUpPromoPopupInitialModelObj,
          builder: (context, topUpPromoPopupInitialModelObj) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 8.h,
                children: List.generate(
                  topUpPromoPopupInitialModelObj?.list102x1000ItemList.length ??
                      0,
                  (index) {
                    List102x1000ItemModel model =
                        topUpPromoPopupInitialModelObj
                            ?.list102x1000ItemList[index] ??
                        List102x1000ItemModel();
                    return List102x1000ItemWidget(model);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowspacertwo(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 28.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Container(
                width: 52.h,
                decoration: AppDecoration.outlineBlack900,
                child: Text(
                  "lbl_roma_x".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeNotoSans,
                ),
              ),
              Container(
                width: 90.h,
                margin: EdgeInsets.only(left: 28.h),
                decoration: AppDecoration.outlineBlack900,
                child: Text(
                  "lbl_diamond_party".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeNotoSans,
                ),
              ),
              Container(
                width: 90.h,
                margin: EdgeInsets.only(left: 8.h),
                decoration: AppDecoration.outlineBlack900,
                child: Text(
                  "lbl_lucky_coming".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeNotoSans,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDownload(BuildContext context) {
    return CustomElevatedButton(
      height: 32.h,
      width: 96.h,
      text: "lbl_download".tr,
      margin: EdgeInsets.only(top: 18.h),
      buttonTextStyle: CustomTextStyles.titleSmallNotoSansLightgreen800,
      alignment: Alignment.bottomCenter,
    );
  }

  /// Section Widget
  Widget _buildStack877aca258c(BuildContext context) {
    return Container(
      height: 68.h,
      width: double.maxFinite,
      decoration: AppDecoration.gradientLightGreenAToLightgreen8001,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.img877aca258c7f461,
              height: 68.h,
              width: double.maxFinite,
            ),
          ),
          Container(
            height: 68.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                SizedBox(
                  height: 68.h,
                  width: 280.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(
                        opacity: 0.4,
                        child: CustomImageView(
                          imagePath: ImageConstant.img877aca258c7f46168x278,
                          height: 68.h,
                          width: double.maxFinite,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: double.maxFinite,
                            margin: EdgeInsets.symmetric(horizontal: 12.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img112,
                                  height: 50.h,
                                  width: 50.h,
                                  radius: BorderRadius.circular(8.h),
                                ),
                                Expanded(
                                  child: Column(
                                    spacing: 2,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 128.h,
                                        child: Text(
                                          "msg_many_benefits_for".tr
                                              .toUpperCase(),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .labelLargeOnPrimary_6
                                              .copyWith(height: 1.17),
                                        ),
                                      ),
                                      CustomRatingBar(initialRating: 5),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildDownload(context),
                                Container(
                                  height: 26.h,
                                  width: 26.h,
                                  margin: EdgeInsets.only(left: 4.h),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          height: 14.h,
                                          width: 14.h,
                                          margin: EdgeInsets.only(
                                            top: 4.h,
                                            right: 2.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: appTheme.lightGreen800,
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgCloseLightGreen400,
                                        height: 26.h,
                                        width: 26.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackfirst5time(BuildContext context) {
    return Container(
      height: 148.h,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage360,
            height: 78.h,
            width: 138.h,
            alignment: Alignment.topCenter,
          ),
          Container(
            height: 70.h,
            margin: EdgeInsets.only(left: 2.h, bottom: 30.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage2370x306,
                  height: 70.h,
                  width: double.maxFinite,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 38.h,
                    width: 162.h,
                    margin: EdgeInsets.only(top: 6.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          "lbl_deposit_bonus".tr,
                          style: CustomTextStyles.headlineMediumGray90041,
                        ),
                        Text(
                          "lbl_deposit_bonus".tr,
                          style: theme.textTheme.headlineMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "msg_first_5_time_deposit".tr,
                    style: CustomTextStyles.titleSmallYellow20008,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img0Web1,
                    height: 22.h,
                    width: 22.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(left: 8.h, top: 2.h),
                  ),
                  Text(
                    "lbl_8_8882".tr,
                    style: CustomTextStyles.headlineSmallYellow10006,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListdeposit(BuildContext context) {
    return BlocSelector<
      TopUpPromoPopupBloc,
      TopUpPromoPopupState,
      TopUpPromoPopupInitialModel?
    >(
      selector: (state) => state.topUpPromoPopupInitialModelObj,
      builder: (context, topUpPromoPopupInitialModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 6.h);
          },
          itemCount:
              topUpPromoPopupInitialModelObj?.listdepositItemList.length ?? 0,
          itemBuilder: (context, index) {
            ListdepositItemModel model =
                topUpPromoPopupInitialModelObj?.listdepositItemList[index] ??
                ListdepositItemModel();
            return ListdepositItemWidget(model);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDepositnow(BuildContext context) {
    return CustomElevatedButton(
      height: 40.h,
      text: "lbl_deposit_now".tr,
      rightIcon: Container(
        margin: EdgeInsets.only(left: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFrameOnprimary20x20,
          height: 20.h,
          width: 20.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration:
          CustomButtonStyles.gradientLightGreenAToLightGreenTL20Decoration,
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }

  /// Section Widget
  Widget _buildViewmore(BuildContext context) {
    return CustomElevatedButton(
      height: 26.h,
      width: 86.h,
      text: "lbl_view_more2".tr,
      margin: EdgeInsets.only(right: 16.h),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGrayToBlueGrayTL12Decoration,
      buttonTextStyle: CustomTextStyles.bodySmallLightgreenA700_2,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildRowsevenone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 66.h,
              child: Column(
                spacing: 4,
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 6.h),
                    decoration: AppDecoration.fs15.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL81,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img736x36,
                          height: 36.h,
                          width: 36.h,
                        ),
                        Text("lbl_fish2".tr, style: theme.textTheme.labelLarge),
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    decoration: AppDecoration.fs15.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL81,
                    ),
                    child: Column(
                      spacing: 4,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img336x36,
                          height: 36.h,
                          width: 36.h,
                        ),
                        Text("lbl_egame".tr, style: theme.textTheme.labelLarge),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 88.h,
              margin: EdgeInsets.only(bottom: 4.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img471000,
                    height: 88.h,
                    width: 88.h,
                    radius: BorderRadius.circular(4.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame1003,
                    height: 18.h,
                    width: 36.h,
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 88.h,
              margin: EdgeInsets.only(bottom: 4.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img461000,
                    height: 88.h,
                    width: 88.h,
                    radius: BorderRadius.circular(4.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame1003,
                    height: 18.h,
                    width: 36.h,
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 88.h,
              margin: EdgeInsets.only(bottom: 4.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgJdbSlot092,
                    height: 88.h,
                    width: 88.h,
                    radius: BorderRadius.circular(4.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame1003,
                    height: 18.h,
                    width: 36.h,
                    alignment: Alignment.topLeft,
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
  Widget _buildRowspacerthree(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Spacer(),
            Container(
              width: 52.h,
              decoration: AppDecoration.outlineBlack900,
              child: Text(
                "lbl_roma_x".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.labelLargeNotoSans,
              ),
            ),
            Container(
              width: 90.h,
              margin: EdgeInsets.only(left: 28.h),
              decoration: AppDecoration.outlineBlack900,
              child: Text(
                "lbl_diamond_party".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.labelLargeNotoSans,
              ),
            ),
            Container(
              width: 90.h,
              margin: EdgeInsets.only(left: 8.h),
              decoration: AppDecoration.outlineBlack900,
              child: Text(
                "lbl_lucky_coming".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.labelLargeNotoSans,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowspacerfour(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Spacer(),
          SizedBox(
            height: 88.h,
            width: 90.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img771000,
                  height: 88.h,
                  width: 88.h,
                  radius: BorderRadius.circular(2.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame1003,
                  height: 18.h,
                  width: 36.h,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          Container(
            height: 88.h,
            width: 90.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img401000,
                  height: 88.h,
                  width: 88.h,
                  radius: BorderRadius.circular(4.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame1003,
                  height: 18.h,
                  width: 36.h,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          Container(
            height: 88.h,
            width: 90.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgJdbSlot105,
                  height: 88.h,
                  width: 88.h,
                  radius: BorderRadius.circular(4.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame1003,
                  height: 18.h,
                  width: 36.h,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowspacerfive(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Spacer(),
          Container(
            width: 52.h,
            decoration: AppDecoration.outlineBlack900,
            child: Text(
              "lbl_roma_x".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeNotoSans,
            ),
          ),
          Container(
            width: 90.h,
            margin: EdgeInsets.only(left: 28.h),
            decoration: AppDecoration.outlineBlack900,
            child: Text(
              "lbl_diamond_party".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeNotoSans,
            ),
          ),
          Container(
            width: 90.h,
            margin: EdgeInsets.only(left: 8.h),
            decoration: AppDecoration.outlineBlack900,
            child: Text(
              "lbl_lucky_coming".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeNotoSans,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowspacersix(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Spacer(),
          SizedBox(
            height: 88.h,
            width: 90.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img851000,
                  height: 88.h,
                  width: 88.h,
                  radius: BorderRadius.circular(4.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseAmberA700,
                  height: 18.h,
                  width: 36.h,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          Container(
            height: 88.h,
            width: 90.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img357771000,
                  height: 88.h,
                  width: 88.h,
                  radius: BorderRadius.circular(4.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseAmberA700,
                  height: 18.h,
                  width: 36.h,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
          Container(
            height: 88.h,
            width: 90.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img451000,
                  height: 88.h,
                  width: 88.h,
                  radius: BorderRadius.circular(4.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseAmberA700,
                  height: 18.h,
                  width: 36.h,
                  alignment: Alignment.topLeft,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowspacerseven(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Spacer(),
          Container(
            width: 52.h,
            decoration: AppDecoration.outlineBlack900,
            child: Text(
              "lbl_roma_x".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeNotoSans,
            ),
          ),
          Container(
            width: 90.h,
            margin: EdgeInsets.only(left: 28.h),
            decoration: AppDecoration.outlineBlack900,
            child: Text(
              "lbl_diamond_party".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeNotoSans,
            ),
          ),
          Container(
            width: 90.h,
            margin: EdgeInsets.only(left: 8.h),
            decoration: AppDecoration.outlineBlack900,
            child: Text(
              "lbl_lucky_coming".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeNotoSans,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlogooneone(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgLogo1,
          height: 12.h,
          width: 62.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgLogo2,
          height: 12.h,
          width: 62.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgLogo3,
          height: 12.h,
          width: 62.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSettings,
          height: 12.h,
          width: 62.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgLogo5,
          height: 12.h,
          width: 62.h,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRowlogoseven(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h, right: 14.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 12.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLogo7,
                    height: 12.h,
                    width: 64.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLogo6,
                    height: 12.h,
                    width: 64.h,
                    margin: EdgeInsets.only(right: 60.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgJili,
                    height: 12.h,
                    width: 64.h,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 34.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgYesbingo,
                    height: 12.h,
                    width: 64.h,
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
            width: 116.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsOnprimary,
                  height: 12.h,
                  width: 64.h,
                  alignment: Alignment.centerLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgJdb,
                  height: 12.h,
                  width: 64.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

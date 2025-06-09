import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_rating_bar.dart';
import 'bloc/home_sms_popup_bloc.dart';
import 'models/home_sms_popup_item_model.dart';
import 'models/home_sms_popup_model.dart';
import 'widgets/home_sms_popup_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomeSmsPopupScreen extends StatelessWidget {
  HomeSmsPopupScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeSmsPopupBloc>(
      create:
          (context) => HomeSmsPopupBloc(
            HomeSmsPopupState(homeSmsPopupModelObj: HomeSmsPopupModel()),
          )..add(HomeSmsPopupInitialEvent()),
      child: HomeSmsPopupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              height: 874.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildHomesmspopup(context),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildStack877aca258c(context),
                          _buildStack(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: _buildBottomappbarrom(context),
      ),
      floatingActionButton: CustomFloatingButton(
        height: 54,
        width: 54,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  /// Section Widget
  Widget _buildHomesmspopup(BuildContext context) {
    return BlocSelector<
      HomeSmsPopupBloc,
      HomeSmsPopupState,
      HomeSmsPopupModel?
    >(
      selector: (state) => state.homeSmsPopupModelObj,
      builder: (context, homeSmsPopupModelObj) {
        return ResponsiveGridListBuilder(
          minItemWidth: 1,
          minItemsPerRow: 4,
          maxItemsPerRow: 4,
          horizontalGridSpacing: 10.h,
          verticalGridSpacing: 10.h,
          builder:
              (context, items) => ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                children: items,
              ),
          gridItems: List.generate(
            homeSmsPopupModelObj?.homeSmsPopupItemList.length ?? 0,
            (index) {
              HomeSmsPopupItemModel model =
                  homeSmsPopupModelObj?.homeSmsPopupItemList[index] ??
                  HomeSmsPopupItemModel();
              return HomeSmsPopupItemWidget(model);
            },
          ),
        );
      },
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
                                CustomElevatedButton(
                                  height: 32.h,
                                  width: 96.h,
                                  text: "lbl_download".tr,
                                  margin: EdgeInsets.only(top: 18.h),
                                  buttonTextStyle:
                                      CustomTextStyles
                                          .titleSmallNotoSansLightgreen800,
                                  alignment: Alignment.bottomCenter,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: CustomIconButton(
                                    height: 26.h,
                                    width: 26.h,
                                    decoration: IconButtonStyleHelper.none,
                                    child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCloseLightGreen400,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
      height: 414.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 298.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(
                        left: 14.h,
                        top: 8.h,
                        right: 14.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgLogoWj93128x78,
                                        height: 28.h,
                                        width: 80.h,
                                        alignment: Alignment.center,
                                      ),
                                      Spacer(),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgLock,
                                        height: 16.h,
                                        width: 16.h,
                                        margin: EdgeInsets.only(bottom: 4.h),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 6.h,
                                          right: 10.h,
                                        ),
                                        child: Text(
                                          "lbl_r_1980_00".tr,
                                          style:
                                              CustomTextStyles
                                                  .titleMediumAmber600_2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.img1,
                                  height: 14.h,
                                  width: 16.h,
                                  alignment: Alignment.bottomCenter,
                                  margin: EdgeInsets.only(bottom: 4.h),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4.h),
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomElevatedButton(
                                    text: "lbl_withdrawal".tr,
                                    buttonStyle: CustomButtonStyles.none,
                                    decoration:
                                        CustomButtonStyles
                                            .gradientAmberToAmberTL2Decoration,
                                  ),
                                ),
                                Expanded(
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
                                        CustomButtonStyles
                                            .gradientLightGreenAToLightGreenTL2Decoration,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.h),
                          CustomImageView(
                            imagePath: ImageConstant.img130x344,
                            height: 130.h,
                            width: double.maxFinite,
                            radius: BorderRadius.circular(8.h),
                          ),
                          SizedBox(height: 16.h),
                          Container(
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
                                          style:
                                              CustomTextStyles
                                                  .bodyMediumLightgreenA700_1,
                                        ),
                                        TextSpan(
                                          text: "msg_the_recharge_of".tr,
                                          style:
                                              CustomTextStyles
                                                  .titleSmallLightgreenA700_1,
                                        ),
                                        TextSpan(
                                          text: "lbl_e".tr,
                                          style:
                                              CustomTextStyles
                                                  .bodyMediumLightgreenA700_1,
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
                                      style:
                                          CustomTextStyles
                                              .titleSmallLightgreenA700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.all(12.h),
                    decoration: AppDecoration.gradientBlackToBlack9001,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.maxFinite,
                          decoration: AppDecoration.fillGrayE.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Column(
                            spacing: 6,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10.h,
                                  vertical: 4.h,
                                ),
                                decoration: AppDecoration.fillGrayE.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL5,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgGroup824,
                                      height: 26.h,
                                      width: 26.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "msg_this_is_the_title".tr,
                                        style:
                                            CustomTextStyles
                                                .titleMediumGray90002,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 66.h,
                                width: double.maxFinite,
                                margin: EdgeInsets.symmetric(horizontal: 14.h),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Text(
                                      "msg_this_is_a_meaningless".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles
                                          .titleMediumGray90002_1
                                          .copyWith(height: 1.25),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        "lbl_got_it2".tr,
                                        style:
                                            CustomTextStyles
                                                .titleMediumGray90002_1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 8.h),
                            ],
                          ),
                        ),
                        SizedBox(height: 154.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 58.h,
              width: 284.h,
              margin: EdgeInsets.only(right: 16.h, bottom: 72.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 44.h,
                      decoration: AppDecoration.gradientBlackToBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIntersect,
                            height: 42.h,
                            width: double.maxFinite,
                            radius: BorderRadius.circular(3.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 58.h,
                    margin: EdgeInsets.only(right: 4.h),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img154x70,
                          height: 54.h,
                          width: 72.h,
                          radius: BorderRadius.circular(3.h),
                          alignment: Alignment.centerLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img118x30,
                          height: 18.h,
                          width: 32.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 80.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img218x30,
                          height: 18.h,
                          width: 32.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 58.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgJackpot1,
                          height: 22.h,
                          width: 88.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 84.h),
                        ),
                        Text(
                          "lbl_14_091_688_88".tr,
                          style: CustomTextStyles.headlineSmallYellowA20001,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              spacing: 4,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 2.h,
                  ),
                  decoration: AppDecoration.gradientGrayToBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL81,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.h),
                      CustomImageView(
                        imagePath: ImageConstant.img12,
                        height: 36.h,
                        width: 36.h,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      Text("lbl_collect".tr, style: theme.textTheme.labelLarge),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Container(
                        width: 66.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 2.h,
                        ),
                        decoration: AppDecoration.gradientAmberToAmber70003
                            .copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL81,
                            ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 4.h),
                            CustomImageView(
                              imagePath: ImageConstant.imgFire,
                              height: 36.h,
                              width: double.maxFinite,
                            ),
                            Text(
                              "lbl_hot".tr,
                              style: CustomTextStyles.labelLargeBluegray90007,
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPolygon10,
                        height: 14.h,
                        width: 8.h,
                      ),
                    ],
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
  Widget _buildBottomappbarrom(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomAppBar(onChanged: (BottomBarEnum type) {}),
    );
  }
}

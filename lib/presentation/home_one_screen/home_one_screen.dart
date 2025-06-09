import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_rating_bar.dart';
import 'bloc/home_one_bloc.dart';
import 'models/home_one_item_model.dart';
import 'models/home_one_model.dart';
import 'widgets/home_one_item_widget.dart';

// ignore_for_file: must_be_immutable
class HomeOneScreen extends StatelessWidget {
  HomeOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeOneBloc>(
      create:
          (context) =>
              HomeOneBloc(HomeOneState(homeOneModelObj: HomeOneModel()))
                ..add(HomeOneInitialEvent()),
      child: HomeOneScreen(),
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
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildStack877aca258c(context),
                  SizedBox(height: 8.h),
                  _buildColumnlogowj93o(context),
                  SizedBox(height: 8.h),
                  CustomImageView(
                    imagePath: ImageConstant.img130x344,
                    height: 130.h,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(8.h),
                    margin: EdgeInsets.symmetric(horizontal: 14.h),
                  ),
                  SizedBox(height: 16.h),
                  _buildRow3b4bde395738(context),
                  SizedBox(height: 16.h),
                  _buildRowonethree(context),
                  SizedBox(height: 4.h),
                  _buildStackfortuneox(context),
                  SizedBox(height: 32.h),
                  _buildColumnlogowj93o1(context),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: _buildBottomappbarnav(context),
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
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 68.h,
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: 68.h,
                                    margin: EdgeInsets.only(right: 64.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Opacity(
                                          opacity: 0.4,
                                          child: CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .img877aca258c7f46168x278,
                                            height: 68.h,
                                            width: double.maxFinite,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: double.maxFinite,
                                              margin: EdgeInsets.symmetric(
                                                horizontal: 12.h,
                                              ),
                                              child: Row(
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.img112,
                                                    height: 50.h,
                                                    width: 50.h,
                                                    radius:
                                                        BorderRadius.circular(
                                                          8.h,
                                                        ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      spacing: 2,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: 128.h,
                                                          child: Text(
                                                            "msg_many_benefits_for"
                                                                .tr
                                                                .toUpperCase(),
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: CustomTextStyles
                                                                .labelLargeOnPrimary_6
                                                                .copyWith(
                                                                  height: 1.17,
                                                                ),
                                                          ),
                                                        ),
                                                        CustomRatingBar(
                                                          initialRating: 5,
                                                        ),
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
                                ),
                                CustomElevatedButton(
                                  height: 32.h,
                                  width: 96.h,
                                  text: "lbl_download".tr,
                                  buttonTextStyle:
                                      CustomTextStyles
                                          .titleSmallNotoSansLightgreen800,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 26.h,
                        width: 26.h,
                        decoration: IconButtonStyleHelper.none,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCloseLightGreen400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnlogowj93o(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        spacing: 4,
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
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_withdrawal".tr,
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientAmberToAmberTL2Decoration,
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRow3b4bde395738(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.h),
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
    );
  }

  /// Section Widget
  Widget _buildRowonethree(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 2.h),
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
          Expanded(
            child: Container(
              height: 58.h,
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackfortuneox(BuildContext context) {
    return Container(
      height: 758.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 6.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          BlocSelector<HomeOneBloc, HomeOneState, HomeOneModel?>(
            selector: (state) => state.homeOneModelObj,
            builder: (context, homeOneModelObj) {
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
                  homeOneModelObj?.homeOneItemList.length ?? 0,
                  (index) {
                    HomeOneItemModel model =
                        homeOneModelObj?.homeOneItemList[index] ??
                        HomeOneItemModel();
                    return HomeOneItemWidget(model);
                  },
                ),
              );
            },
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPolygon10,
            height: 14.h,
            width: 10.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 62.h, top: 24.h),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 68.h,
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 2.h),
              decoration: AppDecoration.gradientAmberToAmber.copyWith(
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnlogowj93o1(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 14.h, right: 16.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogoWj93128x78,
            height: 28.h,
            width: 80.h,
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogo1,
                height: 12.h,
                width: 62.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
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
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLogo5,
                height: 12.h,
                width: 62.h,
              ),
            ],
          ),
          SizedBox(height: 14.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h, right: 12.h),
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
          ),
          SizedBox(height: 14.h),
          Container(
            height: 12.h,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 62.h, right: 60.h),
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
          SizedBox(height: 18.h),
          Text(
            "msg_this_site_offers".tr,
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.labelLargeNotoSansMedium,
          ),
          SizedBox(height: 2.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_emall".tr,
                  style: CustomTextStyles.bodySmallMicrosoftYaHei_1,
                ),
                TextSpan(text: " "),
                TextSpan(
                  text: "lbl_wj_gmail_com".tr,
                  style: CustomTextStyles.bodySmallMicrosoftYaHeiLightgreenA700,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 24.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 30.h,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            height: 30.h,
                            width: 32.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgMobile,
                                  height: 30.h,
                                  width: 30.h,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: EdgeInsets.only(top: 4.h),
                                            child: Text(
                                              "lbl_183".tr,
                                              style:
                                                  CustomTextStyles
                                                      .titleMediumRedA400,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgPlusRedA400,
                                          height: 10.h,
                                          width: 10.h,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 28.h,
                          width: 30.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgMobile,
                                height: 26.h,
                                width: 28.h,
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPlusRedA400,
                                      height: 10.h,
                                      width: 12.h,
                                      alignment: Alignment.centerRight,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Text(
                                        "lbl_183".tr,
                                        style:
                                            CustomTextStyles.titleSmallRedA400,
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
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: CustomIconButton(
                    height: 26.h,
                    width: 28.h,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.fillIndigoTL12,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFacebookOnprimary26x28,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: CustomIconButton(
                    height: 26.h,
                    width: 28.h,
                    decoration: IconButtonStyleHelper.fillOnPrimaryTL8,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgTrashLightBlue6000126x28,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: CustomIconButton(
                    height: 26.h,
                    width: 28.h,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillOnPrimary1,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorRedA70002,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: CustomIconButton(
                    height: 26.h,
                    width: 28.h,
                    decoration: IconButtonStyleHelper.fillOnPrimaryTL8,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgInfoPink500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: CustomIconButton(
                    height: 26.h,
                    width: 28.h,
                    padding: EdgeInsets.all(4.h),
                    decoration: IconButtonStyleHelper.fillGreenA,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlayOnprimary,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h, right: 20.h),
                  child: CustomIconButton(
                    height: 26.h,
                    width: 28.h,
                    decoration: IconButtonStyleHelper.none,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup12149Black900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.h),
          Text(
            "msg_2022_wj_gmail_com".tr,
            style: CustomTextStyles.bodySmallMicrosoftYaHei,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomappbarnav(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomAppBar(onChanged: (BottomBarEnum type) {}),
    );
  }
}

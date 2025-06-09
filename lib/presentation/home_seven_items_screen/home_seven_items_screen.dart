import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_rating_bar.dart';
import 'bloc/home_seven_items_bloc.dart';
import 'models/home_seven_items_model.dart';

// ignore_for_file: must_be_immutable
class HomeSevenItemsScreen extends StatelessWidget {
  HomeSevenItemsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeSevenItemsBloc>(
      create:
          (context) => HomeSevenItemsBloc(
            HomeSevenItemsState(homeSevenItemsModelObj: HomeSevenItemsModel()),
          )..add(HomeSevenItemsInitialEvent()),
      child: HomeSevenItemsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeSevenItemsBloc, HomeSevenItemsState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: appTheme.gray90002,
          body: SafeArea(
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  height: 958.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      _buildColumnliveone(context),
                      _buildColumnlogowj93o(context),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 90.h,
                          margin: EdgeInsets.only(left: 76.h),
                          child: Column(
                            spacing: 10,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 88.h,
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.img231000,
                                      height: 88.h,
                                      width: 88.h,
                                      radius: BorderRadius.circular(4.h),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant
                                              .imgTelevisionYellowA70003,
                                      height: 18.h,
                                      width: 36.h,
                                      alignment: Alignment.topLeft,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: AppDecoration.outlineBlack900,
                                width: double.maxFinite,
                                child: Text(
                                  "msg_fortune_ox_fortune".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.labelLargeNotoSans,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [_buildRowviewthree(context)],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 284.h,
                          margin: EdgeInsets.only(right: 16.h, bottom: 64.h),
                          child: Column(
                            spacing: 10,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 88.h,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.img277771000,
                                              height: 88.h,
                                              width: 88.h,
                                              radius: BorderRadius.circular(
                                                4.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .imgTelevisionAmberA40003,
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
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.img431000,
                                              height: 88.h,
                                              width: 88.h,
                                              radius: BorderRadius.circular(
                                                4.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .imgTelevisionAmberA40003,
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
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.img441000,
                                              height: 88.h,
                                              width: 88.h,
                                              radius: BorderRadius.circular(
                                                4.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .imgTelevisionAmberA40003,
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
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        spacing: 14,
                                        children: [
                                          SizedBox(
                                            width: double.maxFinite,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  width: 50.h,
                                                  decoration:
                                                      AppDecoration
                                                          .outlineBlack900,
                                                  child: Text(
                                                    "lbl_roma_x".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        CustomTextStyles
                                                            .labelLargeNotoSans,
                                                  ),
                                                ),
                                                Container(
                                                  width: 88.h,
                                                  decoration:
                                                      AppDecoration
                                                          .outlineBlack900,
                                                  child: Text(
                                                    "lbl_diamond_party".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        CustomTextStyles
                                                            .labelLargeNotoSans,
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
                                                  child: Container(
                                                    height: 88.h,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .img471000,
                                                          height: 88.h,
                                                          width: 88.h,
                                                          radius:
                                                              BorderRadius.circular(
                                                                4.h,
                                                              ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgFrame1003,
                                                          height: 18.h,
                                                          width: 36.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: 88.h,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .img461000,
                                                          height: 88.h,
                                                          width: 88.h,
                                                          radius:
                                                              BorderRadius.circular(
                                                                4.h,
                                                              ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgFrame1003,
                                                          height: 18.h,
                                                          width: 36.h,
                                                          alignment:
                                                              Alignment.topLeft,
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
                                    ),
                                    SizedBox(
                                      width: 88.h,
                                      child: Column(
                                        spacing: 14,
                                        children: [
                                          Container(
                                            decoration:
                                                AppDecoration.outlineBlack900,
                                            width: double.maxFinite,
                                            child: Text(
                                              "lbl_lucky_coming".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  CustomTextStyles
                                                      .labelLargeNotoSans,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 88.h,
                                            width: double.maxFinite,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgJdbSlot092,
                                                  height: 88.h,
                                                  width: 88.h,
                                                  radius: BorderRadius.circular(
                                                    4.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgFrame1003,
                                                  height: 18.h,
                                                  width: 36.h,
                                                  alignment: Alignment.topLeft,
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
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 136.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.h,
                            vertical: 4.h,
                          ),
                          decoration: AppDecoration.fs15.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL81,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 2.h),
                              CustomImageView(
                                imagePath: ImageConstant.img736x36,
                                height: 36.h,
                                width: 36.h,
                              ),
                              Text(
                                "lbl_fish2".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 272.h),
                          padding: EdgeInsets.symmetric(horizontal: 14.h),
                          decoration: AppDecoration.fs15.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL81,
                          ),
                          child: Column(
                            spacing: 2,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 6.h),
                              CustomImageView(
                                imagePath: ImageConstant.img536x36,
                                height: 36.h,
                                width: 36.h,
                              ),
                              Text(
                                "lbl_bingo2".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 68.h),
                          padding: EdgeInsets.symmetric(horizontal: 12.h),
                          decoration: AppDecoration.fs15.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL81,
                          ),
                          child: Column(
                            spacing: 2,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 4.h),
                              CustomImageView(
                                imagePath: ImageConstant.img336x36,
                                height: 36.h,
                                width: 36.h,
                              ),
                              Text(
                                "lbl_egame".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 14.h),
                          decoration: AppDecoration.fs15.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL81,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 6.h),
                              CustomImageView(
                                imagePath: ImageConstant.img10733643587,
                                height: 36.h,
                                width: 36.h,
                              ),
                              Text(
                                "lbl_slot".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 204.h),
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
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 58.h,
                          width: 284.h,
                          margin: EdgeInsets.only(top: 350.h, right: 16.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 44.h,
                                  decoration: AppDecoration.gradientBlackToBlack
                                      .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5,
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
                                      style:
                                          CustomTextStyles
                                              .headlineSmallYellowA20001,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 132.h,
                          width: 74.h,
                          margin: EdgeInsets.only(top: 350.h),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: double.maxFinite,
                                  child: Column(
                                    spacing: 28,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: double.maxFinite,
                                        margin: EdgeInsets.only(right: 6.h),
                                        padding: EdgeInsets.symmetric(
                                          vertical: 2.h,
                                        ),
                                        decoration: AppDecoration
                                            .gradientGrayToBlueGray
                                            .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .customBorderTL81,
                                            ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 2.h),
                                            CustomImageView(
                                              imagePath: ImageConstant.img12,
                                              height: 36.h,
                                              width: 36.h,
                                            ),
                                            Text(
                                              "lbl_collect".tr,
                                              style: theme.textTheme.labelLarge,
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgPolygon10,
                                        height: 14.h,
                                        width: 10.h,
                                        alignment: Alignment.centerRight,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.only(right: 6.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.h,
                                  vertical: 2.h,
                                ),
                                decoration: AppDecoration.gradientAmberToAmber
                                    .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL81,
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
                                      style:
                                          CustomTextStyles
                                              .labelLargeBluegray90007,
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
                        decoration: AppDecoration.fillBlack9007,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildStack877aca258c(context),
                            Spacer(),
                            Container(
                              height: 602.h,
                              width: double.maxFinite,
                              margin: EdgeInsets.only(left: 22.h),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 120.h,
                                      width: 122.h,
                                      margin: EdgeInsets.only(top: 30.h),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .img569114bd57270ff,
                                            height: 120.h,
                                            width: 120.h,
                                          ),
                                          Container(
                                            height: 120.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .img569114bd57270ff120x120,
                                                  height: 120.h,
                                                  width: 120.h,
                                                ),
                                                Container(
                                                  height: 116.h,
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: SizedBox(
                                                          height: 98.h,
                                                          width: 92.h,
                                                          child: Stack(
                                                            alignment:
                                                                Alignment
                                                                    .center,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .img23331,
                                                                height: 98.h,
                                                                width:
                                                                    double
                                                                        .maxFinite,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child: Container(
                                                                  margin:
                                                                      EdgeInsets.only(
                                                                        top:
                                                                            8.h,
                                                                      ),
                                                                  padding:
                                                                      EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            4.h,
                                                                      ),
                                                                  decoration: AppDecoration
                                                                      .fillRed
                                                                      .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle.circleBorder10,
                                                                      ),
                                                                  child: Text(
                                                                    "lbl_6".tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        CustomTextStyles
                                                                            .labelLargeOnPrimary_6,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 16.h,
                                                        margin:
                                                            EdgeInsets.symmetric(
                                                              horizontal: 8.h,
                                                            ),
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgVector1Yellow10007,
                                                              height: 16.h,
                                                              width:
                                                                  double
                                                                      .maxFinite,
                                                            ),
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgCloseYellow7000312x10,
                                                              height: 12.h,
                                                              width: 12.h,
                                                              alignment:
                                                                  Alignment
                                                                      .bottomLeft,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .img1MoneyRain,
                                                        height: 22.h,
                                                        width: double.maxFinite,
                                                        alignment:
                                                            Alignment
                                                                .bottomCenter,
                                                        margin: EdgeInsets.only(
                                                          bottom: 26.h,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment
                                                                .bottomCenter,
                                                        child: Container(
                                                          height: 30.h,
                                                          margin:
                                                              EdgeInsets.symmetric(
                                                                horizontal:
                                                                    10.h,
                                                              ),
                                                          child: Stack(
                                                            alignment:
                                                                Alignment
                                                                    .center,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .img16,
                                                                height: 30.h,
                                                                width:
                                                                    double
                                                                        .maxFinite,
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlineBlack9008,
                                                                child: Text(
                                                                  "lbl_receive"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      theme
                                                                          .textTheme
                                                                          .titleMedium,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment
                                                                .bottomRight,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                right: 10.h,
                                                                bottom: 44.h,
                                                              ),
                                                          child: Text(
                                                            "lbl_20day_23_12"
                                                                .tr,
                                                            style:
                                                                CustomTextStyles
                                                                    .titleSmallYellow10008,
                                                          ),
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
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      height: 120.h,
                                      width: 122.h,
                                      margin: EdgeInsets.only(
                                        left: 24.h,
                                        top: 126.h,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .img569114bd57270ff,
                                            height: 120.h,
                                            width: 120.h,
                                          ),
                                          Container(
                                            height: 120.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .img569114bd57270ff120x120,
                                                  height: 120.h,
                                                  width: 120.h,
                                                ),
                                                Container(
                                                  height: 116.h,
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .img2333198x90,
                                                        height: 98.h,
                                                        width: 92.h,
                                                        alignment:
                                                            Alignment.topCenter,
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .img1MoneyRain22x118,
                                                        height: 22.h,
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          bottom: 26.h,
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 30.h,
                                                        margin:
                                                            EdgeInsets.symmetric(
                                                              horizontal: 10.h,
                                                            ),
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .img1630x96,
                                                              height: 30.h,
                                                              width:
                                                                  double
                                                                      .maxFinite,
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlineBlack9008,
                                                              child: Text(
                                                                "lbl_details"
                                                                    .tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    theme
                                                                        .textTheme
                                                                        .titleMedium,
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
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                      height: 120.h,
                                      width: 122.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .img569114bd57270ff,
                                            height: 120.h,
                                            width: 120.h,
                                          ),
                                          Container(
                                            height: 120.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .img569114bd57270ff120x120,
                                                  height: 120.h,
                                                  width: 120.h,
                                                ),
                                                Container(
                                                  height: 116.h,
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        child: SizedBox(
                                                          height: 98.h,
                                                          width: 92.h,
                                                          child: Stack(
                                                            alignment:
                                                                Alignment
                                                                    .center,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .img233311,
                                                                height: 98.h,
                                                                width:
                                                                    double
                                                                        .maxFinite,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child: Container(
                                                                  margin:
                                                                      EdgeInsets.only(
                                                                        top:
                                                                            8.h,
                                                                      ),
                                                                  padding:
                                                                      EdgeInsets.symmetric(
                                                                        horizontal:
                                                                            4.h,
                                                                      ),
                                                                  decoration: AppDecoration
                                                                      .fillRed
                                                                      .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle.circleBorder10,
                                                                      ),
                                                                  child: Text(
                                                                    "lbl_22".tr,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style:
                                                                        CustomTextStyles
                                                                            .labelLargeOnPrimary_6,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .img1MoneyRain1,
                                                        height: 22.h,
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          bottom: 26.h,
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 30.h,
                                                        margin:
                                                            EdgeInsets.symmetric(
                                                              horizontal: 10.h,
                                                            ),
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .img16,
                                                              height: 30.h,
                                                              width:
                                                                  double
                                                                      .maxFinite,
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlineBlack9008,
                                                              child: Text(
                                                                "lbl_receive"
                                                                    .tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    theme
                                                                        .textTheme
                                                                        .titleMedium,
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
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.img410,
                                    height: 150.h,
                                    width: 132.h,
                                    alignment: Alignment.centerRight,
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 120.h,
                                      width: 122.h,
                                      margin: EdgeInsets.only(right: 2.h),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .img569114bd57270ff,
                                            height: 120.h,
                                            width: 120.h,
                                          ),
                                          Container(
                                            height: 120.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .img569114bd57270ff120x120,
                                                  height: 120.h,
                                                  width: 120.h,
                                                ),
                                                Container(
                                                  height: 116.h,
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .img233312,
                                                        height: 98.h,
                                                        width: 92.h,
                                                        alignment:
                                                            Alignment.topCenter,
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .img1MoneyRain2,
                                                        height: 22.h,
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          bottom: 26.h,
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 30.h,
                                                        margin:
                                                            EdgeInsets.symmetric(
                                                              horizontal: 10.h,
                                                            ),
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .img1630x96,
                                                              height: 30.h,
                                                              width:
                                                                  double
                                                                      .maxFinite,
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlineBlack9008,
                                                              child: Text(
                                                                "lbl_23_00_start"
                                                                    .tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    theme
                                                                        .textTheme
                                                                        .titleMedium,
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
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: 120.h,
                                      width: 122.h,
                                      margin: EdgeInsets.only(
                                        left: 24.h,
                                        bottom: 124.h,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .img569114bd57270ff,
                                            height: 120.h,
                                            width: 120.h,
                                          ),
                                          Container(
                                            height: 120.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .img569114bd57270ff120x120,
                                                  height: 120.h,
                                                  width: 120.h,
                                                ),
                                                Container(
                                                  height: 116.h,
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .img233313,
                                                        height: 98.h,
                                                        width: 92.h,
                                                        alignment:
                                                            Alignment.topCenter,
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .img1MoneyRain3,
                                                        height: 22.h,
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          bottom: 26.h,
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 30.h,
                                                        margin:
                                                            EdgeInsets.symmetric(
                                                              horizontal: 10.h,
                                                            ),
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .img1630x96,
                                                              height: 30.h,
                                                              width:
                                                                  double
                                                                      .maxFinite,
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlineBlack9008,
                                                              child: Text(
                                                                "lbl_details"
                                                                    .tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    theme
                                                                        .textTheme
                                                                        .titleMedium,
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
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      height: 120.h,
                                      width: 122.h,
                                      margin: EdgeInsets.only(right: 2.h),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant
                                                    .img569114bd57270ff,
                                            height: 120.h,
                                            width: 120.h,
                                          ),
                                          Container(
                                            height: 120.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .img569114bd57270ff120x120,
                                                  height: 120.h,
                                                  width: 120.h,
                                                ),
                                                Container(
                                                  height: 116.h,
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .img233313,
                                                        height: 98.h,
                                                        width: 92.h,
                                                        alignment:
                                                            Alignment.topCenter,
                                                      ),
                                                      CustomImageView(
                                                        imagePath:
                                                            ImageConstant
                                                                .img1MoneyRain3,
                                                        height: 22.h,
                                                        width: double.maxFinite,
                                                        margin: EdgeInsets.only(
                                                          bottom: 26.h,
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 30.h,
                                                        margin:
                                                            EdgeInsets.symmetric(
                                                              horizontal: 10.h,
                                                            ),
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .img1630x96,
                                                              height: 30.h,
                                                              width:
                                                                  double
                                                                      .maxFinite,
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  AppDecoration
                                                                      .outlineBlack9008,
                                                              child: Text(
                                                                "lbl_details"
                                                                    .tr,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    theme
                                                                        .textTheme
                                                                        .titleMedium,
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
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 120.h,
                                    width: 122.h,
                                    margin: EdgeInsets.only(bottom: 30.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.img569114bd57270ff,
                                          height: 120.h,
                                          width: 120.h,
                                        ),
                                        Container(
                                          height: 120.h,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant
                                                        .img569114bd57270ff120x120,
                                                height: 120.h,
                                                width: 120.h,
                                              ),
                                              Container(
                                                height: 116.h,
                                                child: Stack(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .img233313,
                                                      height: 98.h,
                                                      width: 92.h,
                                                      alignment:
                                                          Alignment.topCenter,
                                                    ),
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .img1MoneyRain3,
                                                      height: 22.h,
                                                      width: double.maxFinite,
                                                      margin: EdgeInsets.only(
                                                        bottom: 26.h,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 30.h,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                            horizontal: 10.h,
                                                          ),
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .img1630x96,
                                                            height: 30.h,
                                                            width:
                                                                double
                                                                    .maxFinite,
                                                          ),
                                                          Container(
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineBlack9008,
                                                            child: Text(
                                                              "lbl_details".tr,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style:
                                                                  theme
                                                                      .textTheme
                                                                      .titleMedium,
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
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 62.h),
                          ],
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
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnliveone(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 294.h),
        child: Column(
          spacing: 10,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 4.h),
                    padding: EdgeInsets.symmetric(horizontal: 14.h),
                    decoration: AppDecoration.fs15.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL81,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 4.h),
                        CustomImageView(
                          imagePath: ImageConstant.img136x36,
                          height: 36.h,
                          width: 36.h,
                        ),
                        Text("lbl_live".tr, style: theme.textTheme.labelLarge),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 88.h,
                      width: 88.h,
                      margin: EdgeInsets.only(left: 10.h),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img102X1000,
                            height: 88.h,
                            width: 88.h,
                            radius: BorderRadius.circular(4.h),
                          ),
                          Container(
                            height: 88.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img1Baccarat1,
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
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 52.h,
              margin: EdgeInsets.only(left: 96.h),
              decoration: AppDecoration.outlineBlack900,
              child: Text(
                "lbl_roma_x".tr,
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
  Widget _buildColumnlogowj93o(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 14.h, top: 76.h, right: 14.h),
        child: Column(
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
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowviewthree(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 294.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 88.h,
                child: Column(
                  spacing: 14,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        spacing: 10,
                        children: [
                          SizedBox(
                            height: 88.h,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img491000,
                                  height: 88.h,
                                  width: 88.h,
                                  radius: BorderRadius.circular(4.h),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 18.h,
                                    width: 34.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.blueGray80006,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(2.h),
                                        bottomRight: Radius.circular(6.h),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: appTheme.black900.withValues(
                                            alpha: 0.25,
                                          ),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: Offset(0, 1),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 66.h,
                            decoration: AppDecoration.outlineBlack900,
                            child: Text(
                              "lbl_super_ace".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelLargeNotoSans,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        spacing: 10,
                        children: [
                          SizedBox(
                            height: 88.h,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img211000,
                                  height: 88.h,
                                  width: 88.h,
                                  radius: BorderRadius.circular(4.h),
                                ),
                                Container(
                                  height: 88.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgBaccarat2,
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
                          ),
                          Container(
                            decoration: AppDecoration.outlineBlack900,
                            width: double.maxFinite,
                            child: Text(
                              "lbl_diamond_party".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelLargeNotoSans,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 88.h,
                margin: EdgeInsets.only(left: 8.h),
                child: Column(
                  spacing: 10,
                  children: [
                    Container(
                      width: double.maxFinite,
                      decoration: AppDecoration.fillBluegray90023.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Column(
                        spacing: 16,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 18.h,
                            width: 34.h,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray80007,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.h),
                                bottomRight: Radius.circular(6.h),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.black900.withValues(
                                    alpha: 0.15,
                                  ),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                          ),
                          Opacity(
                            opacity: 0.2,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgLogoWj93120x56,
                              height: 20.h,
                              width: double.maxFinite,
                              radius: BorderRadius.circular(4.h),
                              margin: EdgeInsets.symmetric(horizontal: 16.h),
                            ),
                          ),
                          SizedBox(height: 32.h),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        spacing: 12,
                        children: [
                          Container(
                            decoration: AppDecoration.outlineBlack900,
                            width: double.maxFinite,
                            child: Text(
                              "lbl_money_coming".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelLargeNotoSans,
                            ),
                          ),
                          SizedBox(
                            height: 88.h,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img911000,
                                  height: 88.h,
                                  width: 88.h,
                                  radius: BorderRadius.circular(4.h),
                                ),
                                Container(
                                  height: 88.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgBaccarat1,
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
                          ),
                          Container(
                            decoration: AppDecoration.outlineBlack900,
                            width: double.maxFinite,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
                Opacity(
                  opacity: 0.4,
                  child: CustomImageView(
                    imagePath: ImageConstant.img877aca258c7f46168x278,
                    height: 68.h,
                    width: 280.h,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 12.h),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 8.h),
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .labelLargeOnPrimary_6
                                                        .copyWith(height: 1.17),
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
                                  ),
                                  CustomElevatedButton(
                                    height: 32.h,
                                    width: 96.h,
                                    text: "lbl_download".tr,
                                    margin: EdgeInsets.only(bottom: 8.h),
                                    buttonTextStyle:
                                        CustomTextStyles
                                            .titleSmallNotoSansLightgreen800,
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: SizedBox(
                                      height: 26.h,
                                      width: 26.h,
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
                                                ImageConstant
                                                    .imgCloseLightGreen400,
                                            height: 26.h,
                                            width: 26.h,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
  Widget _buildBottomappbarrom(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomAppBar(onChanged: (BottomBarEnum type) {}),
    );
  }
}

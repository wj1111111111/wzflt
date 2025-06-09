import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/share_page_one_bloc.dart';
import 'models/share_page_one_item_model.dart';
import 'models/share_page_one_model.dart';
import 'models/sliderlogowj93t_item_model.dart';
import 'widgets/share_page_one_item_widget.dart';
import 'widgets/sliderlogowj93t_item_widget.dart';

class SharePageOneScreen extends StatelessWidget {
  const SharePageOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SharePageOneBloc>(
      create:
          (context) => SharePageOneBloc(
            SharePageOneState(sharePageOneModelObj: SharePageOneModel()),
          )..add(SharePageOneInitialEvent()),
      child: SharePageOneScreen(),
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
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Column(
                spacing: 184,
                children: [
                  SizedBox(height: 16.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      spacing: 14,
                      children: [
                        _buildSliderlogowj93t(context),
                        BlocBuilder<SharePageOneBloc, SharePageOneState>(
                          builder: (context, state) {
                            return SizedBox(
                              height: 14.h,
                              child: AnimatedSmoothIndicator(
                                activeIndex: state.sliderIndex,
                                count:
                                    state
                                        .sharePageOneModelObj
                                        ?.sliderlogowj93tItemList
                                        .length ??
                                    0,
                                axisDirection: Axis.horizontal,
                                effect: ScrollingDotsEffect(
                                  spacing: 10,
                                  activeDotColor: theme.colorScheme.onPrimary,
                                  dotColor: theme.colorScheme.onPrimary
                                      .withValues(alpha: 0.3),
                                  dotHeight: 6.h,
                                  dotWidth: 6.h,
                                ),
                              ),
                            );
                          },
                        ),
                        _buildRowoneone(context),
                        _buildRowsendahelp(context),
                      ],
                    ),
                  ),
                  Container(
                    height: 220.h,
                    width: 326.h,
                    margin: EdgeInsets.symmetric(horizontal: 8.h),
                    decoration: BoxDecoration(
                      color: appTheme.green40059,
                      borderRadius: BorderRadius.circular(162.h),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildColumn(context),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 60.h,
      leadingWidth: 22.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 16.h),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(text: "lbl_share".tr),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildSliderlogowj93t(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: BlocBuilder<SharePageOneBloc, SharePageOneState>(
        builder: (context, state) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: 420.h,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                context.read<SharePageOneBloc>().add(
                  ChangeSliderIndexEvent(value: index),
                );
              },
            ),
            itemCount:
                state.sharePageOneModelObj?.sliderlogowj93tItemList.length ?? 0,
            itemBuilder: (context, index, realIndex) {
              Sliderlogowj93tItemModel model =
                  state.sharePageOneModelObj?.sliderlogowj93tItemList[index] ??
                  Sliderlogowj93tItemModel();
              return Sliderlogowj93tItemWidget(model);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRowoneone(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomIconButton(
          height: 32.h,
          width: 32.h,
          decoration: IconButtonStyleHelper.none,
          child: CustomImageView(imagePath: ImageConstant.img1Green50001),
        ),
        CustomIconButton(
          height: 32.h,
          width: 32.h,
          decoration: IconButtonStyleHelper.none,
          child: CustomImageView(imagePath: ImageConstant.imgSaveLightBlue600),
        ),
        CustomIconButton(
          height: 32.h,
          width: 32.h,
          decoration: IconButtonStyleHelper.none,
          child: CustomImageView(imagePath: ImageConstant.imgFacebookIndigo600),
        ),
        CustomIconButton(
          height: 32.h,
          width: 32.h,
          decoration: IconButtonStyleHelper.none,
          child: CustomImageView(imagePath: ImageConstant.imgMusic),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgLockLightBlue600,
          height: 32.h,
          width: 32.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgClockGreenA70007,
          height: 32.h,
          width: 32.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgUserLightBlue600,
          height: 32.h,
          width: 32.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVectorOnprimary,
          height: 32.h,
          width: 32.h,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRowsendahelp(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame,
            height: 20.h,
            width: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg_send_a_help_invitation".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 12.h),
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.zero,
                  color: appTheme.gray90001,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder5,
                  ),
                  child: Container(
                    height: 170.h,
                    width: double.maxFinite,
                    decoration: AppDecoration.outline17.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse625,
                          height: 48.h,
                          width: 44.h,
                          alignment: Alignment.bottomRight,
                        ),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Column(
                            spacing: 12,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              BlocSelector<
                                SharePageOneBloc,
                                SharePageOneState,
                                SharePageOneModel?
                              >(
                                selector: (state) => state.sharePageOneModelObj,
                                builder: (context, sharePageOneModelObj) {
                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(height: 2.h);
                                    },
                                    itemCount:
                                        sharePageOneModelObj
                                            ?.sharePageOneItemList
                                            .length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      SharePageOneItemModel model =
                                          sharePageOneModelObj
                                              ?.sharePageOneItemList[index] ??
                                          SharePageOneItemModel();
                                      return SharePageOneItemWidget(model);
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: CustomElevatedButton(
                                        height: 40.h,
                                        text: "msg_send_message_on".tr,
                                        leftIcon: Container(
                                          margin: EdgeInsets.only(right: 4.h),
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgCall,
                                            height: 24.h,
                                            width: 24.h,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        buttonStyle: CustomButtonStyles.none,
                                        decoration:
                                            CustomButtonStyles
                                                .gradientAmberToAmberTL2Decoration,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.h,
                                        ),
                                        decoration: AppDecoration.fs1.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                        child: Row(
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant
                                                      .imgUserOnprimary24x24,
                                              height: 24.h,
                                              width: 24.h,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                width: 88.h,
                                                margin: EdgeInsets.only(
                                                  top: 2.h,
                                                ),
                                                child: Text(
                                                  "msg_sending_a_text_message"
                                                      .tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style:
                                                      theme
                                                          .textTheme
                                                          .titleSmall,
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

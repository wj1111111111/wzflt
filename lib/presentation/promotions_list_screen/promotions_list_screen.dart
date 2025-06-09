import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import 'bloc/promotions_list_bloc.dart';
import 'models/promotions_list_item_model.dart';
import 'models/promotions_list_model.dart';
import 'widgets/promotions_list_item_widget.dart';

// ignore_for_file: must_be_immutable
class PromotionsListScreen extends StatelessWidget {
  PromotionsListScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PromotionsListBloc>(
      create:
          (context) => PromotionsListBloc(
            PromotionsListState(promotionsListModelObj: PromotionsListModel()),
          )..add(PromotionsListInitialEvent()),
      child: PromotionsListScreen(),
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
              height: 1194.h,
              padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 16.h),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildPromotionslist(context),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(top: 142.h, bottom: 30.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildColumn100milhes(context),
                        Spacer(flex: 25),
                        _buildColumn100milhes1(context),
                        Spacer(flex: 25),
                        _buildColumn00milhes2(context),
                        Spacer(flex: 25),
                        _buildColumn00milhes3(context),
                        Spacer(flex: 25),
                        _buildColumn00milhes4(context),
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
        child: _buildBottomappbarnav(context),
      ),
      floatingActionButton: CustomFloatingButton(
        height: 56,
        width: 56,
        backgroundColor: appTheme.blueGray90021,
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup403,
          height: 28.0.h,
          width: 28.0.h,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      title: SizedBox(
        width: double.maxFinite,
        child: AppbarTitleImage(
          imagePath: ImageConstant.imgLogoWj93128x124,
          height: 28.h,
          width: 124.h,
          margin: EdgeInsets.only(left: 15.h),
        ),
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
          margin: EdgeInsets.only(left: 21.h, right: 20.h),
        ),
      ],
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildPromotionslist(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: BlocSelector<
        PromotionsListBloc,
        PromotionsListState,
        PromotionsListModel?
      >(
        selector: (state) => state.promotionsListModelObj,
        builder: (context, promotionsListModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 68.h);
            },
            itemCount:
                promotionsListModelObj?.promotionsListItemList.length ?? 0,
            itemBuilder: (context, index) {
              PromotionsListItemModel model =
                  promotionsListModelObj?.promotionsListItemList[index] ??
                  PromotionsListItemModel();
              return PromotionsListItemWidget(model);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMore(BuildContext context) {
    return CustomElevatedButton(
      height: 28.h,
      width: 154.h,
      text: "msg_more_information".tr,
      rightIcon: Container(
        margin: EdgeInsets.only(left: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowleftAmber30002,
          height: 8.h,
          width: 10.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGrayTL14,
      buttonTextStyle: CustomTextStyles.titleSmallAmber30002_1,
    );
  }

  /// Section Widget
  Widget _buildColumn100milhes(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
      decoration: AppDecoration.gradientGrayToGray90030.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL5,
      ),
      child: Column(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 14.h),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_100_milh_es_de_recompensas".tr,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          ),
          _buildMore(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMore1(BuildContext context) {
    return CustomElevatedButton(
      height: 28.h,
      width: 154.h,
      text: "msg_more_information".tr,
      rightIcon: Container(
        margin: EdgeInsets.only(left: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowleftAmber30002,
          height: 8.h,
          width: 10.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGrayTL14,
      buttonTextStyle: CustomTextStyles.titleSmallAmber30002_1,
    );
  }

  /// Section Widget
  Widget _buildColumn100milhes1(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
      decoration: AppDecoration.gradientGrayToGray90030.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL5,
      ),
      child: Column(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 14.h),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_100_milh_es_de_recompensas".tr,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          ),
          _buildMore1(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMore2(BuildContext context) {
    return CustomElevatedButton(
      height: 28.h,
      width: 154.h,
      text: "msg_more_information".tr,
      rightIcon: Container(
        margin: EdgeInsets.only(left: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowleftAmber30002,
          height: 8.h,
          width: 10.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGrayTL14,
      buttonTextStyle: CustomTextStyles.titleSmallAmber30002_1,
    );
  }

  /// Section Widget
  Widget _buildColumn00milhes2(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
      decoration: AppDecoration.gradientGrayToGray90030.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL5,
      ),
      child: Column(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 14.h),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_100_milh_es_de_recompensas".tr,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          ),
          _buildMore2(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMore3(BuildContext context) {
    return CustomElevatedButton(
      height: 28.h,
      width: 154.h,
      text: "msg_more_information".tr,
      rightIcon: Container(
        margin: EdgeInsets.only(left: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowleftAmber30002,
          height: 8.h,
          width: 10.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGrayTL14,
      buttonTextStyle: CustomTextStyles.titleSmallAmber30002_1,
    );
  }

  /// Section Widget
  Widget _buildColumn00milhes3(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
      decoration: AppDecoration.gradientGrayToGray90030.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL5,
      ),
      child: Column(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 14.h),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_100_milh_es_de_recompensas".tr,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          ),
          _buildMore3(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMore4(BuildContext context) {
    return CustomElevatedButton(
      height: 28.h,
      width: 154.h,
      text: "msg_more_information".tr,
      rightIcon: Container(
        margin: EdgeInsets.only(left: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowleftAmber30002,
          height: 8.h,
          width: 10.h,
          fit: BoxFit.contain,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGrayTL14,
      buttonTextStyle: CustomTextStyles.titleSmallAmber30002_1,
    );
  }

  /// Section Widget
  Widget _buildColumn00milhes4(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
      decoration: AppDecoration.gradientGrayToGray90030.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL5,
      ),
      child: Column(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 14.h),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_100_milh_es_de_recompensas".tr,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          ),
          _buildMore4(context),
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

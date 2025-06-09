import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/vip_daily_salary_daily_wage_rules_bloc.dart';
import 'models/gridslot_one_item_model.dart';
import 'models/listlv1_one_item_model.dart';
import 'models/vip_daily_salary_daily_wage_rules_model.dart';
import 'widgets/gridslot_one_item_widget.dart';
import 'widgets/listlv1_one_item_widget.dart';

class VipDailySalaryDailyWageRulesScreen extends StatelessWidget {
  const VipDailySalaryDailyWageRulesScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<VipDailySalaryDailyWageRulesBloc>(
      create:
          (context) => VipDailySalaryDailyWageRulesBloc(
            VipDailySalaryDailyWageRulesState(
              vipDailySalaryDailyWageRulesModelObj:
                  VipDailySalaryDailyWageRulesModel(),
            ),
          )..add(VipDailySalaryDailyWageRulesInitialEvent()),
      child: VipDailySalaryDailyWageRulesScreen(),
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
              height: 1844.h,
              padding: EdgeInsets.all(14.h),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(bottom: 16.h),
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Column(
                      spacing: 14,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 38.h,
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 40.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle568,
                                height: 38.h,
                                width: double.maxFinite,
                              ),
                              Container(
                                decoration: AppDecoration.outlineBlack,
                                child: Text(
                                  "lbl_reward_details".tr,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.maxFinite,
                          decoration: AppDecoration.outlineGray90029.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildRowviplevelone(context),
                              _buildListlv1one(context),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                      ],
                    ),
                  ),
                  _buildColumnthehigher1(context),
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
      leadingWidth: 23.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        width: 8.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "msg_vip_daily_salary".tr,
        margin: EdgeInsets.only(left: 9.h),
      ),
      actions: [
        AppbarTrailingImage(imagePath: ImageConstant.imgLock),
        AppbarSubtitleThree(
          text: "lbl_19800_00".tr,
          margin: EdgeInsets.only(left: 8.h),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.img114x16,
          height: 14.h,
          width: 16.h,
          margin: EdgeInsets.only(left: 11.h, right: 20.h),
        ),
      ],
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildRowviplevelone(BuildContext context) {
    return Container(
      decoration: AppDecoration.fs1,
      width: double.maxFinite,
      child: Row(
        children: [
          Container(
            width: 98.h,
            padding: EdgeInsets.fromLTRB(32.h, 10.h, 30.h, 10.h),
            decoration: AppDecoration.outlineLightGreen,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_vip_level".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeOnPrimaryBlack_1,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 4.h),
              decoration: AppDecoration.outlineLightGreen,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgBn01,
                    height: 20.h,
                    width: 28.h,
                  ),
                  Text(
                    "msg_valid_bet_ranges".tr,
                    style: CustomTextStyles.labelLargeOnPrimary_6,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img120x22,
                  height: 20.h,
                  width: 22.h,
                ),
                Text(
                  "lbl_get2".tr,
                  style: CustomTextStyles.labelLargeOnPrimary_6,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListlv1one(BuildContext context) {
    return BlocSelector<
      VipDailySalaryDailyWageRulesBloc,
      VipDailySalaryDailyWageRulesState,
      VipDailySalaryDailyWageRulesModel?
    >(
      selector: (state) => state.vipDailySalaryDailyWageRulesModelObj,
      builder: (context, vipDailySalaryDailyWageRulesModelObj) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount:
              vipDailySalaryDailyWageRulesModelObj?.listlv1OneItemList.length ??
              0,
          itemBuilder: (context, index) {
            Listlv1OneItemModel model =
                vipDailySalaryDailyWageRulesModelObj
                    ?.listlv1OneItemList[index] ??
                Listlv1OneItemModel();
            return Listlv1OneItemWidget(model);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnthehigher(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h, right: 6.h),
      child: Column(
        spacing: 4,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_the_higher_the".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumAmberA400_1,
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_daily_wage_bonuses".tr,
                  style: CustomTextStyles.titleSmallBluegray400,
                ),
                TextSpan(
                  text: "msg_0_00_the_next_day".tr,
                  style: CustomTextStyles.titleSmallBlue400,
                ),
              ],
            ),
            textAlign: TextAlign.left,
            maxLines: 11,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnthehigher1(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          spacing: 14,
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildColumnthehigher(context),
            SizedBox(
              height: 214.h,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 10.h,
                      ),
                      decoration: AppDecoration.outlineBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder10,
                      ),
                      child: Column(
                        spacing: 8,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "msg_total_valid_bets2".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          BlocSelector<
                            VipDailySalaryDailyWageRulesBloc,
                            VipDailySalaryDailyWageRulesState,
                            VipDailySalaryDailyWageRulesModel?
                          >(
                            selector:
                                (state) =>
                                    state.vipDailySalaryDailyWageRulesModelObj,
                            builder: (
                              context,
                              vipDailySalaryDailyWageRulesModelObj,
                            ) {
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
                                  vipDailySalaryDailyWageRulesModelObj
                                          ?.gridslotOneItemList
                                          .length ??
                                      0,
                                  (index) {
                                    GridslotOneItemModel model =
                                        vipDailySalaryDailyWageRulesModelObj
                                            ?.gridslotOneItemList[index] ??
                                        GridslotOneItemModel();
                                    return GridslotOneItemWidget(model);
                                  },
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 2.h),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1224,
                    height: 32.h,
                    width: 12.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 26.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1224,
                    height: 32.h,
                    width: 12.h,
                    margin: EdgeInsets.only(right: 26.h),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

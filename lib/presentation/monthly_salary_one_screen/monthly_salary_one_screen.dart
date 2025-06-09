import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/monthly_salary_one_bloc.dart';
import 'models/listlv0_one_item_model.dart';
import 'models/monthly_salary_one_model.dart';
import 'widgets/listlv0_one_item_widget.dart';

class MonthlySalaryOneScreen extends StatelessWidget {
  const MonthlySalaryOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MonthlySalaryOneBloc>(
      create:
          (context) => MonthlySalaryOneBloc(
            MonthlySalaryOneState(
              monthlySalaryOneModelObj: MonthlySalaryOneModel(),
            ),
          )..add(MonthlySalaryOneInitialEvent()),
      child: MonthlySalaryOneScreen(),
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
                spacing: 4,
                children: [
                  _buildRowline(context),
                  SizedBox(
                    height: 954.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            spacing: 10,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              _buildColumnyoucanrec(context),
                              Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(horizontal: 12.h),
                                decoration: AppDecoration.fs4bg.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder10,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 38.h,
                                      width: double.maxFinite,
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 38.h,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle568,
                                            height: 38.h,
                                            width: double.maxFinite,
                                          ),
                                          Container(
                                            decoration:
                                                AppDecoration.outlineBlack,
                                            child: Text(
                                              "lbl_reward_details".tr,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.titleMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        width: 290.h,
                                        child: Text(
                                          "msg_complete_the_corresponding".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodySmallSFProText
                                              .copyWith(height: 1.33),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    _buildRowviplevelone(context),
                                    SizedBox(height: 4.h),
                                    _buildListlv0one(context),
                                    SizedBox(height: 22.h),
                                  ],
                                ),
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
                              children: [_buildRow(context)],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26.h),
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
      height: 60.h,
      leadingWidth: 30.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray400,
        height: 14.h,
        margin: EdgeInsets.only(left: 16.h),
      ),
      title: AppbarSubtitleTwo(
        text: "msg_vip_monthly_salary2".tr,
        margin: EdgeInsets.only(left: 3.h),
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
          margin: EdgeInsets.only(left: 13.h, right: 20.h),
        ),
      ],
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildRowline(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      child: Row(
        children: [
          VerticalDivider(
            width: 5.h,
            thickness: 5.h,
            color: appTheme.lightGreenA700,
          ),
          Container(
            width: 240.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Text(
              "msg_what_is_monthly".tr.toUpperCase(),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleLargeBlack_1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnyoucanrec(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 14.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_you_can_receive3".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumBluegray400.copyWith(
                height: 1.14,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_collection_time5".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "msg_please_claim_this2".tr,
                    style: CustomTextStyles.bodyMediumBluegray400_1,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 22.h),
          Container(
            width: 266.h,
            margin: EdgeInsets.only(left: 4.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_monthly_collection3".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "msg_7th_of_every_month".tr,
                    style: CustomTextStyles.bodyMediumBluegray400_1,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 4.h),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowviplevelone(BuildContext context) {
    return Container(
      decoration: AppDecoration.fs1.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL5,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          Container(
            width: 58.h,
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.h),
            decoration: AppDecoration.outlineLightGreen,
            child: Column(
              children: [
                Text(
                  "lbl_vip_level".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeSFProTextOnPrimarySemiBold,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 8.h),
              decoration: AppDecoration.outlineLightGreen,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_monthly_betting_reguirements".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style:
                        CustomTextStyles.labelLargeSFProTextOnPrimarySemiBold,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 8.h),
              decoration: AppDecoration.outlineLightGreen,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_monthly_deposit_reguirements".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style:
                        CustomTextStyles.labelLargeSFProTextOnPrimarySemiBold,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 48.h,
            margin: EdgeInsets.only(left: 6.h, right: 2.h),
            child: Text(
              "lbl_monthly_salary3".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeSFProTextOnPrimarySemiBold,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListlv0one(BuildContext context) {
    return BlocSelector<
      MonthlySalaryOneBloc,
      MonthlySalaryOneState,
      MonthlySalaryOneModel?
    >(
      selector: (state) => state.monthlySalaryOneModelObj,
      builder: (context, monthlySalaryOneModelObj) {
        return ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 1.0.h),
              child: Divider(
                height: 1.h,
                thickness: 1.h,
                color: appTheme.blueGray70002,
              ),
            );
          },
          itemCount: monthlySalaryOneModelObj?.listlv0OneItemList.length ?? 0,
          itemBuilder: (context, index) {
            Listlv0OneItemModel model =
                monthlySalaryOneModelObj?.listlv0OneItemList[index] ??
                Listlv0OneItemModel();
            return Listlv0OneItemWidget(model);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 172.h),
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1224,
                height: 32.h,
                width: 12.h,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup1224,
                height: 32.h,
                width: 12.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

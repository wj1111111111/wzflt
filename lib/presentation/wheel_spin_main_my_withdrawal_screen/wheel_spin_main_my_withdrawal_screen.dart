import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/wheel_spin_main_my_withdrawal_bloc.dart';
import 'models/list20230909nin_item_model.dart';
import 'models/wheel_spin_main_my_withdrawal_model.dart';
import 'widgets/list20230909nin_item_widget.dart';

class WheelSpinMainMyWithdrawalScreen extends StatelessWidget {
  const WheelSpinMainMyWithdrawalScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WheelSpinMainMyWithdrawalBloc>(
      create:
          (context) => WheelSpinMainMyWithdrawalBloc(
            WheelSpinMainMyWithdrawalState(
              wheelSpinMainMyWithdrawalModelObj:
                  WheelSpinMainMyWithdrawalModel(),
            ),
          )..add(WheelSpinMainMyWithdrawalInitialEvent()),
      child: WheelSpinMainMyWithdrawalScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 8.h, top: 16.h, right: 8.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgDownload36x20,
                    height: 36.h,
                    width: 20.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCrown6b7cb3fe1,
                    height: 48.h,
                    width: 86.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgDownload1,
                    height: 36.h,
                    width: 20.h,
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Text(
                "msg_withdrawal_bonus".tr,
                style: CustomTextStyles.titleSmallBlack,
              ),
              SizedBox(height: 6.h),
              _buildColumntimeone(context),
              SizedBox(height: 14.h),
              _buildList20230909nin(context),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 264.h,
                  padding: EdgeInsets.all(8.h),
                  decoration: AppDecoration.column326,
                  child: Column(
                    children: [
                      SizedBox(height: 12.h),
                      Text(
                        "msg_you_have_won_a_top".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallOnPrimary_3.copyWith(
                          height: 1.50,
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
      title: AppbarSubtitleTwo(
        text: "msg_withdrawal_history".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildColumntimeone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        spacing: 4,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("lbl_time".tr, style: CustomTextStyles.labelLargeBlack),
                Text(
                  "lbl_withdraw_amount".tr,
                  style: CustomTextStyles.labelLargeBlack,
                ),
                Text("lbl_state".tr, style: CustomTextStyles.labelLargeBlack),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Divider(color: appTheme.blueGray80099),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildList20230909nin(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: BlocSelector<
        WheelSpinMainMyWithdrawalBloc,
        WheelSpinMainMyWithdrawalState,
        WheelSpinMainMyWithdrawalModel?
      >(
        selector: (state) => state.wheelSpinMainMyWithdrawalModelObj,
        builder: (context, wheelSpinMainMyWithdrawalModelObj) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0.h),
                child: Divider(
                  height: 1.h,
                  thickness: 1.h,
                  color: appTheme.blueGray80099,
                ),
              );
            },
            itemCount:
                wheelSpinMainMyWithdrawalModelObj
                    ?.list20230909ninItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              List20230909ninItemModel model =
                  wheelSpinMainMyWithdrawalModelObj
                      ?.list20230909ninItemList[index] ??
                  List20230909ninItemModel();
              return List20230909ninItemWidget(model);
            },
          );
        },
      ),
    );
  }
}

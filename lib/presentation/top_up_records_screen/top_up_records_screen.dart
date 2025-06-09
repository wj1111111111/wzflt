import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/top_up_records_bloc.dart';
import 'models/top_up_records_model.dart';
import 'models/topup_records_item_model.dart';
import 'widgets/topup_records_item_widget.dart';

class TopUpRecordsScreen extends StatelessWidget {
  const TopUpRecordsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TopUpRecordsBloc>(
      create:
          (context) => TopUpRecordsBloc(
            TopUpRecordsState(topUpRecordsModelObj: TopUpRecordsModel()),
          )..add(TopUpRecordsInitialEvent()),
      child: TopUpRecordsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildColumnarrowleft(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 16.h,
                      right: 14.h,
                    ),
                    child: Column(
                      spacing: 148,
                      children: [
                        _buildTopuprecords(context),
                        SizedBox(
                          width: 160.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_previous".tr,
                                style: CustomTextStyles.titleSmallBluegray400_1,
                              ),
                              Text(
                                "lbl_next".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 36.h),
                      ],
                    ),
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
  Widget _buildColumnarrowleft(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: AppDecoration.fs10bg,
      child: Column(
        spacing: 30,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            height: 22.h,
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
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 42.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_order".tr,
                  style: CustomTextStyles.titleSmallBluegray400_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFavoriteBlueGray70001,
                  height: 10.h,
                  width: 18.h,
                  radius: BorderRadius.circular(2.h),
                  margin: EdgeInsets.only(left: 4.h),
                ),
                Spacer(flex: 50),
                Text(
                  "lbl_way".tr,
                  style: CustomTextStyles.titleSmallBluegray400_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFavoriteBlueGray70001,
                  height: 10.h,
                  width: 18.h,
                  radius: BorderRadius.circular(2.h),
                  margin: EdgeInsets.only(left: 4.h),
                ),
                Spacer(flex: 49),
                Text(
                  "lbl_today".tr,
                  style: CustomTextStyles.titleSmallBluegray400_1,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFavoriteBlueGray70001,
                  height: 10.h,
                  width: 18.h,
                  radius: BorderRadius.circular(2.h),
                  margin: EdgeInsets.only(left: 4.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTopuprecords(BuildContext context) {
    return BlocSelector<
      TopUpRecordsBloc,
      TopUpRecordsState,
      TopUpRecordsModel?
    >(
      selector: (state) => state.topUpRecordsModelObj,
      builder: (context, topUpRecordsModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h),
              child: Divider(
                height: 1.h,
                thickness: 1.h,
                color: appTheme.blueGray90017,
              ),
            );
          },
          itemCount: topUpRecordsModelObj?.topupRecordsItemList.length ?? 0,
          itemBuilder: (context, index) {
            TopupRecordsItemModel model =
                topUpRecordsModelObj?.topupRecordsItemList[index] ??
                TopupRecordsItemModel();
            return TopupRecordsItemWidget(model);
          },
        );
      },
    );
  }
}

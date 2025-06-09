import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/coupon_center_task_records_bloc.dart';
import 'models/coupon_center_task_records_model.dart';
import 'models/listfirstdeposi_item_model.dart';
import 'widgets/listfirstdeposi_item_widget.dart';

class CouponCenterTaskRecordsScreen extends StatelessWidget {
  const CouponCenterTaskRecordsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CouponCenterTaskRecordsBloc>(
      create:
          (context) => CouponCenterTaskRecordsBloc(
            CouponCenterTaskRecordsState(
              couponCenterTaskRecordsModelObj: CouponCenterTaskRecordsModel(),
            ),
          )..add(CouponCenterTaskRecordsInitialEvent()),
      child: CouponCenterTaskRecordsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.gray90002,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 14.h, top: 20.h, right: 14.h),
          child: Column(
            spacing: 12,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRowarrowdown(context),
              Text(
                "msg_total_amount_10_00".tr,
                style: theme.textTheme.titleMedium,
              ),
              _buildListfirstdeposi(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 58.h,
      leadingWidth: 21.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        height: 12.h,
        width: 6.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_ticket_records".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
      styleType: Style.bgShadowBlack900,
    );
  }

  /// Section Widget
  Widget _buildRowarrowdown(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          BlocSelector<
            CouponCenterTaskRecordsBloc,
            CouponCenterTaskRecordsState,
            CouponCenterTaskRecordsModel?
          >(
            selector: (state) => state.couponCenterTaskRecordsModelObj,
            builder: (context, couponCenterTaskRecordsModelObj) {
              return CustomDropDown(
                width: 138.h,
                icon: Container(
                  margin: EdgeInsets.only(left: 24.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdown,
                    height: 14.h,
                    width: 12.h,
                    fit: BoxFit.contain,
                  ),
                ),
                iconSize: 14.h,
                hintText: "lbl_all".tr,
                items: couponCenterTaskRecordsModelObj?.dropdownItemList ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 12.h,
                ),
              );
            },
          ),
          Expanded(
            child: BlocSelector<
              CouponCenterTaskRecordsBloc,
              CouponCenterTaskRecordsState,
              TextEditingController?
            >(
              selector: (state) => state.calendaroneController,
              builder: (context, calendaroneController) {
                return CustomTextFormField(
                  controller: calendaroneController,
                  hintText: "msg_2023_05_11_2023_05_14".tr,
                  hintStyle: CustomTextStyles.labelLarge13_1,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(10.h, 12.h, 8.h, 12.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCalendar,
                      height: 14.h,
                      width: 16.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(maxHeight: 40.h),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 12.h,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                  fillColor: appTheme.gray90001,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListfirstdeposi(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        CouponCenterTaskRecordsBloc,
        CouponCenterTaskRecordsState,
        CouponCenterTaskRecordsModel?
      >(
        selector: (state) => state.couponCenterTaskRecordsModelObj,
        builder: (context, couponCenterTaskRecordsModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 14.h);
            },
            itemCount:
                couponCenterTaskRecordsModelObj
                    ?.listfirstdeposiItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              ListfirstdeposiItemModel model =
                  couponCenterTaskRecordsModelObj
                      ?.listfirstdeposiItemList[index] ??
                  ListfirstdeposiItemModel();
              return ListfirstdeposiItemWidget(model);
            },
          );
        },
      ),
    );
  }
}

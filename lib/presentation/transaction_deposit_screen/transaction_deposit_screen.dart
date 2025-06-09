import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/transaction_deposit_bloc.dart';
import 'models/listrecharge_item_model.dart';
import 'models/transaction_deposit_model.dart';
import 'widgets/listrecharge_item_widget.dart';

class TransactionDepositScreen extends StatelessWidget {
  const TransactionDepositScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionDepositBloc>(
      create:
          (context) => TransactionDepositBloc(
            TransactionDepositState(
              transactionDepositModelObj: TransactionDepositModel(),
            ),
          )..add(TransactionDepositInitialEvent()),
      child: TransactionDepositScreen(),
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
          padding: EdgeInsets.only(left: 14.h, top: 14.h, right: 14.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_filter_by".tr, style: theme.textTheme.titleMedium),
              SizedBox(height: 6.h),
              _buildRowarrowdown(context),
              SizedBox(height: 12.h),
              Container(
                width: double.maxFinite,
                decoration: AppDecoration.outlineBlack9002.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Column(
                  spacing: 8,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 8.h),
                    _buildListrecharge(context),
                    _buildRowarrowupone(context),
                    _buildRowprevious(context),
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
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 23.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftBlueGray40012x6,
        width: 8.h,
        margin: EdgeInsets.only(left: 15.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_account_record2".tr,
        margin: EdgeInsets.only(left: 9.h),
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
          margin: EdgeInsets.only(left: 11.h, right: 20.h),
        ),
      ],
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
            TransactionDepositBloc,
            TransactionDepositState,
            TransactionDepositModel?
          >(
            selector: (state) => state.transactionDepositModelObj,
            builder: (context, transactionDepositModelObj) {
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
                hintText: "lbl_withdrawal".tr,
                items: transactionDepositModelObj?.dropdownItemList ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 12.h,
                ),
              );
            },
          ),
          Expanded(
            child: BlocSelector<
              TransactionDepositBloc,
              TransactionDepositState,
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
  Widget _buildListrecharge(BuildContext context) {
    return BlocSelector<
      TransactionDepositBloc,
      TransactionDepositState,
      TransactionDepositModel?
    >(
      selector: (state) => state.transactionDepositModelObj,
      builder: (context, transactionDepositModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 10.h);
          },
          itemCount:
              transactionDepositModelObj?.listrechargeItemList.length ?? 0,
          itemBuilder: (context, index) {
            ListrechargeItemModel model =
                transactionDepositModelObj?.listrechargeItemList[index] ??
                ListrechargeItemModel();
            return ListrechargeItemWidget(model);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRowarrowupone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowUpAmberA400,
            height: 18.h,
            width: 14.h,
            margin: EdgeInsets.only(top: 10.h),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                spacing: 6,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildRowreceivedamou(
                      context,
                      receivedamount: "lbl_withdrawal".tr,
                      p08Two: "lbl_50_003".tr,
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildRowreceivedamou(
                      context,
                      receivedamount: "msg_received_amount".tr,
                      p08Two: "lbl_0_82".tr,
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildRowreceivedamou(
                      context,
                      receivedamount: "msg_withdrawal_fee3".tr,
                      p08Two: "lbl_0_82".tr,
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildRowreceivedamou(
                      context,
                      receivedamount: "msg_21_33_2023_06_08".tr,
                      p08Two: "lbl_balance_100_00".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 18.h,
            width: 18.h,
            margin: EdgeInsets.only(top: 10.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse25,
                  height: 18.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(9.0.h),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 4.h),
                    child: Text(
                      "lbl2".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary13,
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
  Widget _buildRowprevious(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 92.h, vertical: 18.h),
      decoration: AppDecoration.fs2bg.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL10,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_previous".tr,
            style: CustomTextStyles.titleSmallBluegray400_1,
          ),
          Text("lbl_next".tr, style: theme.textTheme.titleMedium),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRowreceivedamou(
    BuildContext context, {
    required String receivedamount,
    required String p08Two,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          receivedamount,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
        Text(
          p08Two,
          style: CustomTextStyles.labelLargeAmberA400_2.copyWith(
            color: appTheme.amberA400,
          ),
        ),
      ],
    );
  }
}

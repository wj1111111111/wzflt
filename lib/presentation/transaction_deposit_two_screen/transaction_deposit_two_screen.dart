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
import 'bloc/transaction_deposit_two_bloc.dart';
import 'models/transaction_deposit_two_model.dart';

class TransactionDepositTwoScreen extends StatelessWidget {
  const TransactionDepositTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionDepositTwoBloc>(
      create:
          (context) => TransactionDepositTwoBloc(
            TransactionDepositTwoState(
              transactionDepositTwoModelObj: TransactionDepositTwoModel(),
            ),
          )..add(TransactionDepositTwoInitialEvent()),
      child: TransactionDepositTwoScreen(),
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
            spacing: 12,
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildColumnfilterby(context),
              Container(
                height: 444.h,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 52.h, vertical: 84.h),
                decoration: AppDecoration.fs4bg.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Column(
                  spacing: 4,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup278,
                      height: 184.h,
                      width: double.maxFinite,
                    ),
                    Text(
                      "lbl_no_data".tr,
                      style: CustomTextStyles.titleSmallBluegray400_1,
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
  Widget _buildColumnfilterby(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 6,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_filter_by".tr, style: theme.textTheme.titleMedium),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                BlocSelector<
                  TransactionDepositTwoBloc,
                  TransactionDepositTwoState,
                  TransactionDepositTwoModel?
                >(
                  selector: (state) => state.transactionDepositTwoModelObj,
                  builder: (context, transactionDepositTwoModelObj) {
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
                      hintText: "lbl_deposits2".tr,
                      items:
                          transactionDepositTwoModelObj?.dropdownItemList ?? [],
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 10.h,
                        vertical: 12.h,
                      ),
                    );
                  },
                ),
                Expanded(
                  child: BlocSelector<
                    TransactionDepositTwoBloc,
                    TransactionDepositTwoState,
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
          ),
        ],
      ),
    );
  }
}

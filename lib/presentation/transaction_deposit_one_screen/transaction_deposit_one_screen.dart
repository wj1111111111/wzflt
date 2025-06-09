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
import 'bloc/transaction_deposit_one_bloc.dart';
import 'models/listdeposits_item_model.dart';
import 'models/transaction_deposit_one_model.dart';
import 'widgets/listdeposits_item_widget.dart';

class TransactionDepositOneScreen extends StatelessWidget {
  const TransactionDepositOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TransactionDepositOneBloc>(
      create:
          (context) => TransactionDepositOneBloc(
            TransactionDepositOneState(
              transactionDepositOneModelObj: TransactionDepositOneModel(),
            ),
          )..add(TransactionDepositOneInitialEvent()),
      child: TransactionDepositOneScreen(),
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
              _buildColumndeposits(context),
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
            TransactionDepositOneBloc,
            TransactionDepositOneState,
            TransactionDepositOneModel?
          >(
            selector: (state) => state.transactionDepositOneModelObj,
            builder: (context, transactionDepositOneModelObj) {
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
                items: transactionDepositOneModelObj?.dropdownItemList ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 12.h,
                ),
              );
            },
          ),
          Expanded(
            child: BlocSelector<
              TransactionDepositOneBloc,
              TransactionDepositOneState,
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
  Widget _buildColumndeposits(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 8.h),
        decoration: AppDecoration.outlineBlack9002.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: BlocSelector<
                TransactionDepositOneBloc,
                TransactionDepositOneState,
                TransactionDepositOneModel?
              >(
                selector: (state) => state.transactionDepositOneModelObj,
                builder: (context, transactionDepositOneModelObj) {
                  return ListView.separated(
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 10.h);
                    },
                    itemCount:
                        transactionDepositOneModelObj
                            ?.listdepositsItemList
                            .length ??
                        0,
                    itemBuilder: (context, index) {
                      ListdepositsItemModel model =
                          transactionDepositOneModelObj
                              ?.listdepositsItemList[index] ??
                          ListdepositsItemModel();
                      return ListdepositsItemWidget(model);
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 56.h),
          ],
        ),
      ),
    );
  }
}

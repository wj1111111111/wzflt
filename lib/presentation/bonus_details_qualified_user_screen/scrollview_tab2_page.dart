import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/bonus_details_qualified_user_bloc.dart';
import 'models/listdate_item_model.dart';
import 'models/scrollview_tab2_model.dart';
import 'widgets/listdate_item_widget.dart';

class ScrollviewTab2Page extends StatefulWidget {
  const ScrollviewTab2Page({Key? key}) : super(key: key);

  @override
  ScrollviewTab2PageState createState() => ScrollviewTab2PageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BonusDetailsQualifiedUserBloc>(
      create:
          (context) => BonusDetailsQualifiedUserBloc(
            BonusDetailsQualifiedUserState(
              scrollviewTab2ModelObj: ScrollviewTab2Model(),
            ),
          )..add(BonusDetailsQualifiedUserInitialEvent()),
      child: ScrollviewTab2Page(),
    );
  }
}

class ScrollviewTab2PageState extends State<ScrollviewTab2Page> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 12.h),
        child: Column(
          children: [
            _buildRowarrowdown(context),
            SizedBox(height: 12.h),
            _buildColumndate(context),
            Spacer(),
            _buildRowtotalqualifi(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowarrowdown(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        children: [
          Expanded(
            child: BlocSelector<
              BonusDetailsQualifiedUserBloc,
              BonusDetailsQualifiedUserState,
              ScrollviewTab2Model?
            >(
              selector: (state) => state.scrollviewTab2ModelObj,
              builder: (context, scrollviewTab2ModelObj) {
                return CustomDropDown(
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
                  hintText: "lbl_qualified_bonus".tr,
                  items: scrollviewTab2ModelObj?.dropdownItemList ?? [],
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 12.h,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: BlocSelector<
              BonusDetailsQualifiedUserBloc,
              BonusDetailsQualifiedUserState,
              TextEditingController?
            >(
              selector: (state) => state.calendaroneController,
              builder: (context, calendaroneController) {
                return CustomTextFormField(
                  controller: calendaroneController,
                  hintText: "lbl_08_21_08_27".tr,
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
  Widget _buildColumndate(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: AppDecoration.fs2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 204.h,
            width: double.maxFinite,
            child: BlocSelector<
              BonusDetailsQualifiedUserBloc,
              BonusDetailsQualifiedUserState,
              ScrollviewTab2Model?
            >(
              selector: (state) => state.scrollviewTab2ModelObj,
              builder: (context, scrollviewTab2ModelObj) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return VerticalDivider(
                      width: 1.h,
                      thickness: 1.h,
                      color: theme.colorScheme.onPrimary.withValues(
                        alpha: 0.06,
                      ),
                    );
                  },
                  itemCount:
                      scrollviewTab2ModelObj?.listdateItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ListdateItemModel model =
                        scrollviewTab2ModelObj?.listdateItemList[index] ??
                        ListdateItemModel();
                    return ListdateItemWidget(model);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowtotalqualifi(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.h),
      decoration: AppDecoration.fillBluegray90024,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.h, bottom: 6.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_total_qualified".tr,
                    style: CustomTextStyles.titleSmallOnPrimary,
                  ),
                  Text(
                    "lbl_333_333_00".tr,
                    style: CustomTextStyles.titleLargeAmberA40020,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrame14627BlueGray400,
            height: 10.h,
            width: 10.h,
            margin: EdgeInsets.only(left: 4.h, top: 4.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_total_users_10".tr,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}

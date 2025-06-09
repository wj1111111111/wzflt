import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/bonus_details_achievement_bloc.dart';
import 'models/listdate_item_model.dart';
import 'models/scrollview_tab3_model.dart';
import 'widgets/listdate_item_widget.dart';

class ScrollviewTab3Page extends StatefulWidget {
  const ScrollviewTab3Page({Key? key}) : super(key: key);

  @override
  ScrollviewTab3PageState createState() => ScrollviewTab3PageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BonusDetailsAchievementBloc>(
      create:
          (context) => BonusDetailsAchievementBloc(
            BonusDetailsAchievementState(
              scrollviewTab3ModelObj: ScrollviewTab3Model(),
            ),
          )..add(BonusDetailsAchievementInitialEvent()),
      child: ScrollviewTab3Page(),
    );
  }
}

class ScrollviewTab3PageState extends State<ScrollviewTab3Page> {
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
            _buildStacktotaldepos(context),
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
              BonusDetailsAchievementBloc,
              BonusDetailsAchievementState,
              ScrollviewTab3Model?
            >(
              selector: (state) => state.scrollviewTab3ModelObj,
              builder: (context, scrollviewTab3ModelObj) {
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
                  hintText: "msg_achievement_bonus".tr,
                  items: scrollviewTab3ModelObj?.dropdownItemList ?? [],
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
              BonusDetailsAchievementBloc,
              BonusDetailsAchievementState,
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
              BonusDetailsAchievementBloc,
              BonusDetailsAchievementState,
              ScrollviewTab3Model?
            >(
              selector: (state) => state.scrollviewTab3ModelObj,
              builder: (context, scrollviewTab3ModelObj) {
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
                      scrollviewTab3ModelObj?.listdateItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ListdateItemModel model =
                        scrollviewTab3ModelObj?.listdateItemList[index] ??
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
  Widget _buildStacktotaldepos(BuildContext context) {
    return SizedBox(
      height: 116.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.zero,
            color: appTheme.blueGray90021,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: Container(
              height: 56.h,
              width: 58.h,
              padding: EdgeInsets.symmetric(vertical: 2.h),
              decoration: AppDecoration.fillBluegray90021.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 2.h, right: 4.h),
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    decoration: AppDecoration
                        .gradientLightGreenAToLightgreen90007
                        .copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVector2,
                          height: 24.h,
                          width: 26.h,
                          alignment: Alignment.center,
                        ),
                        Container(
                          height: 14.h,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(right: 6.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSubtractOnprimary,
                                height: 14.h,
                                width: double.maxFinite,
                              ),
                              Container(
                                height: 14.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        height: 3.h,
                                        width: 3.h,
                                        margin: EdgeInsets.only(top: 4.h),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            1.h,
                                          ),
                                          border: Border.all(
                                            color: theme.colorScheme.onPrimary,
                                            width: 0.3.h,
                                            strokeAlign:
                                                BorderSide.strokeAlignOutside,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 14.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgSubtract14x42,
                                            height: 14.h,
                                            width: double.maxFinite,
                                          ),
                                          Container(
                                            height: 14.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.img14x42,
                                                  height: 14.h,
                                                  width: double.maxFinite,
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant
                                                          .imgUnion8x32,
                                                  height: 8.h,
                                                  width: double.maxFinite,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 2.h,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img530x44,
                    height: 30.h,
                    width: 46.h,
                    alignment: Alignment.bottomRight,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(left: 24.h, top: 12.h, bottom: 12.h),
              decoration: AppDecoration.fillBluegray90024,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "msg_total_deposit_rebate".tr,
                    style: CustomTextStyles.titleSmallOnPrimary,
                  ),
                  Text(
                    "lbl_333_333_00".tr,
                    style: CustomTextStyles.titleLargeAmberA40020,
                  ),
                  SizedBox(height: 4.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

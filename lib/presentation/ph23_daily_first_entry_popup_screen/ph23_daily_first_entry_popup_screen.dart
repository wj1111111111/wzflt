import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/ph23_daily_first_entry_popup_bloc.dart';
import 'models/listone_one_item_model.dart';
import 'models/ph23_daily_first_entry_popup_model.dart';
import 'widgets/listone_one_item_widget.dart';

class Ph23DailyFirstEntryPopupScreen extends StatelessWidget {
  const Ph23DailyFirstEntryPopupScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<Ph23DailyFirstEntryPopupBloc>(
      create:
          (context) => Ph23DailyFirstEntryPopupBloc(
            Ph23DailyFirstEntryPopupState(
              ph23DailyFirstEntryPopupModelObj: Ph23DailyFirstEntryPopupModel(),
            ),
          )..add(Ph23DailyFirstEntryPopupInitialEvent()),
      child: Ph23DailyFirstEntryPopupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: appTheme.gray90002,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.fillGray,
        child: SafeArea(
          child: SizedBox(
            width: double.maxFinite,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                child: Container(
                  height: SizeUtils.height,
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 60.h,
                  ),
                  decoration: AppDecoration.outline1,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.h),
                        child: ClipRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                            child: Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                horizontal: 14.h,
                                vertical: 20.h,
                              ),
                              decoration: AppDecoration.gradientGrayToGray
                                  .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20,
                                  ),
                              child: Column(
                                spacing: 12,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(height: 8.h),
                                  _buildRowlineone(context),
                                  _buildListoneone(context),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      _buildStackcloseone(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlineone(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          VerticalDivider(
            width: 5.h,
            thickness: 5.h,
            color: appTheme.lightGreenA700,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_recommend_friends".tr,
                  style: CustomTextStyles.titleMediumBluegray400Medium_1,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_to_join".tr,
                        style: CustomTextStyles.titleMediumBluegray400Medium,
                      ),
                      TextSpan(
                        text: "lbl_jbet88".tr,
                        style: CustomTextStyles.titleMediumAmberA400_2,
                      ),
                      TextSpan(
                        text: "lbl_and_earn_money".tr,
                        style: CustomTextStyles.titleMediumBluegray400Medium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListoneone(BuildContext context) {
    return Expanded(
      child: BlocSelector<
        Ph23DailyFirstEntryPopupBloc,
        Ph23DailyFirstEntryPopupState,
        Ph23DailyFirstEntryPopupModel?
      >(
        selector: (state) => state.ph23DailyFirstEntryPopupModelObj,
        builder: (context, ph23DailyFirstEntryPopupModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 4.h);
            },
            itemCount:
                ph23DailyFirstEntryPopupModelObj?.listoneOneItemList.length ??
                0,
            itemBuilder: (context, index) {
              ListoneOneItemModel model =
                  ph23DailyFirstEntryPopupModelObj?.listoneOneItemList[index] ??
                  ListoneOneItemModel();
              return ListoneOneItemWidget(model);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildStackcloseone(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 122.h,
        margin: EdgeInsets.only(left: 4.h),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage360,
              height: 78.h,
              width: 138.h,
              alignment: Alignment.topCenter,
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(right: 4.h),
              child: Column(
                spacing: 6,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomIconButton(
                    height: 20.h,
                    width: 20.h,
                    padding: EdgeInsets.all(4.h),
                    decoration: IconButtonStyleHelper.outlineOnPrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCloseOnprimary20x20,
                    ),
                  ),
                  SizedBox(
                    height: 78.h,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage540,
                          height: 78.h,
                          width: double.maxFinite,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.only(top: 18.h),
                            decoration: AppDecoration.outlineGreen,
                            child: Text(
                              "msg_agent_7_major_income".tr,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleLargeOrange5001,
                            ),
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
    );
  }
}

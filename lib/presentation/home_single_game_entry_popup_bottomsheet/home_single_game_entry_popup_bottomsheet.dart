import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/home_single_game_entry_popup_bloc.dart';
import 'models/home_single_game_entry_popup_model.dart'; // ignore_for_file: must_be_immutable

class HomeSingleGameEntryPopupBottomsheet extends StatelessWidget {
  const HomeSingleGameEntryPopupBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeSingleGameEntryPopupBloc>(
      create:
          (context) => HomeSingleGameEntryPopupBloc(
            HomeSingleGameEntryPopupState(
              homeSingleGameEntryPopupModelObj: HomeSingleGameEntryPopupModel(),
            ),
          )..add(HomeSingleGameEntryPopupInitialEvent()),
      child: HomeSingleGameEntryPopupBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildRowplatformtwen(context);
  }

  /// Section Widget
  Widget _buildRowplatformtwen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 8.h),
      decoration: AppDecoration.fs2bg.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.zero,
            color: appTheme.blueGray90023,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Container(
              height: 114.h,
              width: 114.h,
              decoration: AppDecoration.fillBluegray90023.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBaccarat2,
                    height: 114.h,
                    width: 114.h,
                    radius: BorderRadius.circular(4.h),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 16.h,
                      width: 34.h,
                      decoration: AppDecoration.outlineBlack9003.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBR8,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPlatform24,
                            height: 10.h,
                            width: 24.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 32.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_game_names_can_be".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 4.h),
                  Text("lbl_slots2".tr, style: theme.textTheme.labelLarge),
                  SizedBox(height: 22.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomElevatedButton(
                        width: 130.h,
                        text: "lbl_real_play".tr,
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 4.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.h),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgOverflowmenu,
                            height: 14.h,
                            width: 12.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.none,
                        decoration:
                            CustomButtonStyles
                                .gradientLightGreenAToLightGreenTL8Decoration,
                        buttonTextStyle: theme.textTheme.titleMedium!,
                      ),
                      CustomElevatedButton(
                        width: 84.h,
                        text: "lbl_favorite".tr,
                        leftIcon: Container(
                          margin: EdgeInsets.only(right: 4.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgSignal,
                            height: 12.h,
                            width: 14.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.fillGrayTL8,
                        buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_6,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

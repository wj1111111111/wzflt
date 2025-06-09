import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/next_day_inform_people_needed_bloc.dart';
import 'models/next_day_inform_people_needed_model.dart'; // ignore_for_file: must_be_immutable

class NextDayInformPeopleNeededDialog extends StatelessWidget {
  const NextDayInformPeopleNeededDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NextDayInformPeopleNeededBloc>(
      create:
          (context) => NextDayInformPeopleNeededBloc(
            NextDayInformPeopleNeededState(
              nextDayInformPeopleNeededModelObj:
                  NextDayInformPeopleNeededModel(),
            ),
          )..add(NextDayInformPeopleNeededInitialEvent()),
      child: NextDayInformPeopleNeededDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          decoration: AppDecoration.gradientBlueGrayToBluegray80011.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL201,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildStackwithdraw(context),
              SizedBox(height: 20.h),
              _buildRowsubtractone(context),
              SizedBox(height: 4.h),
              Text(
                "msg_only_need_to_invite".tr,
                style: CustomTextStyles.bodyMediumYellowA40002,
              ),
              SizedBox(height: 26.h),
              CustomElevatedButton(
                height: 40.h,
                text: "msg_invite_3_friends".tr,
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles
                        .gradientLightGreenAToLightGreenTL22Decoration,
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage28x28,
                    height: 28.h,
                    width: 28.h,
                  ),
                  Text(
                    "lbl_event_ends".tr,
                    style: CustomTextStyles.bodyMediumOnPrimary,
                  ),
                ],
              ),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 76.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: _buildStackgridSeven(
                        context,
                        sixOne: "lbl_023".tr,
                        secOne: "lbl_day".tr,
                      ),
                    ),
                    Text("lbl7".tr, style: CustomTextStyles.titleMediumBlack18),
                    Expanded(
                      child: Container(
                        height: 36.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGridOnprimary36x36,
                              height: 36.h,
                              width: 36.h,
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "lbl_013".tr,
                                    style:
                                        CustomTextStyles
                                            .titleSmallSFProTextBlack,
                                  ),
                                  Text(
                                    "lbl_hr".tr,
                                    style:
                                        CustomTextStyles.labelSmallOnPrimary9,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text("lbl7".tr, style: CustomTextStyles.titleMediumBlack18),
                    Expanded(
                      child: Container(
                        height: 36.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGridOnprimary36x36,
                              height: 36.h,
                              width: 36.h,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "lbl_21".tr,
                                    style:
                                        CustomTextStyles
                                            .titleSmallSFProTextBlack,
                                  ),
                                  Text(
                                    "lbl_min".tr,
                                    style:
                                        CustomTextStyles.labelSmallOnPrimary9,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text("lbl7".tr, style: CustomTextStyles.titleMediumBlack18),
                    Expanded(
                      child: _buildStackgridSeven(
                        context,
                        sixOne: "lbl_062".tr,
                        secOne: "lbl_sec".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStackwithdraw(BuildContext context) {
    return SizedBox(
      height: 186.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              spacing: 20,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder14,
                    ),
                    child: Container(
                      height: 140.h,
                      width: double.maxFinite,
                      decoration: AppDecoration.gradientGreenToGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder14,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Opacity(
                            opacity: 0.8,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgF1140x344,
                              height: 140.h,
                              width: double.maxFinite,
                              radius: BorderRadius.circular(12.h),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 122.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      height: 78.h,
                                      width: 344.h,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.5, 1),
                                          end: Alignment(0.5, 0),
                                          colors: [
                                            appTheme.blueGray80011,
                                            appTheme.blueGray80011.withValues(
                                              alpha: 0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 118.h,
                                    width: 126.h,
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgB928f94165e9728,
                                          height: 104.h,
                                          width: 106.h,
                                          alignment: Alignment.topRight,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgB928f94165e9728,
                                          height: 104.h,
                                          width: 106.h,
                                        ),
                                      ],
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
                ),
                Text("lbl_withdraw2".tr, style: CustomTextStyles.titleLarge20),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 14.h),
              child: Text(
                "lbl_1004".tr,
                style: CustomTextStyles.headlineLargeYellowA40002,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowsubtractone(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      decoration: AppDecoration.fillBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Container(
              height: 14.h,
              width: 182.h,
              decoration: AppDecoration.gradientOrangeToYellowA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSubtractOnprimary6x182,
                    height: 6.h,
                    width: double.maxFinite,
                    alignment: Alignment.topCenter,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 6.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEditOnprimary,
                                height: 14.h,
                                width: 12.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEditOnprimary,
                                height: 14.h,
                                width: 12.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEditOnprimary,
                                height: 14.h,
                                width: 12.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEditOnprimary,
                                height: 14.h,
                                width: 12.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEditOnprimary,
                                height: 14.h,
                                width: 12.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEditOnprimary,
                                height: 14.h,
                                width: 12.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEditOnprimary,
                                height: 14.h,
                                width: 12.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEditOnprimary,
                                height: 14.h,
                                width: 12.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEditOnprimary,
                                height: 14.h,
                                width: 12.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEditOnprimary,
                                height: 14.h,
                                width: 12.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEditOnprimary,
                                height: 14.h,
                                width: 12.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgEditOnprimary,
                                height: 14.h,
                                width: 12.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_70".tr,
              style: CustomTextStyles.labelLargeInterOnPrimarySemiBold,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildStackgridSeven(
    BuildContext context, {
    required String sixOne,
    required String secOne,
  }) {
    return SizedBox(
      height: 36.h,
      width: 36.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGridOnprimary36x36,
            height: 36.h,
            width: 36.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sixOne,
                  style: CustomTextStyles.titleSmallSFProTextBlack.copyWith(
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
                Text(
                  secOne,
                  style: CustomTextStyles.labelSmallOnPrimary9.copyWith(
                    color: theme.colorScheme.onPrimary,
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

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/feedback_box_limit_reached_bloc.dart';
import 'models/feedback_box_limit_reached_model.dart'; // ignore_for_file: must_be_immutable

class FeedbackBoxLimitReachedDialog extends StatelessWidget {
  const FeedbackBoxLimitReachedDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FeedbackBoxLimitReachedBloc>(
      create:
          (context) => FeedbackBoxLimitReachedBloc(
            FeedbackBoxLimitReachedState(
              feedbackBoxLimitReachedModelObj: FeedbackBoxLimitReachedModel(),
            ),
          )..add(FeedbackBoxLimitReachedInitialEvent()),
      child: FeedbackBoxLimitReachedDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(10.h),
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame12724,
                          height: 24.h,
                          width: 26.h,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "lbl_suggestion".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                        Spacer(),
                        CustomIconButton(
                          height: 20.h,
                          width: 20.h,
                          padding: EdgeInsets.all(4.h),
                          decoration: IconButtonStyleHelper.outlineBlueGray,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg_select_question".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  BlocSelector<
                    FeedbackBoxLimitReachedBloc,
                    FeedbackBoxLimitReachedState,
                    FeedbackBoxLimitReachedModel?
                  >(
                    selector: (state) => state.feedbackBoxLimitReachedModelObj,
                    builder: (context, feedbackBoxLimitReachedModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(left: 24.h),
                          child: CustomImageView(
                            imagePath:
                                ImageConstant.imgCheckmarkBlueGray40014x20,
                            height: 14.h,
                            width: 20.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        iconSize: 14.h,
                        hintText: "lbl_deposit_issues".tr,
                        hintStyle: CustomTextStyles.bodyMediumBluegray400,
                        items:
                            feedbackBoxLimitReachedModelObj?.dropdownItemList ??
                            [],
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 12.h,
                        ),
                        borderDecoration: DropDownStyleHelper.fillBlueGray,
                        fillColor: appTheme.blueGray70001,
                      );
                    },
                  ),
                  SizedBox(height: 12.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "msg_please_describe".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  BlocSelector<
                    FeedbackBoxLimitReachedBloc,
                    FeedbackBoxLimitReachedState,
                    TextEditingController?
                  >(
                    selector: (state) => state.pleaseenteroneController,
                    builder: (context, pleaseenteroneController) {
                      return CustomTextFormField(
                        controller: pleaseenteroneController,
                        hintText: "lbl_please_enter".tr,
                        textInputAction: TextInputAction.done,
                        maxLines: 6,
                        contentPadding: EdgeInsets.fromLTRB(
                          10.h,
                          8.h,
                          10.h,
                          12.h,
                        ),
                        borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                        fillColor: appTheme.blueGray70001,
                      );
                    },
                  ),
                  SizedBox(height: 24.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomElevatedButton(
                            height: 40.h,
                            text: "lbl_cancel".tr,
                            buttonStyle: CustomButtonStyles.fillGrayTL41,
                            buttonTextStyle: theme.textTheme.bodyLarge!,
                          ),
                        ),
                        Expanded(
                          child: CustomElevatedButton(
                            height: 40.h,
                            text: "lbl_submit".tr,
                            buttonStyle: CustomButtonStyles.fillBlueGrayTL4,
                            buttonTextStyle:
                                CustomTextStyles.bodyLargeBluegray400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVideoCameraRedA20002,
                        height: 14.h,
                        width: 14.h,
                        alignment: Alignment.topCenter,
                      ),
                      Text(
                        "msg_daily_limit_of_5".tr,
                        style: CustomTextStyles.bodyMediumRedA20003,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/home_info_popup_simplified_text_bloc.dart';
import 'models/home_info_popup_simplified_text_model.dart'; // ignore_for_file: must_be_immutable

class HomeInfoPopupSimplifiedTextDialog extends StatelessWidget {
  const HomeInfoPopupSimplifiedTextDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeInfoPopupSimplifiedTextBloc>(
      create:
          (context) => HomeInfoPopupSimplifiedTextBloc(
            HomeInfoPopupSimplifiedTextState(
              homeInfoPopupSimplifiedTextModelObj:
                  HomeInfoPopupSimplifiedTextModel(),
            ),
          )..add(HomeInfoPopupSimplifiedTextInitialEvent()),
      child: HomeInfoPopupSimplifiedTextDialog(),
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
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.h),
          decoration: AppDecoration.fillOnPrimary1.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "lbl_description".tr,
                style: CustomTextStyles.titleMediumBlack900,
              ),
              SizedBox(height: 10.h),
              Text(
                "msg_he_invited_users".tr,
                style: CustomTextStyles.labelLargeBluegray500,
              ),
              SizedBox(height: 14.h),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "\n", style: theme.textTheme.bodySmall),
                    TextSpan(
                      text: "msg_1_qualified_users".tr,
                      style: CustomTextStyles.titleSmallBlack900_1,
                    ),
                    TextSpan(
                      text: "msg_the_minimum_deposit".tr,
                      style: CustomTextStyles.bodySmallBluegray500,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_remark".tr,
                          style: CustomTextStyles.titleSmallBlack900_1,
                        ),
                        TextSpan(text: " "),
                        TextSpan(
                          text: "msg_once_the_number".tr,
                          style: CustomTextStyles.bodySmallBluegray500,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(height: 44.h),
              CustomElevatedButton(
                height: 44.h,
                text: "lbl_confirm".tr,
                buttonStyle: CustomButtonStyles.fillLightGreenATL8,
                buttonTextStyle: theme.textTheme.titleMedium!,
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ],
    );
  }
}

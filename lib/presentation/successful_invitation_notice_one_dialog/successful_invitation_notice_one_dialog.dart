import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/successful_invitation_notice_one_bloc.dart';
import 'models/successful_invitation_notice_one_model.dart'; // ignore_for_file: must_be_immutable

class SuccessfulInvitationNoticeOneDialog extends StatelessWidget {
  const SuccessfulInvitationNoticeOneDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SuccessfulInvitationNoticeOneBloc>(
      create:
          (context) => SuccessfulInvitationNoticeOneBloc(
            SuccessfulInvitationNoticeOneState(
              successfulInvitationNoticeOneModelObj:
                  SuccessfulInvitationNoticeOneModel(),
            ),
          )..add(SuccessfulInvitationNoticeOneInitialEvent()),
      child: SuccessfulInvitationNoticeOneDialog(),
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
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 20.h),
          decoration: AppDecoration.gradientBlueGrayToBluegray80011.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 24.h),
              Text(
                "msg_helping_you_succeed".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUp42x44,
                    height: 38.h,
                    width: 40.h,
                  ),
                  Text(
                    "lbl_1500".tr,
                    style: CustomTextStyles.headlineLargeYellowA40002,
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_you_invite_new_friends".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary_2,
                    ),
                    TextSpan(
                      text: "lbl_99_39".tr,
                      style: CustomTextStyles.bodyMediumYellowA40002_1,
                    ),
                    TextSpan(
                      text: "msg_to_register_and2".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary_2,
                    ),
                    TextSpan(
                      text: "lbl_0_900".tr,
                      style: CustomTextStyles.bodyMediumYellowA40002_1,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 26.h),
              CustomElevatedButton(
                height: 40.h,
                text: "lbl_get_it".tr,
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles
                        .gradientLightGreenAToLightGreenTL22Decoration,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

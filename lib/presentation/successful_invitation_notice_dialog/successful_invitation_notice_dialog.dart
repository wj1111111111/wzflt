import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/successful_invitation_notice_bloc.dart';
import 'models/successful_invitation_notice_model.dart'; // ignore_for_file: must_be_immutable

class SuccessfulInvitationNoticeDialog extends StatelessWidget {
  const SuccessfulInvitationNoticeDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SuccessfulInvitationNoticeBloc>(
      create:
          (context) => SuccessfulInvitationNoticeBloc(
            SuccessfulInvitationNoticeState(
              successfulInvitationNoticeModelObj:
                  SuccessfulInvitationNoticeModel(),
            ),
          )..add(SuccessfulInvitationNoticeInitialEvent()),
      child: SuccessfulInvitationNoticeDialog(),
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
              SizedBox(height: 22.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame213133043440x40,
                    height: 40.h,
                    width: 40.h,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "lbl_1_free_spin".tr,
                      style: CustomTextStyles.titleLargeYellowA40002,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_invite_new_friends".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary_2,
                    ),
                    TextSpan(
                      text: "lbl_99_39".tr,
                      style: CustomTextStyles.bodyMediumYellowA40002_1,
                    ),
                    TextSpan(
                      text: "msg_to_register_and".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary_2,
                    ),
                    TextSpan(
                      text: "lbl_1_free_spin2".tr,
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

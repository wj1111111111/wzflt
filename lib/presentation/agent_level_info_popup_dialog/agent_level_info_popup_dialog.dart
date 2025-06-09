import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/agent_level_info_popup_bloc.dart';
import 'models/agent_level_info_popup_model.dart'; // ignore_for_file: must_be_immutable

class AgentLevelInfoPopupDialog extends StatelessWidget {
  const AgentLevelInfoPopupDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AgentLevelInfoPopupBloc>(
      create:
          (context) => AgentLevelInfoPopupBloc(
            AgentLevelInfoPopupState(
              agentLevelInfoPopupModelObj: AgentLevelInfoPopupModel(),
            ),
          )..add(AgentLevelInfoPopupInitialEvent()),
      child: AgentLevelInfoPopupDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [_buildStackdescriptio(context)],
    );
  }

  /// Section Widget
  Widget _buildStackdescriptio(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.zero,
        color: appTheme.gray90001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder10,
        ),
        child: Container(
          height: 336.h,
          decoration: AppDecoration.fs4bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 24.h, top: 16.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "lbl_description".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 14.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.maxFinite,
                              child: _buildRowoneThree(
                                context,
                                oneThree: ImageConstant.img1Black90014x14,
                                agentOne: "lbl_today_data".tr,
                              ),
                            ),
                            Text(
                              "msg_it_will_be_updated".tr,
                              style: CustomTextStyles.bodyMediumBluegray400,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 18.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: _buildRowoneThree(
                          context,
                          oneThree: ImageConstant.img114x14,
                          agentOne: "msg_agent_privileges".tr,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "msg_registration_bonus_deposit".tr,
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumBluegray400
                              .copyWith(height: 1.14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomElevatedButton(
                height: 54.h,
                text: "lbl_confirm".tr,
                buttonStyle: CustomButtonStyles.fillBlueGrayBL12,
                buttonTextStyle: CustomTextStyles.titleMediumLightgreenA700,
                alignment: Alignment.bottomCenter,
              ),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 16.h, top: 14.h, right: 16.h),
                decoration: AppDecoration.fs4bg.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder10,
                ),
                child: Column(
                  spacing: 12,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "lbl_description".tr,
                      style: CustomTextStyles.titleMediumSFProText_1,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_agent_tier_updates".tr,
                            style: CustomTextStyles.titleSmallSFProText_1,
                          ),
                          TextSpan(
                            text: "msg_it_will_be_updated2".tr,
                            style:
                                CustomTextStyles.bodyMediumSFProTextBluegray500,
                          ),
                          TextSpan(
                            text: "msg_upgrade_requirements".tr,
                            style: CustomTextStyles.titleSmallSFProText_1,
                          ),
                          TextSpan(
                            text: "msg_you_need_to_meet".tr,
                            style:
                                CustomTextStyles.bodyMediumSFProTextBluegray500,
                          ),
                          TextSpan(
                            text: "msg_agent_benefits".tr,
                            style: CustomTextStyles.titleSmallSFProText_1,
                          ),
                          TextSpan(
                            text: "msg_the_higher_the_agent_s".tr,
                            style:
                                CustomTextStyles.bodyMediumSFProTextBluegray500,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 12,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 62.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildRowoneThree(
    BuildContext context, {
    required String oneThree,
    required String agentOne,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: oneThree,
          height: 14.h,
          width: 14.h,
          alignment: Alignment.topCenter,
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            agentOne,
            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ),
      ],
    );
  }
}

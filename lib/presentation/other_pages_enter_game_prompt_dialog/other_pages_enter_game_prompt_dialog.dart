import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/other_pages_enter_game_prompt_bloc.dart';
import 'models/other_pages_enter_game_prompt_model.dart'; // ignore_for_file: must_be_immutable

class OtherPagesEnterGamePromptDialog extends StatelessWidget {
  const OtherPagesEnterGamePromptDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OtherPagesEnterGamePromptBloc>(
      create:
          (context) => OtherPagesEnterGamePromptBloc(
            OtherPagesEnterGamePromptState(
              otherPagesEnterGamePromptModelObj:
                  OtherPagesEnterGamePromptModel(),
            ),
          )..add(OtherPagesEnterGamePromptInitialEvent()),
      child: OtherPagesEnterGamePromptDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 208.h,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 16.h),
          decoration: AppDecoration.fs4bg.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Column(
            spacing: 22,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("lbl_tips2".tr, style: theme.textTheme.titleMedium),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_experience_bonus".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary_2,
                    ),
                    TextSpan(
                      text: "msg_12_00_for_new_users".tr,
                      style: CustomTextStyles.titleSmallLightgreenA700_1,
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

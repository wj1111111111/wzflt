import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/achievement_rewards_rules_bloc.dart';
import 'models/achievement_rewards_rules_model.dart'; // ignore_for_file: must_be_immutable

class AchievementRewardsRulesBottomsheet extends StatelessWidget {
  const AchievementRewardsRulesBottomsheet({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AchievementRewardsRulesBloc>(
      create:
          (context) => AchievementRewardsRulesBloc(
            AchievementRewardsRulesState(
              achievementRewardsRulesModelObj: AchievementRewardsRulesModel(),
            ),
          )..add(AchievementRewardsRulesInitialEvent()),
      child: AchievementRewardsRulesBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.h),
      decoration: AppDecoration.fs4bg.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.outlineBlack900,
              child: Text(
                "lbl_rule".tr,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleMedium18,
              ),
            ),
          ),
          Text(
            "msg_you_will_receive".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyMediumBluegray40015.copyWith(
              height: 1.20,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/leaderboard_my_prizes_one_bloc.dart';
import 'models/leaderboard_my_prizes_one_model.dart'; // ignore_for_file: must_be_immutable

class LeaderboardMyPrizesOneDialog extends StatelessWidget {
  const LeaderboardMyPrizesOneDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LeaderboardMyPrizesOneBloc>(
      create:
          (context) => LeaderboardMyPrizesOneBloc(
            LeaderboardMyPrizesOneState(
              leaderboardMyPrizesOneModelObj: LeaderboardMyPrizesOneModel(),
            ),
          )..add(LeaderboardMyPrizesOneInitialEvent()),
      child: LeaderboardMyPrizesOneDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.h),
          decoration: AppDecoration.fillBluegray70001.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder14,
          ),
          child: Column(
            spacing: 12,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkOnprimary,
                height: 42.h,
                width: 52.h,
              ),
              Text(
                "msg_received_successfully2".tr,
                style: CustomTextStyles.bodyMediumOnPrimary13,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

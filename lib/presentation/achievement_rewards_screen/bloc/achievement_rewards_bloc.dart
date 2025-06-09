import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/achievement_rewards_model.dart';
import '../models/listinvite_one_item_model.dart';
part 'achievement_rewards_event.dart';
part 'achievement_rewards_state.dart';

/// A bloc that manages the state of a AchievementRewards according to the event that is dispatched to it.
class AchievementRewardsBloc
    extends Bloc<AchievementRewardsEvent, AchievementRewardsState> {
  AchievementRewardsBloc(AchievementRewardsState initialState)
    : super(initialState) {
    on<AchievementRewardsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AchievementRewardsInitialEvent event,
    Emitter<AchievementRewardsState> emit,
  ) async {
    emit(
      state.copyWith(
        achievementRewardsModelObj: state.achievementRewardsModelObj?.copyWith(
          listinviteOneItemList: fillListinviteOneItemList(),
        ),
      ),
    );
  }

  List<ListinviteOneItemModel> fillListinviteOneItemList() {
    return [
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgFrameBlueGray400,
        inviteTwo: "lbl_invite".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgFrameBlueGray40020x20,
        inviteTwo: "lbl_teams".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgFrame20x20,
        inviteTwo: "lbl_incomes".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgGroup1321314646,
        inviteTwo: "lbl_bonus3".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgFrame1321314655,
        inviteTwo: "lbl_faq".tr,
      ),
      ListinviteOneItemModel(),
    ];
  }
}

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/achievement_rewards_invitation_model.dart';
import '../models/listmore_one_item_model.dart';
part 'achievement_rewards_invitation_event.dart';
part 'achievement_rewards_invitation_state.dart';

/// A bloc that manages the state of a AchievementRewardsInvitation according to the event that is dispatched to it.
class AchievementRewardsInvitationBloc
    extends
        Bloc<
          AchievementRewardsInvitationEvent,
          AchievementRewardsInvitationState
        > {
  AchievementRewardsInvitationBloc(
    AchievementRewardsInvitationState initialState,
  ) : super(initialState) {
    on<AchievementRewardsInvitationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AchievementRewardsInvitationInitialEvent event,
    Emitter<AchievementRewardsInvitationState> emit,
  ) async {
    emit(
      state.copyWith(
        achievementRewardsInvitationModelObj: state
            .achievementRewardsInvitationModelObj
            ?.copyWith(listmoreOneItemList: fillListmoreOneItemList()),
      ),
    );
  }

  List<ListmoreOneItemModel> fillListmoreOneItemList() {
    return [
      ListmoreOneItemModel(
        moreOne: ImageConstant.imgVectorOnprimary,
        moreTwo: "lbl_more".tr,
      ),
      ListmoreOneItemModel(moreTwo: "lbl_whatsapp".tr),
      ListmoreOneItemModel(moreTwo: "lbl_telegram".tr),
      ListmoreOneItemModel(moreTwo: "lbl_facebook".tr),
      ListmoreOneItemModel(moreTwo: "lbl_twitter".tr),
      ListmoreOneItemModel(moreTwo: "lbl_mail".tr),
    ];
  }
}

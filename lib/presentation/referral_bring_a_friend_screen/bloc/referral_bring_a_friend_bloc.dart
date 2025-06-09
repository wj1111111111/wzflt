import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/gridqualifiedbo_item_model.dart';
import '../models/referral_bring_a_friend_model.dart';
part 'referral_bring_a_friend_event.dart';
part 'referral_bring_a_friend_state.dart';

/// A bloc that manages the state of a ReferralBringAFriend according to the event that is dispatched to it.
class ReferralBringAFriendBloc
    extends Bloc<ReferralBringAFriendEvent, ReferralBringAFriendState> {
  ReferralBringAFriendBloc(ReferralBringAFriendState initialState)
    : super(initialState) {
    on<ReferralBringAFriendInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReferralBringAFriendInitialEvent event,
    Emitter<ReferralBringAFriendState> emit,
  ) async {
    emit(
      state.copyWith(
        referralBringAFriendModelObj: state.referralBringAFriendModelObj
            ?.copyWith(gridqualifiedboItemList: fillGridqualifiedboItemList()),
      ),
    );
  }

  List<GridqualifiedboItemModel> fillGridqualifiedboItemList() {
    return [
      GridqualifiedboItemModel(
        qualifiedbonus: "lbl_qualified_bonus".tr,
        price: "lbl_168".tr,
      ),
      GridqualifiedboItemModel(
        qualifiedbonus: "msg_achievement_reward".tr,
        price: "lbl_88888".tr,
      ),
      GridqualifiedboItemModel(
        qualifiedbonus: "lbl_deposit_rebate".tr,
        price: "lbl_1".tr,
      ),
      GridqualifiedboItemModel(
        qualifiedbonus: "lbl_betting_rebate".tr,
        price: "lbl_0_8".tr,
      ),
    ];
  }
}

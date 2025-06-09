import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/bonus_details_item_model.dart';
import '../models/bonus_details_model.dart';
part 'bonus_details_event.dart';
part 'bonus_details_state.dart';

/// A bloc that manages the state of a BonusDetails according to the event that is dispatched to it.
class BonusDetailsBloc extends Bloc<BonusDetailsEvent, BonusDetailsState> {
  BonusDetailsBloc(BonusDetailsState initialState) : super(initialState) {
    on<BonusDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BonusDetailsInitialEvent event,
    Emitter<BonusDetailsState> emit,
  ) async {
    emit(
      state.copyWith(
        bonusDetailsModelObj: state.bonusDetailsModelObj?.copyWith(
          bonusDetailsItemList: fillBonusDetailsItemList(),
        ),
      ),
    );
  }

  List<BonusDetailsItemModel> fillBonusDetailsItemList() {
    return [
      BonusDetailsItemModel(
        inviteBonus: ImageConstant.imgInvite132x32,
        invitebonus1: "lbl_invite_bonus".tr,
        price: "msg_total_19999_80".tr,
        priceOne: "lbl_99".tr,
        invite: "msg_invite_registration".tr,
        priceTwo: "lbl_102".tr,
        invitedeposit: "lbl_invite_deposit".tr,
        priceThree: "lbl_102".tr,
        invitation: "msg_invitation_qualified".tr,
        priceFour: "lbl_4900_70".tr,
        bettingrebate: "lbl_betting_rebate".tr,
        priceFive: "lbl_304".tr,
        inviteesbonus: "lbl_invitees_bonus".tr,
      ),
      BonusDetailsItemModel(
        inviteBonus: ImageConstant.imgVector24x26,
        invitebonus1: "lbl_deposit_bonus".tr,
        price: "lbl_total_399_80".tr,
      ),
      BonusDetailsItemModel(
        inviteBonus: ImageConstant.imgClose20x34,
        invitebonus1: "lbl_vip_bouns".tr,
        price: "msg_total_19999_80".tr,
      ),
      BonusDetailsItemModel(),
      BonusDetailsItemModel(),
      BonusDetailsItemModel(),
      BonusDetailsItemModel(),
      BonusDetailsItemModel(),
      BonusDetailsItemModel(),
      BonusDetailsItemModel(),
    ];
  }
}

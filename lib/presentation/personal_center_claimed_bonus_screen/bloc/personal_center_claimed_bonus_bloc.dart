import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listbettingreco_item_model.dart';
import '../models/listinvite_one_item_model.dart';
import '../models/personal_center_claimed_bonus_model.dart';
part 'personal_center_claimed_bonus_event.dart';
part 'personal_center_claimed_bonus_state.dart';

/// A bloc that manages the state of a PersonalCenterClaimedBonus according to the event that is dispatched to it.
class PersonalCenterClaimedBonusBloc
    extends
        Bloc<PersonalCenterClaimedBonusEvent, PersonalCenterClaimedBonusState> {
  PersonalCenterClaimedBonusBloc(PersonalCenterClaimedBonusState initialState)
    : super(initialState) {
    on<PersonalCenterClaimedBonusInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PersonalCenterClaimedBonusInitialEvent event,
    Emitter<PersonalCenterClaimedBonusState> emit,
  ) async {
    emit(
      state.copyWith(
        personalCenterClaimedBonusModelObj: state
            .personalCenterClaimedBonusModelObj
            ?.copyWith(
              listinviteOneItemList: fillListinviteOneItemList(),
              listbettingrecoItemList: fillListbettingrecoItemList(),
            ),
      ),
    );
  }

  List<ListinviteOneItemModel> fillListinviteOneItemList() {
    return [
      ListinviteOneItemModel(inviteTwo: "lbl_invite3".tr),
      ListinviteOneItemModel(),
      ListinviteOneItemModel(),
      ListinviteOneItemModel(),
    ];
  }

  List<ListbettingrecoItemModel> fillListbettingrecoItemList() {
    return [
      ListbettingrecoItemModel(
        bettingrecord: ImageConstant.imgVector26x26,
        bettingrecord1: "lbl_betting_record".tr,
      ),
      ListbettingrecoItemModel(
        bettingrecord: ImageConstant.imgVector26x20,
        bettingrecord1: "lbl_account_record".tr,
      ),
      ListbettingrecoItemModel(
        bettingrecord: ImageConstant.imgVector24x26,
        bettingrecord1: "lbl_deposit_record".tr,
      ),
      ListbettingrecoItemModel(
        bettingrecord: ImageConstant.imgVector26x24,
        bettingrecord1: "msg_withdrawal_record".tr,
      ),
    ];
  }
}

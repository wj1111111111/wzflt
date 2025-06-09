import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listbettingreco_item_model.dart';
import '../models/listinvite_one_item_model.dart';
import '../models/trial_money_personal_center_entry_model.dart';
part 'trial_money_personal_center_entry_event.dart';
part 'trial_money_personal_center_entry_state.dart';

/// A bloc that manages the state of a TrialMoneyPersonalCenterEntry according to the event that is dispatched to it.
class TrialMoneyPersonalCenterEntryBloc
    extends
        Bloc<
          TrialMoneyPersonalCenterEntryEvent,
          TrialMoneyPersonalCenterEntryState
        > {
  TrialMoneyPersonalCenterEntryBloc(
    TrialMoneyPersonalCenterEntryState initialState,
  ) : super(initialState) {
    on<TrialMoneyPersonalCenterEntryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrialMoneyPersonalCenterEntryInitialEvent event,
    Emitter<TrialMoneyPersonalCenterEntryState> emit,
  ) async {
    emit(state.copyWith(enterthegiftController: TextEditingController()));
    emit(
      state.copyWith(
        trialMoneyPersonalCenterEntryModelObj: state
            .trialMoneyPersonalCenterEntryModelObj
            ?.copyWith(
              listinviteOneItemList: fillListinviteOneItemList(),
              listbettingrecoItemList: fillListbettingrecoItemList(),
            ),
      ),
    );
  }

  List<ListinviteOneItemModel> fillListinviteOneItemList() {
    return [
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgInvite1,
        inviteTwo: "lbl_invite3".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgCloseOnprimary30x30,
        inviteTwo: "lbl_spin".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgGroup120051,
        inviteTwo: "lbl_cashback".tr,
      ),
      ListinviteOneItemModel(
        inviteOne: ImageConstant.imgAdd2e694b509077,
        inviteTwo: "lbl_sign_in".tr,
      ),
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

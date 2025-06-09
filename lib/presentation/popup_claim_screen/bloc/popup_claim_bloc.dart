import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/popup_claim_model.dart';
import '../models/popup_claim_one_item_model.dart';
part 'popup_claim_event.dart';
part 'popup_claim_state.dart';

/// A bloc that manages the state of a PopupClaim according to the event that is dispatched to it.
class PopupClaimBloc extends Bloc<PopupClaimEvent, PopupClaimState> {
  PopupClaimBloc(PopupClaimState initialState) : super(initialState) {
    on<PopupClaimInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PopupClaimInitialEvent event,
    Emitter<PopupClaimState> emit,
  ) async {
    emit(
      state.copyWith(
        popupClaimModelObj: state.popupClaimModelObj?.copyWith(
          popupClaimOneItemList: fillPopupClaimOneItemList(),
        ),
      ),
    );
  }

  List<PopupClaimOneItemModel> fillPopupClaimOneItemList() {
    return [
      PopupClaimOneItemModel(
        registration: "msg_registration_bonus".tr,
        yourbonus: "lbl_your_bonus".tr,
      ),
      PopupClaimOneItemModel(
        registration: "lbl_agent_ranking".tr,
        yourbonus: "lbl_your_bonus".tr,
      ),
      PopupClaimOneItemModel(),
    ];
  }
}

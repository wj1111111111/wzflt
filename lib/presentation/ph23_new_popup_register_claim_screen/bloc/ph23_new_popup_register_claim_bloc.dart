import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listcumulative_item_model.dart';
import '../models/ph23_new_popup_register_claim_model.dart';
part 'ph23_new_popup_register_claim_event.dart';
part 'ph23_new_popup_register_claim_state.dart';

/// A bloc that manages the state of a Ph23NewPopupRegisterClaim according to the event that is dispatched to it.
class Ph23NewPopupRegisterClaimBloc
    extends
        Bloc<Ph23NewPopupRegisterClaimEvent, Ph23NewPopupRegisterClaimState> {
  Ph23NewPopupRegisterClaimBloc(Ph23NewPopupRegisterClaimState initialState)
    : super(initialState) {
    on<Ph23NewPopupRegisterClaimInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Ph23NewPopupRegisterClaimInitialEvent event,
    Emitter<Ph23NewPopupRegisterClaimState> emit,
  ) async {
    emit(
      state.copyWith(
        ph23NewPopupRegisterClaimModelObj: state
            .ph23NewPopupRegisterClaimModelObj
            ?.copyWith(listcumulativeItemList: fillListcumulativeItemList()),
      ),
    );
  }

  List<ListcumulativeItemModel> fillListcumulativeItemList() {
    return [
      ListcumulativeItemModel(
        cumulative: "msg_cumulative_deposit2".tr,
        yourbonus: "lbl_your_bonus".tr,
        price: "lbl_300_00".tr,
      ),
      ListcumulativeItemModel(
        cumulative: "msg_registration_bonus".tr,
        yourbonus: "lbl_your_bonus".tr,
        price: "lbl_12_003".tr,
      ),
      ListcumulativeItemModel(),
    ];
  }
}

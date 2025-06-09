import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/popup_claim_one_item_model.dart';
import '../models/popup_claim_one_model.dart';
part 'popup_claim_one_event.dart';
part 'popup_claim_one_state.dart';

/// A bloc that manages the state of a PopupClaimOne according to the event that is dispatched to it.
class PopupClaimOneBloc extends Bloc<PopupClaimOneEvent, PopupClaimOneState> {
  PopupClaimOneBloc(PopupClaimOneState initialState) : super(initialState) {
    on<PopupClaimOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PopupClaimOneInitialEvent event,
    Emitter<PopupClaimOneState> emit,
  ) async {
    emit(
      state.copyWith(
        popupClaimOneModelObj: state.popupClaimOneModelObj?.copyWith(
          popupClaimOneItemList: fillPopupClaimOneItemList(),
        ),
      ),
    );
  }

  List<PopupClaimOneItemModel> fillPopupClaimOneItemList() {
    return [
      PopupClaimOneItemModel(
        experience: "lbl_experience".tr,
        experience1: "msg_experience_bonus2".tr,
        yourbonus: "lbl_your_bonus".tr,
        tf: "lbl22".tr,
      ),
      PopupClaimOneItemModel(),
      PopupClaimOneItemModel(),
    ];
  }
}

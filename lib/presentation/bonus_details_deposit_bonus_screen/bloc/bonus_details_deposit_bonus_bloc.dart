import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/bonus_details_deposit_bonus_model.dart';
import '../models/listdate_item_model.dart';
import '../models/scrollview_tab1_model.dart';
part 'bonus_details_deposit_bonus_event.dart';
part 'bonus_details_deposit_bonus_state.dart';

/// A bloc that manages the state of a BonusDetailsDepositBonus according to the event that is dispatched to it.
class BonusDetailsDepositBonusBloc
    extends Bloc<BonusDetailsDepositBonusEvent, BonusDetailsDepositBonusState> {
  BonusDetailsDepositBonusBloc(BonusDetailsDepositBonusState initialState)
    : super(initialState) {
    on<BonusDetailsDepositBonusInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BonusDetailsDepositBonusInitialEvent event,
    Emitter<BonusDetailsDepositBonusState> emit,
  ) async {
    emit(state.copyWith(calendaroneController: TextEditingController()));
    emit(
      state.copyWith(
        scrollviewTab1ModelObj: state.scrollviewTab1ModelObj?.copyWith(
          listdateItemList: fillListdateItemList(),
          dropdownItemList: fillDropdownItemList(),
        ),
      ),
    );
  }

  List<ListdateItemModel> fillListdateItemList() {
    return [
      ListdateItemModel(
        date: "lbl_date".tr,
        group10344: "msg_2023_09_09_19_00".tr,
        group10343: "msg_2023_09_09_19_00".tr,
        group10342: "msg_2023_09_09_19_00".tr,
        group10341: "msg_2023_09_09_19_00".tr,
      ),
      ListdateItemModel(
        date: "lbl_teams".tr,
        group10344: "lbl_898_33".tr,
        group10343: "lbl_898_33".tr,
        group10342: "lbl_898_33".tr,
        group10341: "lbl_898_33".tr,
      ),
      ListdateItemModel(
        date: "lbl_bonus".tr,
        group10344: "lbl_9_80".tr,
        group10343: "lbl_9_80".tr,
        group10342: "lbl_9_80".tr,
        group10341: "lbl_9_80".tr,
      ),
      ListdateItemModel(
        group10344: "lbl_3002".tr,
        group10343: "lbl_3002".tr,
        group10342: "lbl_3002".tr,
        group10341: "lbl_3002".tr,
      ),
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three"),
    ];
  }
}

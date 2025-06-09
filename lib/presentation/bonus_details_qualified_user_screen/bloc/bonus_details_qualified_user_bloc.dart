import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/bonus_details_qualified_user_model.dart';
import '../models/listdate_item_model.dart';
import '../models/scrollview_tab2_model.dart';
part 'bonus_details_qualified_user_event.dart';
part 'bonus_details_qualified_user_state.dart';

/// A bloc that manages the state of a BonusDetailsQualifiedUser according to the event that is dispatched to it.
class BonusDetailsQualifiedUserBloc
    extends
        Bloc<BonusDetailsQualifiedUserEvent, BonusDetailsQualifiedUserState> {
  BonusDetailsQualifiedUserBloc(BonusDetailsQualifiedUserState initialState)
    : super(initialState) {
    on<BonusDetailsQualifiedUserInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BonusDetailsQualifiedUserInitialEvent event,
    Emitter<BonusDetailsQualifiedUserState> emit,
  ) async {
    emit(state.copyWith(calendaroneController: TextEditingController()));
    emit(
      state.copyWith(
        scrollviewTab2ModelObj: state.scrollviewTab2ModelObj?.copyWith(
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
        group10423: "msg_2023_09_09_19_00".tr,
        group10422: "msg_2023_09_09_19_00".tr,
        group10421: "msg_2023_09_09_19_00".tr,
        group10420: "msg_2023_09_09_19_00".tr,
      ),
      ListdateItemModel(
        date: "lbl_teams".tr,
        group10423: "lbl_898_33".tr,
        group10422: "lbl_898_33".tr,
        group10421: "lbl_898_33".tr,
        group10420: "lbl_898_33".tr,
      ),
      ListdateItemModel(
        date: "lbl_bonus".tr,
        group10423: "lbl_9_80".tr,
        group10422: "lbl_9_80".tr,
        group10421: "lbl_9_80".tr,
        group10420: "lbl_9_80".tr,
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

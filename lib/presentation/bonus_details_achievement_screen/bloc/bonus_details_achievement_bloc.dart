import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/bonus_details_achievement_model.dart';
import '../models/listdate_item_model.dart';
import '../models/scrollview_tab3_model.dart';
part 'bonus_details_achievement_event.dart';
part 'bonus_details_achievement_state.dart';

/// A bloc that manages the state of a BonusDetailsAchievement according to the event that is dispatched to it.
class BonusDetailsAchievementBloc
    extends Bloc<BonusDetailsAchievementEvent, BonusDetailsAchievementState> {
  BonusDetailsAchievementBloc(BonusDetailsAchievementState initialState)
    : super(initialState) {
    on<BonusDetailsAchievementInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BonusDetailsAchievementInitialEvent event,
    Emitter<BonusDetailsAchievementState> emit,
  ) async {
    emit(state.copyWith(calendaroneController: TextEditingController()));
    emit(
      state.copyWith(
        scrollviewTab3ModelObj: state.scrollviewTab3ModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
          listdateItemList: fillListdateItemList(),
        ),
      ),
    );
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three"),
    ];
  }

  List<ListdateItemModel> fillListdateItemList() {
    return [
      ListdateItemModel(
        date: "lbl_date".tr,
        group10572: "msg_2023_09_09_19_00".tr,
        group10571: "msg_2023_09_09_19_00".tr,
        group10569: "msg_2023_09_09_19_00".tr,
        group10567: "msg_2023_09_09_19_00".tr,
      ),
      ListdateItemModel(
        date: "lbl_ranking2".tr,
        group10572: "lbl_52".tr,
        group10571: "lbl_10".tr,
        group10569: "lbl_20".tr,
        group10567: "lbl_50".tr,
      ),
      ListdateItemModel(
        date: "lbl_bonus".tr,
        group10572: "lbl_88_80".tr,
        group10571: "lbl_188_80".tr,
        group10569: "lbl_388_80".tr,
        group10567: "lbl_888_80".tr,
      ),
    ];
  }
}

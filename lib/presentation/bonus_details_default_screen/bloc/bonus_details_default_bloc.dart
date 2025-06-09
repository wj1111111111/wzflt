import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/bonus_details_default_model.dart';
import '../models/scrollview_tab4_model.dart';
part 'bonus_details_default_event.dart';
part 'bonus_details_default_state.dart';

/// A bloc that manages the state of a BonusDetailsDefault according to the event that is dispatched to it.
class BonusDetailsDefaultBloc
    extends Bloc<BonusDetailsDefaultEvent, BonusDetailsDefaultState> {
  BonusDetailsDefaultBloc(BonusDetailsDefaultState initialState)
    : super(initialState) {
    on<BonusDetailsDefaultInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BonusDetailsDefaultInitialEvent event,
    Emitter<BonusDetailsDefaultState> emit,
  ) async {
    emit(state.copyWith(calendaroneController: TextEditingController()));
    emit(
      state.copyWith(
        scrollviewTab4ModelObj: state.scrollviewTab4ModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
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
}

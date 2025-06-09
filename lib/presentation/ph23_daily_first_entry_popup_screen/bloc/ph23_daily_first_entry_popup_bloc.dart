import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listone_one_item_model.dart';
import '../models/ph23_daily_first_entry_popup_model.dart';
part 'ph23_daily_first_entry_popup_event.dart';
part 'ph23_daily_first_entry_popup_state.dart';

/// A bloc that manages the state of a Ph23DailyFirstEntryPopup according to the event that is dispatched to it.
class Ph23DailyFirstEntryPopupBloc
    extends Bloc<Ph23DailyFirstEntryPopupEvent, Ph23DailyFirstEntryPopupState> {
  Ph23DailyFirstEntryPopupBloc(Ph23DailyFirstEntryPopupState initialState)
    : super(initialState) {
    on<Ph23DailyFirstEntryPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Ph23DailyFirstEntryPopupInitialEvent event,
    Emitter<Ph23DailyFirstEntryPopupState> emit,
  ) async {
    emit(
      state.copyWith(
        ph23DailyFirstEntryPopupModelObj: state.ph23DailyFirstEntryPopupModelObj
            ?.copyWith(listoneOneItemList: fillListoneOneItemList()),
      ),
    );
  }

  List<ListoneOneItemModel> fillListoneOneItemList() {
    return [
      ListoneOneItemModel(oneOne: "lbl_12".tr),
      ListoneOneItemModel(oneOne: "lbl_22".tr),
      ListoneOneItemModel(oneOne: "lbl_3".tr),
      ListoneOneItemModel(oneOne: "lbl_4".tr),
      ListoneOneItemModel(oneOne: "lbl_6".tr),
      ListoneOneItemModel(oneOne: "lbl_7".tr),
      ListoneOneItemModel(),
    ];
  }
}

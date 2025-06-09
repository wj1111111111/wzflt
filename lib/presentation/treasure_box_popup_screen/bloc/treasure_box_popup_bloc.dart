import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/treasure_box_popup_model.dart';
part 'treasure_box_popup_event.dart';
part 'treasure_box_popup_state.dart';

/// A bloc that manages the state of a TreasureBoxPopup according to the event that is dispatched to it.
class TreasureBoxPopupBloc
    extends Bloc<TreasureBoxPopupEvent, TreasureBoxPopupState> {
  TreasureBoxPopupBloc(TreasureBoxPopupState initialState)
    : super(initialState) {
    on<TreasureBoxPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TreasureBoxPopupInitialEvent event,
    Emitter<TreasureBoxPopupState> emit,
  ) async {}
}

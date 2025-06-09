import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_single_game_entry_popup_model.dart';
part 'home_single_game_entry_popup_event.dart';
part 'home_single_game_entry_popup_state.dart';

/// A bloc that manages the state of a HomeSingleGameEntryPopup according to the event that is dispatched to it.
class HomeSingleGameEntryPopupBloc
    extends Bloc<HomeSingleGameEntryPopupEvent, HomeSingleGameEntryPopupState> {
  HomeSingleGameEntryPopupBloc(HomeSingleGameEntryPopupState initialState)
    : super(initialState) {
    on<HomeSingleGameEntryPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeSingleGameEntryPopupInitialEvent event,
    Emitter<HomeSingleGameEntryPopupState> emit,
  ) async {}
}

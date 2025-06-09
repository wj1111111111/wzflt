import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/not_winner_popup_model.dart';
part 'not_winner_popup_event.dart';
part 'not_winner_popup_state.dart';

/// A bloc that manages the state of a NotWinnerPopup according to the event that is dispatched to it.
class NotWinnerPopupBloc
    extends Bloc<NotWinnerPopupEvent, NotWinnerPopupState> {
  NotWinnerPopupBloc(NotWinnerPopupState initialState) : super(initialState) {
    on<NotWinnerPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotWinnerPopupInitialEvent event,
    Emitter<NotWinnerPopupState> emit,
  ) async {}
}

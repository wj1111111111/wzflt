import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/new_spin_event_popup_model.dart';
part 'new_spin_event_popup_event.dart';
part 'new_spin_event_popup_state.dart';

/// A bloc that manages the state of a NewSpinEventPopup according to the event that is dispatched to it.
class NewSpinEventPopupBloc
    extends Bloc<NewSpinEventPopupEvent, NewSpinEventPopupState> {
  NewSpinEventPopupBloc(NewSpinEventPopupState initialState)
    : super(initialState) {
    on<NewSpinEventPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewSpinEventPopupInitialEvent event,
    Emitter<NewSpinEventPopupState> emit,
  ) async {}
}

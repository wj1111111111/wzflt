import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/new_spin_event_popup_one_model.dart';
part 'new_spin_event_popup_one_event.dart';
part 'new_spin_event_popup_one_state.dart';

/// A bloc that manages the state of a NewSpinEventPopupOne according to the event that is dispatched to it.
class NewSpinEventPopupOneBloc
    extends Bloc<NewSpinEventPopupOneEvent, NewSpinEventPopupOneState> {
  NewSpinEventPopupOneBloc(NewSpinEventPopupOneState initialState)
    : super(initialState) {
    on<NewSpinEventPopupOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NewSpinEventPopupOneInitialEvent event,
    Emitter<NewSpinEventPopupOneState> emit,
  ) async {}
}

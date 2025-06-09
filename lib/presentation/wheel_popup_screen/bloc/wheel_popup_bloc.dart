import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/wheel_popup_model.dart';
part 'wheel_popup_event.dart';
part 'wheel_popup_state.dart';

/// A bloc that manages the state of a WheelPopup according to the event that is dispatched to it.
class WheelPopupBloc extends Bloc<WheelPopupEvent, WheelPopupState> {
  WheelPopupBloc(WheelPopupState initialState) : super(initialState) {
    on<WheelPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WheelPopupInitialEvent event,
    Emitter<WheelPopupState> emit,
  ) async {}
}

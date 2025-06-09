import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/reconnection_popup_model.dart';
part 'reconnection_popup_event.dart';
part 'reconnection_popup_state.dart';

/// A bloc that manages the state of a ReconnectionPopup according to the event that is dispatched to it.
class ReconnectionPopupBloc
    extends Bloc<ReconnectionPopupEvent, ReconnectionPopupState> {
  ReconnectionPopupBloc(ReconnectionPopupState initialState)
    : super(initialState) {
    on<ReconnectionPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReconnectionPopupInitialEvent event,
    Emitter<ReconnectionPopupState> emit,
  ) async {}
}

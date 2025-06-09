import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/red_envelope_popup_model.dart';
part 'red_envelope_popup_event.dart';
part 'red_envelope_popup_state.dart';

/// A bloc that manages the state of a RedEnvelopePopup according to the event that is dispatched to it.
class RedEnvelopePopupBloc
    extends Bloc<RedEnvelopePopupEvent, RedEnvelopePopupState> {
  RedEnvelopePopupBloc(RedEnvelopePopupState initialState)
    : super(initialState) {
    on<RedEnvelopePopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RedEnvelopePopupInitialEvent event,
    Emitter<RedEnvelopePopupState> emit,
  ) async {}
}

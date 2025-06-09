import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/ph23_new_popup_register_claim_one_model.dart';
part 'ph23_new_popup_register_claim_one_event.dart';
part 'ph23_new_popup_register_claim_one_state.dart';

/// A bloc that manages the state of a Ph23NewPopupRegisterClaimOne according to the event that is dispatched to it.
class Ph23NewPopupRegisterClaimOneBloc
    extends
        Bloc<
          Ph23NewPopupRegisterClaimOneEvent,
          Ph23NewPopupRegisterClaimOneState
        > {
  Ph23NewPopupRegisterClaimOneBloc(
    Ph23NewPopupRegisterClaimOneState initialState,
  ) : super(initialState) {
    on<Ph23NewPopupRegisterClaimOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Ph23NewPopupRegisterClaimOneInitialEvent event,
    Emitter<Ph23NewPopupRegisterClaimOneState> emit,
  ) async {}
}

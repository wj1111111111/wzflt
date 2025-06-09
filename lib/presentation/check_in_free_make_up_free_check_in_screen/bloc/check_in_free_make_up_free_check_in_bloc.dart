import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/check_in_free_make_up_free_check_in_model.dart';
part 'check_in_free_make_up_free_check_in_event.dart';
part 'check_in_free_make_up_free_check_in_state.dart';

/// A bloc that manages the state of a CheckInFreeMakeUpFreeCheckIn according to the event that is dispatched to it.
class CheckInFreeMakeUpFreeCheckInBloc
    extends
        Bloc<
          CheckInFreeMakeUpFreeCheckInEvent,
          CheckInFreeMakeUpFreeCheckInState
        > {
  CheckInFreeMakeUpFreeCheckInBloc(
    CheckInFreeMakeUpFreeCheckInState initialState,
  ) : super(initialState) {
    on<CheckInFreeMakeUpFreeCheckInInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckInFreeMakeUpFreeCheckInInitialEvent event,
    Emitter<CheckInFreeMakeUpFreeCheckInState> emit,
  ) async {}
}

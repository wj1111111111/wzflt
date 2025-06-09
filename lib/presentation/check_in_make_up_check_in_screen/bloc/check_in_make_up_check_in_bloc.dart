import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/check_in_make_up_check_in_model.dart';
part 'check_in_make_up_check_in_event.dart';
part 'check_in_make_up_check_in_state.dart';

/// A bloc that manages the state of a CheckInMakeUpCheckIn according to the event that is dispatched to it.
class CheckInMakeUpCheckInBloc
    extends Bloc<CheckInMakeUpCheckInEvent, CheckInMakeUpCheckInState> {
  CheckInMakeUpCheckInBloc(CheckInMakeUpCheckInState initialState)
    : super(initialState) {
    on<CheckInMakeUpCheckInInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckInMakeUpCheckInInitialEvent event,
    Emitter<CheckInMakeUpCheckInState> emit,
  ) async {}
}

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/check_in_already_checked_in_model.dart';
part 'check_in_already_checked_in_event.dart';
part 'check_in_already_checked_in_state.dart';

/// A bloc that manages the state of a CheckInAlreadyCheckedIn according to the event that is dispatched to it.
class CheckInAlreadyCheckedInBloc
    extends Bloc<CheckInAlreadyCheckedInEvent, CheckInAlreadyCheckedInState> {
  CheckInAlreadyCheckedInBloc(CheckInAlreadyCheckedInState initialState)
    : super(initialState) {
    on<CheckInAlreadyCheckedInInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckInAlreadyCheckedInInitialEvent event,
    Emitter<CheckInAlreadyCheckedInState> emit,
  ) async {}
}

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/check_in_day_4_check_in_model.dart';
part 'check_in_day_4_check_in_event.dart';
part 'check_in_day_4_check_in_state.dart';

/// A bloc that manages the state of a CheckInDay4CheckIn according to the event that is dispatched to it.
class CheckInDay4CheckInBloc
    extends Bloc<CheckInDay4CheckInEvent, CheckInDay4CheckInState> {
  CheckInDay4CheckInBloc(CheckInDay4CheckInState initialState)
    : super(initialState) {
    on<CheckInDay4CheckInInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckInDay4CheckInInitialEvent event,
    Emitter<CheckInDay4CheckInState> emit,
  ) async {}
}

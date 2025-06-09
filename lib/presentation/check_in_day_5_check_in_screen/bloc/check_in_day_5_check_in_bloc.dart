import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/check_in_day_5_check_in_model.dart';
part 'check_in_day_5_check_in_event.dart';
part 'check_in_day_5_check_in_state.dart';

/// A bloc that manages the state of a CheckInDay5CheckIn according to the event that is dispatched to it.
class CheckInDay5CheckInBloc
    extends Bloc<CheckInDay5CheckInEvent, CheckInDay5CheckInState> {
  CheckInDay5CheckInBloc(CheckInDay5CheckInState initialState)
    : super(initialState) {
    on<CheckInDay5CheckInInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckInDay5CheckInInitialEvent event,
    Emitter<CheckInDay5CheckInState> emit,
  ) async {}
}

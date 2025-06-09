import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/check_in_model.dart';
part 'check_in_event.dart';
part 'check_in_state.dart';

/// A bloc that manages the state of a CheckIn according to the event that is dispatched to it.
class CheckInBloc extends Bloc<CheckInEvent, CheckInState> {
  CheckInBloc(CheckInState initialState) : super(initialState) {
    on<CheckInInitialEvent>(_onInitialize);
  }

  _onInitialize(CheckInInitialEvent event, Emitter<CheckInState> emit) async {}
}

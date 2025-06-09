import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/not_during_event_period_model.dart';
part 'not_during_event_period_event.dart';
part 'not_during_event_period_state.dart';

/// A bloc that manages the state of a NotDuringEventPeriod according to the event that is dispatched to it.
class NotDuringEventPeriodBloc
    extends Bloc<NotDuringEventPeriodEvent, NotDuringEventPeriodState> {
  NotDuringEventPeriodBloc(NotDuringEventPeriodState initialState)
    : super(initialState) {
    on<NotDuringEventPeriodInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotDuringEventPeriodInitialEvent event,
    Emitter<NotDuringEventPeriodState> emit,
  ) async {}
}

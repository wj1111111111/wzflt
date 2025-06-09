import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/state_2_this_round_ongoing_model.dart';
part 'state_2_this_round_ongoing_event.dart';
part 'state_2_this_round_ongoing_state.dart';

/// A bloc that manages the state of a State2ThisRoundOngoing according to the event that is dispatched to it.
class State2ThisRoundOngoingBloc
    extends Bloc<State2ThisRoundOngoingEvent, State2ThisRoundOngoingState> {
  State2ThisRoundOngoingBloc(State2ThisRoundOngoingState initialState)
    : super(initialState) {
    on<State2ThisRoundOngoingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    State2ThisRoundOngoingInitialEvent event,
    Emitter<State2ThisRoundOngoingState> emit,
  ) async {}
}

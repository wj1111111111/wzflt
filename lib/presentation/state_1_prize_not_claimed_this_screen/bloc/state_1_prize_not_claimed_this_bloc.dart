import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/state_1_prize_not_claimed_this_model.dart';
part 'state_1_prize_not_claimed_this_event.dart';
part 'state_1_prize_not_claimed_this_state.dart';

/// A bloc that manages the state of a State1PrizeNotClaimedThis according to the event that is dispatched to it.
class State1PrizeNotClaimedThisBloc
    extends
        Bloc<State1PrizeNotClaimedThisEvent, State1PrizeNotClaimedThisState> {
  State1PrizeNotClaimedThisBloc(State1PrizeNotClaimedThisState initialState)
    : super(initialState) {
    on<State1PrizeNotClaimedThisInitialEvent>(_onInitialize);
  }

  _onInitialize(
    State1PrizeNotClaimedThisInitialEvent event,
    Emitter<State1PrizeNotClaimedThisState> emit,
  ) async {}
}

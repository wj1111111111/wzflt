import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/state_3_no_prize_won_this_round_model.dart';
part 'state_3_no_prize_won_this_round_event.dart';
part 'state_3_no_prize_won_this_round_state.dart';

/// A bloc that manages the state of a State3NoPrizeWonThisRound according to the event that is dispatched to it.
class State3NoPrizeWonThisRoundBloc
    extends
        Bloc<State3NoPrizeWonThisRoundEvent, State3NoPrizeWonThisRoundState> {
  State3NoPrizeWonThisRoundBloc(State3NoPrizeWonThisRoundState initialState)
    : super(initialState) {
    on<State3NoPrizeWonThisRoundInitialEvent>(_onInitialize);
  }

  _onInitialize(
    State3NoPrizeWonThisRoundInitialEvent event,
    Emitter<State3NoPrizeWonThisRoundState> emit,
  ) async {}
}

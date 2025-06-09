import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/leaderboard_rules_model.dart';
part 'leaderboard_rules_event.dart';
part 'leaderboard_rules_state.dart';

/// A bloc that manages the state of a LeaderboardRules according to the event that is dispatched to it.
class LeaderboardRulesBloc
    extends Bloc<LeaderboardRulesEvent, LeaderboardRulesState> {
  LeaderboardRulesBloc(LeaderboardRulesState initialState)
    : super(initialState) {
    on<LeaderboardRulesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LeaderboardRulesInitialEvent event,
    Emitter<LeaderboardRulesState> emit,
  ) async {}
}

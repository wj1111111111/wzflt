import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/leaderboard_history_two_model.dart';
part 'leaderboard_history_two_event.dart';
part 'leaderboard_history_two_state.dart';

/// A bloc that manages the state of a LeaderboardHistoryTwo according to the event that is dispatched to it.
class LeaderboardHistoryTwoBloc
    extends Bloc<LeaderboardHistoryTwoEvent, LeaderboardHistoryTwoState> {
  LeaderboardHistoryTwoBloc(LeaderboardHistoryTwoState initialState)
    : super(initialState) {
    on<LeaderboardHistoryTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LeaderboardHistoryTwoInitialEvent event,
    Emitter<LeaderboardHistoryTwoState> emit,
  ) async {}
}

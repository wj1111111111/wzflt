import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/leaderboard_history_one_model.dart';
part 'leaderboard_history_one_event.dart';
part 'leaderboard_history_one_state.dart';

/// A bloc that manages the state of a LeaderboardHistoryOne according to the event that is dispatched to it.
class LeaderboardHistoryOneBloc
    extends Bloc<LeaderboardHistoryOneEvent, LeaderboardHistoryOneState> {
  LeaderboardHistoryOneBloc(LeaderboardHistoryOneState initialState)
    : super(initialState) {
    on<LeaderboardHistoryOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LeaderboardHistoryOneInitialEvent event,
    Emitter<LeaderboardHistoryOneState> emit,
  ) async {}
}

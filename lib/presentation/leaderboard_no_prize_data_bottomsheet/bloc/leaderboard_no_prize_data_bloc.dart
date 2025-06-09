import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/leaderboard_no_prize_data_model.dart';
part 'leaderboard_no_prize_data_event.dart';
part 'leaderboard_no_prize_data_state.dart';

/// A bloc that manages the state of a LeaderboardNoPrizeData according to the event that is dispatched to it.
class LeaderboardNoPrizeDataBloc
    extends Bloc<LeaderboardNoPrizeDataEvent, LeaderboardNoPrizeDataState> {
  LeaderboardNoPrizeDataBloc(LeaderboardNoPrizeDataState initialState)
    : super(initialState) {
    on<LeaderboardNoPrizeDataInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LeaderboardNoPrizeDataInitialEvent event,
    Emitter<LeaderboardNoPrizeDataState> emit,
  ) async {}
}

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/leaderboard_my_prizes_one_model.dart';
part 'leaderboard_my_prizes_one_event.dart';
part 'leaderboard_my_prizes_one_state.dart';

/// A bloc that manages the state of a LeaderboardMyPrizesOne according to the event that is dispatched to it.
class LeaderboardMyPrizesOneBloc
    extends Bloc<LeaderboardMyPrizesOneEvent, LeaderboardMyPrizesOneState> {
  LeaderboardMyPrizesOneBloc(LeaderboardMyPrizesOneState initialState)
    : super(initialState) {
    on<LeaderboardMyPrizesOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LeaderboardMyPrizesOneInitialEvent event,
    Emitter<LeaderboardMyPrizesOneState> emit,
  ) async {}
}

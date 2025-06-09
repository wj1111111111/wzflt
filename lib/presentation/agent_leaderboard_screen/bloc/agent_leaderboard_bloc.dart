import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/agent_leaderboard_model.dart';
import '../models/agent_tab_model.dart';
import '../models/listheadingthre_item_model.dart';
part 'agent_leaderboard_event.dart';
part 'agent_leaderboard_state.dart';

/// A bloc that manages the state of a AgentLeaderboard according to the event that is dispatched to it.
class AgentLeaderboardBloc
    extends Bloc<AgentLeaderboardEvent, AgentLeaderboardState> {
  AgentLeaderboardBloc(AgentLeaderboardState initialState)
    : super(initialState) {
    on<AgentLeaderboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AgentLeaderboardInitialEvent event,
    Emitter<AgentLeaderboardState> emit,
  ) async {
    emit(
      state.copyWith(
        agentTabModelObj: state.agentTabModelObj?.copyWith(
          listheadingthreItemList: fillListheadingthreItemList(),
        ),
      ),
    );
  }

  List<ListheadingthreItemModel> fillListheadingthreItemList() {
    return [
      ListheadingthreItemModel(
        headingthree: "lbl_time_remaining".tr,
        headingthree1: "lbl_062".tr,
        headingthree2: "lbl_day".tr,
        headingthree3: "lbl_112".tr,
        headingthree4: "lbl_hour".tr,
        headingthree5: "lbl_382".tr,
        headingthree6: "lbl_minute".tr,
        headingthree7: "lbl_47".tr,
        headingthree8: "lbl_second".tr,
      ),
      ListheadingthreItemModel(),
    ];
  }
}

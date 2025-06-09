import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/agent_leaderboard_detail_view_model.dart';
import '../models/listyour_one_item_model.dart';
part 'agent_leaderboard_detail_view_event.dart';
part 'agent_leaderboard_detail_view_state.dart';

/// A bloc that manages the state of a AgentLeaderboardDetailView according to the event that is dispatched to it.
class AgentLeaderboardDetailViewBloc
    extends
        Bloc<AgentLeaderboardDetailViewEvent, AgentLeaderboardDetailViewState> {
  AgentLeaderboardDetailViewBloc(AgentLeaderboardDetailViewState initialState)
    : super(initialState) {
    on<AgentLeaderboardDetailViewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AgentLeaderboardDetailViewInitialEvent event,
    Emitter<AgentLeaderboardDetailViewState> emit,
  ) async {
    emit(
      state.copyWith(
        agentLeaderboardDetailViewModelObj: state
            .agentLeaderboardDetailViewModelObj
            ?.copyWith(listyourOneItemList: fillListyourOneItemList()),
      ),
    );
  }

  List<ListyourOneItemModel> fillListyourOneItemList() {
    return [
      ListyourOneItemModel(
        yourTwo: "lbl_your".tr,
        eleven: "lbl_112".tr,
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      ListyourOneItemModel(),
      ListyourOneItemModel(),
      ListyourOneItemModel(),
      ListyourOneItemModel(),
      ListyourOneItemModel(),
      ListyourOneItemModel(),
      ListyourOneItemModel(),
      ListyourOneItemModel(),
      ListyourOneItemModel(),
      ListyourOneItemModel(),
    ];
  }
}

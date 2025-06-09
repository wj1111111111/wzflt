import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/agent_leaderboard_history_model.dart';
import '../models/listnine_item_model.dart';
part 'agent_leaderboard_history_event.dart';
part 'agent_leaderboard_history_state.dart';

/// A bloc that manages the state of a AgentLeaderboardHistory according to the event that is dispatched to it.
class AgentLeaderboardHistoryBloc
    extends Bloc<AgentLeaderboardHistoryEvent, AgentLeaderboardHistoryState> {
  AgentLeaderboardHistoryBloc(AgentLeaderboardHistoryState initialState)
    : super(initialState) {
    on<AgentLeaderboardHistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AgentLeaderboardHistoryInitialEvent event,
    Emitter<AgentLeaderboardHistoryState> emit,
  ) async {
    emit(
      state.copyWith(
        agentLeaderboardHistoryModelObj: state.agentLeaderboardHistoryModelObj
            ?.copyWith(listnineItemList: fillListnineItemList()),
      ),
    );
  }

  List<ListnineItemModel> fillListnineItemList() {
    return [
      ListnineItemModel(
        nine: "lbl_92".tr,
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      ListnineItemModel(
        nine: "lbl_82".tr,
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      ListnineItemModel(
        nine: "lbl_7".tr,
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      ListnineItemModel(
        nine: "lbl_6".tr,
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      ListnineItemModel(
        nine: "lbl_52".tr,
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      ListnineItemModel(
        nine: "lbl_4".tr,
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      ListnineItemModel(
        nine: "lbl_10".tr,
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      ListnineItemModel(
        nine: "lbl_112".tr,
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      ListnineItemModel(
        nine: "lbl_123".tr,
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      ListnineItemModel(
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      ListnineItemModel(
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      ListnineItemModel(
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
    ];
  }
}

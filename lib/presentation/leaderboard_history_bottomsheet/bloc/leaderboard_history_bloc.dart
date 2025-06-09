import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/leaderboard_history_model.dart';
import '../models/list103339_item_model.dart';
part 'leaderboard_history_event.dart';
part 'leaderboard_history_state.dart';

/// A bloc that manages the state of a LeaderboardHistory according to the event that is dispatched to it.
class LeaderboardHistoryBloc
    extends Bloc<LeaderboardHistoryEvent, LeaderboardHistoryState> {
  LeaderboardHistoryBloc(LeaderboardHistoryState initialState)
    : super(initialState) {
    on<LeaderboardHistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LeaderboardHistoryInitialEvent event,
    Emitter<LeaderboardHistoryState> emit,
  ) async {
    emit(
      state.copyWith(
        leaderboardHistoryModelObj: state.leaderboardHistoryModelObj?.copyWith(
          list103339ItemList: fillList103339ItemList(),
        ),
      ),
    );
  }

  List<List103339ItemModel> fillList103339ItemList() {
    return [
      List103339ItemModel(
        image: ImageConstant.img36x36,
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      List103339ItemModel(
        image: ImageConstant.img36x36,
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      List103339ItemModel(
        image: ImageConstant.img36x36,
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      List103339ItemModel(
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      List103339ItemModel(
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      List103339ItemModel(
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      List103339ItemModel(
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      List103339ItemModel(
        oneHundredThreeThousandThreeHundredThirtyNine: "lbl_103_339".tr,
        ten: "lbl_10".tr,
        price: "lbl_1500_23".tr,
      ),
      List103339ItemModel(),
      List103339ItemModel(),
    ];
  }
}

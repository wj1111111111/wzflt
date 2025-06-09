import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/leaderboard_my_prizes_model.dart';
import '../models/listyour_item_model.dart';
part 'leaderboard_my_prizes_event.dart';
part 'leaderboard_my_prizes_state.dart';

/// A bloc that manages the state of a LeaderboardMyPrizes according to the event that is dispatched to it.
class LeaderboardMyPrizesBloc
    extends Bloc<LeaderboardMyPrizesEvent, LeaderboardMyPrizesState> {
  LeaderboardMyPrizesBloc(LeaderboardMyPrizesState initialState)
    : super(initialState) {
    on<LeaderboardMyPrizesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LeaderboardMyPrizesInitialEvent event,
    Emitter<LeaderboardMyPrizesState> emit,
  ) async {
    emit(
      state.copyWith(
        leaderboardMyPrizesModelObj: state.leaderboardMyPrizesModelObj
            ?.copyWith(listyourItemList: fillListyourItemList()),
      ),
    );
  }

  List<ListyourItemModel> fillListyourItemList() {
    return [
      ListyourItemModel(
        date202303nine: "lbl_date_2023_03_09".tr,
        no1: "lbl_no_1".tr,
      ),
      ListyourItemModel(
        date202303nine: "lbl_date_2023_03_09".tr,
        no1: "lbl_no_2".tr,
      ),
      ListyourItemModel(
        date202303nine: "lbl_date_2023_03_09".tr,
        no1: "lbl_no_3".tr,
      ),
    ];
  }
}

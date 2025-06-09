import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/gridgoodluck_item_model.dart';
import '../models/trial_money_main_after_participating_model.dart';
part 'trial_money_main_after_participating_event.dart';
part 'trial_money_main_after_participating_state.dart';

/// A bloc that manages the state of a TrialMoneyMainAfterParticipating according to the event that is dispatched to it.
class TrialMoneyMainAfterParticipatingBloc
    extends
        Bloc<
          TrialMoneyMainAfterParticipatingEvent,
          TrialMoneyMainAfterParticipatingState
        > {
  TrialMoneyMainAfterParticipatingBloc(
    TrialMoneyMainAfterParticipatingState initialState,
  ) : super(initialState) {
    on<TrialMoneyMainAfterParticipatingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrialMoneyMainAfterParticipatingInitialEvent event,
    Emitter<TrialMoneyMainAfterParticipatingState> emit,
  ) async {
    emit(
      state.copyWith(
        trialMoneyMainAfterParticipatingModelObj: state
            .trialMoneyMainAfterParticipatingModelObj
            ?.copyWith(gridgoodluckItemList: fillGridgoodluckItemList()),
      ),
    );
  }

  List<GridgoodluckItemModel> fillGridgoodluckItemList() {
    return [
      GridgoodluckItemModel(
        goodluckOne: ImageConstant.imgImage1277,
        goodluckTwo: "lbl_goodluck".tr,
      ),
      GridgoodluckItemModel(
        goodluckOne: ImageConstant.imgImage1278,
        goodluckTwo: "lbl_182".tr,
      ),
      GridgoodluckItemModel(
        goodluckOne: ImageConstant.imgImage1277,
        goodluckTwo: "lbl_goodluck".tr,
      ),
      GridgoodluckItemModel(
        goodluckOne: ImageConstant.imgImage1278,
        goodluckTwo: "lbl_182".tr,
      ),
      GridgoodluckItemModel(goodluckOne: ImageConstant.imgImage1281),
      GridgoodluckItemModel(
        goodluckOne: ImageConstant.imgImage1278,
        goodluckTwo: "lbl_182".tr,
      ),
      GridgoodluckItemModel(
        goodluckOne: ImageConstant.imgImage1277,
        goodluckTwo: "lbl_goodluck".tr,
      ),
      GridgoodluckItemModel(
        goodluckOne: ImageConstant.imgImage1278,
        goodluckTwo: "lbl_182".tr,
      ),
      GridgoodluckItemModel(
        goodluckOne: ImageConstant.imgImage1278,
        goodluckTwo: "lbl_182".tr,
      ),
    ];
  }
}

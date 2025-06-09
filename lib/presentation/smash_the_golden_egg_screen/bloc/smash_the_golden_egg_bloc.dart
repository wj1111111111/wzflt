import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/list123123_item_model.dart';
import '../models/listwithdrawal_item_model.dart';
import '../models/smash_the_golden_egg_model.dart';
part 'smash_the_golden_egg_event.dart';
part 'smash_the_golden_egg_state.dart';

/// A bloc that manages the state of a SmashTheGoldenEgg according to the event that is dispatched to it.
class SmashTheGoldenEggBloc
    extends Bloc<SmashTheGoldenEggEvent, SmashTheGoldenEggState> {
  SmashTheGoldenEggBloc(SmashTheGoldenEggState initialState)
    : super(initialState) {
    on<SmashTheGoldenEggInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SmashTheGoldenEggInitialEvent event,
    Emitter<SmashTheGoldenEggState> emit,
  ) async {
    emit(
      state.copyWith(
        smashTheGoldenEggModelObj: state.smashTheGoldenEggModelObj?.copyWith(
          list123123ItemList: fillList123123ItemList(),
          listwithdrawalItemList: fillListwithdrawalItemList(),
        ),
      ),
    );
  }

  List<List123123ItemModel> fillList123123ItemList() {
    return [
      List123123ItemModel(
        image: ImageConstant.imgEllipse539,
        oneHundredTwentyThreeThousandOneHundredTwentyThree: "lbl_123_123".tr,
        receiveda: "msg_received_a_bonus".tr,
        twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo:
            "msg_1_000_000_000_00".tr,
      ),
      List123123ItemModel(
        image: ImageConstant.imgEllipse53920x20,
        oneHundredTwentyThreeThousandOneHundredTwentyThree: "lbl_123_123".tr,
        receiveda: "msg_received_a_bonus".tr,
        twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo:
            "msg_1_000_000_000_00".tr,
      ),
      List123123ItemModel(
        image: ImageConstant.imgEllipse5391,
        oneHundredTwentyThreeThousandOneHundredTwentyThree: "lbl_124_123".tr,
        receiveda: "msg_received_a_bonus".tr,
        twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo:
            "msg_1_000_000_000_00".tr,
      ),
    ];
  }

  List<ListwithdrawalItemModel> fillListwithdrawalItemList() {
    return [
      ListwithdrawalItemModel(withdrawalTwo: "lbl_withdrawal".tr),
      ListwithdrawalItemModel(),
    ];
  }
}

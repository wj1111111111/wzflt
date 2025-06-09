import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/list123123_item_model.dart';
import '../models/treasure_box_confirm_model.dart';
part 'treasure_box_confirm_event.dart';
part 'treasure_box_confirm_state.dart';

/// A bloc that manages the state of a TreasureBoxConfirm according to the event that is dispatched to it.
class TreasureBoxConfirmBloc
    extends Bloc<TreasureBoxConfirmEvent, TreasureBoxConfirmState> {
  TreasureBoxConfirmBloc(TreasureBoxConfirmState initialState)
    : super(initialState) {
    on<TreasureBoxConfirmInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TreasureBoxConfirmInitialEvent event,
    Emitter<TreasureBoxConfirmState> emit,
  ) async {
    emit(
      state.copyWith(
        treasureBoxConfirmModelObj: state.treasureBoxConfirmModelObj?.copyWith(
          list123123ItemList: fillList123123ItemList(),
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
}

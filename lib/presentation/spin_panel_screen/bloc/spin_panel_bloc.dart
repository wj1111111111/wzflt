import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/list123123_item_model.dart';
import '../models/listluckwheel_item_model.dart';
import '../models/spin_panel_model.dart';
part 'spin_panel_event.dart';
part 'spin_panel_state.dart';

/// A bloc that manages the state of a SpinPanel according to the event that is dispatched to it.
class SpinPanelBloc extends Bloc<SpinPanelEvent, SpinPanelState> {
  SpinPanelBloc(SpinPanelState initialState) : super(initialState) {
    on<SpinPanelInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SpinPanelInitialEvent event,
    Emitter<SpinPanelState> emit,
  ) async {
    emit(
      state.copyWith(
        spinPanelModelObj: state.spinPanelModelObj?.copyWith(
          list123123ItemList: fillList123123ItemList(),
          listluckwheelItemList: fillListluckwheelItemList(),
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

  List<ListluckwheelItemModel> fillListluckwheelItemList() {
    return [
      ListluckwheelItemModel(
        luckwheel: "lbl_luck_wheel".tr,
        luckWheelOne: ImageConstant.imgLunpp152x52,
      ),
      ListluckwheelItemModel(
        luckwheel: "lbl_red_package".tr,
        luckWheelOne: ImageConstant.imgSettings44x44,
      ),
      ListluckwheelItemModel(),
    ];
  }
}

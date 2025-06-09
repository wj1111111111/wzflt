import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/list123123_item_model.dart';
import '../models/listluck_wheel_item_model.dart';
import '../models/spin_slice_files_model.dart';
part 'spin_slice_files_event.dart';
part 'spin_slice_files_state.dart';

/// A bloc that manages the state of a SpinSliceFiles according to the event that is dispatched to it.
class SpinSliceFilesBloc
    extends Bloc<SpinSliceFilesEvent, SpinSliceFilesState> {
  SpinSliceFilesBloc(SpinSliceFilesState initialState) : super(initialState) {
    on<SpinSliceFilesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SpinSliceFilesInitialEvent event,
    Emitter<SpinSliceFilesState> emit,
  ) async {
    emit(
      state.copyWith(
        spinSliceFilesModelObj: state.spinSliceFilesModelObj?.copyWith(
          list123123ItemList: fillList123123ItemList(),
          listluckWheelItemList: fillListluckWheelItemList(),
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

  List<ListluckWheelItemModel> fillListluckWheelItemList() {
    return [
      ListluckWheelItemModel(
        luckWheelOne: ImageConstant.imgLunpp1,
        luckwheel: "lbl_luck_wheel".tr,
      ),
      ListluckWheelItemModel(
        luckWheelOne: ImageConstant.imgCash1,
        luckwheel: "lbl_cash_voucher".tr,
      ),
      ListluckWheelItemModel(),
    ];
  }
}

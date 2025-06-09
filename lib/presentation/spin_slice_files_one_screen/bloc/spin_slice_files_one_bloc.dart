import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/list123123_item_model.dart';
import '../models/spin_slice_files_one_model.dart';
part 'spin_slice_files_one_event.dart';
part 'spin_slice_files_one_state.dart';

/// A bloc that manages the state of a SpinSliceFilesOne according to the event that is dispatched to it.
class SpinSliceFilesOneBloc
    extends Bloc<SpinSliceFilesOneEvent, SpinSliceFilesOneState> {
  SpinSliceFilesOneBloc(SpinSliceFilesOneState initialState)
    : super(initialState) {
    on<SpinSliceFilesOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SpinSliceFilesOneInitialEvent event,
    Emitter<SpinSliceFilesOneState> emit,
  ) async {
    emit(
      state.copyWith(
        spinSliceFilesOneModelObj: state.spinSliceFilesOneModelObj?.copyWith(
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

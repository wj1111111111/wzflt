import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/red_envelope_item_model.dart';
import '../models/red_envelope_model.dart';
part 'red_envelope_event.dart';
part 'red_envelope_state.dart';

/// A bloc that manages the state of a RedEnvelope according to the event that is dispatched to it.
class RedEnvelopeBloc extends Bloc<RedEnvelopeEvent, RedEnvelopeState> {
  RedEnvelopeBloc(RedEnvelopeState initialState) : super(initialState) {
    on<RedEnvelopeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RedEnvelopeInitialEvent event,
    Emitter<RedEnvelopeState> emit,
  ) async {
    emit(
      state.copyWith(
        redEnvelopeModelObj: state.redEnvelopeModelObj?.copyWith(
          redEnvelopeItemList: fillRedEnvelopeItemList(),
        ),
      ),
    );
  }

  List<RedEnvelopeItemModel> fillRedEnvelopeItemList() {
    return [
      RedEnvelopeItemModel(
        image: ImageConstant.imgEllipse539,
        oneHundredTwentyThreeThousandOneHundredTwentyThree: "lbl_123_123".tr,
        receiveda: "msg_received_a_bonus".tr,
        twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo:
            "msg_1_000_000_000_00".tr,
      ),
      RedEnvelopeItemModel(
        image: ImageConstant.imgEllipse53920x20,
        oneHundredTwentyThreeThousandOneHundredTwentyThree: "lbl_123_123".tr,
        receiveda: "msg_received_a_bonus".tr,
        twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo:
            "msg_1_000_000_000_00".tr,
      ),
      RedEnvelopeItemModel(
        image: ImageConstant.imgEllipse5391,
        oneHundredTwentyThreeThousandOneHundredTwentyThree: "lbl_124_123".tr,
        receiveda: "msg_received_a_bonus".tr,
        twoHundredSeventyTwoMillionSixHundredTwentyThousandThirtyTwo:
            "msg_1_000_000_000_00".tr,
      ),
    ];
  }
}

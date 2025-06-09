import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/lottery_withdrawal_conditions_model.dart';
import '../models/timelinecheckma_item_model.dart';
part 'lottery_withdrawal_conditions_event.dart';
part 'lottery_withdrawal_conditions_state.dart';

/// A bloc that manages the state of a LotteryWithdrawalConditions according to the event that is dispatched to it.
class LotteryWithdrawalConditionsBloc
    extends
        Bloc<
          LotteryWithdrawalConditionsEvent,
          LotteryWithdrawalConditionsState
        > {
  LotteryWithdrawalConditionsBloc(LotteryWithdrawalConditionsState initialState)
    : super(initialState) {
    on<LotteryWithdrawalConditionsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LotteryWithdrawalConditionsInitialEvent event,
    Emitter<LotteryWithdrawalConditionsState> emit,
  ) async {
    emit(
      state.copyWith(
        lotteryWithdrawalConditionsModelObj: state
            .lotteryWithdrawalConditionsModelObj
            ?.copyWith(timelinecheckmaItemList: fillTimelinecheckmaItemList()),
      ),
    );
  }

  List<TimelinecheckmaItemModel> fillTimelinecheckmaItemList() {
    return [
      TimelinecheckmaItemModel(
        checkmarkOne: ImageConstant.imgCheckmark20x20,
        paymentrequest: "msg_payment_request".tr,
      ),
      TimelinecheckmaItemModel(
        checkmarkOne: ImageConstant.imgCheckmark20x20,
        paymentrequest: "msg_7_64_remaining".tr,
      ),
      TimelinecheckmaItemModel(checkmarkOne: ImageConstant.imgUser20x20),
    ];
  }
}

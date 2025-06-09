import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listgcash_item_model.dart';
import '../models/withdrawal_records_model.dart';
part 'withdrawal_records_event.dart';
part 'withdrawal_records_state.dart';

/// A bloc that manages the state of a WithdrawalRecords according to the event that is dispatched to it.
class WithdrawalRecordsBloc
    extends Bloc<WithdrawalRecordsEvent, WithdrawalRecordsState> {
  WithdrawalRecordsBloc(WithdrawalRecordsState initialState)
    : super(initialState) {
    on<WithdrawalRecordsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WithdrawalRecordsInitialEvent event,
    Emitter<WithdrawalRecordsState> emit,
  ) async {
    emit(
      state.copyWith(
        withdrawalRecordsModelObj: state.withdrawalRecordsModelObj?.copyWith(
          listgcashItemList: fillListgcashItemList(),
        ),
      ),
    );
  }

  List<ListgcashItemModel> fillListgcashItemList() {
    return [
      ListgcashItemModel(
        gcash: "lbl_gcash".tr,
        twelve: "msg_2023_05_12_12_33_56".tr,
        price: "lbl_200_003".tr,
        credited: "lbl_credited".tr,
      ),
      ListgcashItemModel(
        gcash: "lbl_gcash".tr,
        twelve: "msg_2023_05_12_12_33_56".tr,
        price: "lbl_100_003".tr,
        credited: "lbl_cancelled".tr,
      ),
      ListgcashItemModel(
        gcash: "lbl_gcash".tr,
        twelve: "msg_2023_05_12_12_33_56".tr,
        price: "lbl_260_002".tr,
        credited: "lbl_rejected".tr,
      ),
      ListgcashItemModel(),
    ];
  }
}

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listgcash_item_model.dart';
import '../models/wallet_top_up_records_payment_model.dart';
part 'wallet_top_up_records_payment_event.dart';
part 'wallet_top_up_records_payment_state.dart';

/// A bloc that manages the state of a WalletTopUpRecordsPayment according to the event that is dispatched to it.
class WalletTopUpRecordsPaymentBloc
    extends
        Bloc<WalletTopUpRecordsPaymentEvent, WalletTopUpRecordsPaymentState> {
  WalletTopUpRecordsPaymentBloc(WalletTopUpRecordsPaymentState initialState)
    : super(initialState) {
    on<WalletTopUpRecordsPaymentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WalletTopUpRecordsPaymentInitialEvent event,
    Emitter<WalletTopUpRecordsPaymentState> emit,
  ) async {
    emit(
      state.copyWith(
        walletTopUpRecordsPaymentModelObj: state
            .walletTopUpRecordsPaymentModelObj
            ?.copyWith(listgcashItemList: fillListgcashItemList()),
      ),
    );
  }

  List<ListgcashItemModel> fillListgcashItemList() {
    return [
      ListgcashItemModel(
        gcash: "lbl_gcash".tr,
        price: "lbl_300_002".tr,
        twelve: "msg_2023_05_12_12_33_56".tr,
        inprogress: "lbl_in_progress".tr,
      ),
      ListgcashItemModel(
        gcash: "lbl_gcash".tr,
        price: "msg_2023_05_12_12_33_56".tr,
      ),
    ];
  }
}

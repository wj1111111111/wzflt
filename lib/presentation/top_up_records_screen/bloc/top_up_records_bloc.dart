import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/top_up_records_model.dart';
import '../models/topup_records_item_model.dart';
part 'top_up_records_event.dart';
part 'top_up_records_state.dart';

/// A bloc that manages the state of a TopUpRecords according to the event that is dispatched to it.
class TopUpRecordsBloc extends Bloc<TopUpRecordsEvent, TopUpRecordsState> {
  TopUpRecordsBloc(TopUpRecordsState initialState) : super(initialState) {
    on<TopUpRecordsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TopUpRecordsInitialEvent event,
    Emitter<TopUpRecordsState> emit,
  ) async {
    emit(
      state.copyWith(
        topUpRecordsModelObj: state.topUpRecordsModelObj?.copyWith(
          topupRecordsItemList: fillTopupRecordsItemList(),
        ),
      ),
    );
  }

  List<TopupRecordsItemModel> fillTopupRecordsItemList() {
    return [
      TopupRecordsItemModel(
        gcash: "lbl_gcash".tr,
        twelve: "msg_2023_05_12_12_33_56".tr,
        price: "lbl_200_002".tr,
        success: "lbl_success".tr,
      ),
      TopupRecordsItemModel(
        gcash: "lbl_gcash".tr,
        twelve: "msg_2023_05_12_12_33_56".tr,
        price: "lbl_100_002".tr,
        success: "lbl_reviewed".tr,
      ),
      TopupRecordsItemModel(
        gcash: "lbl_gcash".tr,
        twelve: "msg_2023_05_12_12_33_56".tr,
        price: "lbl_300_002".tr,
        success: "lbl_processing".tr,
      ),
      TopupRecordsItemModel(
        gcash: "lbl_gcash".tr,
        twelve: "msg_2023_05_12_12_33_56".tr,
        price: "lbl_260_00".tr,
        success: "lbl_fail".tr,
      ),
      TopupRecordsItemModel(
        gcash: "lbl_gcash".tr,
        twelve: "msg_2023_05_12_12_33_56".tr,
        price: "lbl_260_00".tr,
        success: "lbl_closed".tr,
      ),
      TopupRecordsItemModel(
        gcash: "lbl_gcash".tr,
        twelve: "msg_2023_05_12_12_33_56".tr,
        price: "lbl_260_00".tr,
        success: "lbl_rejected".tr,
      ),
    ];
  }
}

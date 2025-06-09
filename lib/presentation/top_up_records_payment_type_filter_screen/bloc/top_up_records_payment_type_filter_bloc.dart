import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listgcash_item_model.dart';
import '../models/top_up_records_payment_type_filter_model.dart';
part 'top_up_records_payment_type_filter_event.dart';
part 'top_up_records_payment_type_filter_state.dart';

/// A bloc that manages the state of a TopUpRecordsPaymentTypeFilter according to the event that is dispatched to it.
class TopUpRecordsPaymentTypeFilterBloc
    extends
        Bloc<
          TopUpRecordsPaymentTypeFilterEvent,
          TopUpRecordsPaymentTypeFilterState
        > {
  TopUpRecordsPaymentTypeFilterBloc(
    TopUpRecordsPaymentTypeFilterState initialState,
  ) : super(initialState) {
    on<TopUpRecordsPaymentTypeFilterInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TopUpRecordsPaymentTypeFilterInitialEvent event,
    Emitter<TopUpRecordsPaymentTypeFilterState> emit,
  ) async {
    emit(
      state.copyWith(
        topUpRecordsPaymentTypeFilterModelObj: state
            .topUpRecordsPaymentTypeFilterModelObj
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

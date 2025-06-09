import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/chipviewtoday_item_model.dart';
import '../models/listgcash_item_model.dart';
import '../models/top_up_records_time_filter_model.dart';
part 'top_up_records_time_filter_event.dart';
part 'top_up_records_time_filter_state.dart';

/// A bloc that manages the state of a TopUpRecordsTimeFilter according to the event that is dispatched to it.
class TopUpRecordsTimeFilterBloc
    extends Bloc<TopUpRecordsTimeFilterEvent, TopUpRecordsTimeFilterState> {
  TopUpRecordsTimeFilterBloc(TopUpRecordsTimeFilterState initialState)
    : super(initialState) {
    on<TopUpRecordsTimeFilterInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    TopUpRecordsTimeFilterInitialEvent event,
    Emitter<TopUpRecordsTimeFilterState> emit,
  ) async {
    emit(
      state.copyWith(
        topUpRecordsTimeFilterModelObj: state.topUpRecordsTimeFilterModelObj
            ?.copyWith(
              chipviewtodayItemList: fillChipviewtodayItemList(),
              listgcashItemList: fillListgcashItemList(),
            ),
      ),
    );
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<TopUpRecordsTimeFilterState> emit,
  ) {
    List<ChipviewtodayItemModel> newList = List<ChipviewtodayItemModel>.from(
      state.topUpRecordsTimeFilterModelObj!.chipviewtodayItemList,
    );
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        topUpRecordsTimeFilterModelObj: state.topUpRecordsTimeFilterModelObj
            ?.copyWith(chipviewtodayItemList: newList),
      ),
    );
  }

  List<ChipviewtodayItemModel> fillChipviewtodayItemList() {
    return [
      ChipviewtodayItemModel(todayOne: "lbl_today".tr),
      ChipviewtodayItemModel(todayOne: "lbl_yesterday".tr),
      ChipviewtodayItemModel(todayOne: "lbl_7_days2".tr),
      ChipviewtodayItemModel(todayOne: "msg_2023_05_11_2023_05_14".tr),
    ];
  }

  List<ListgcashItemModel> fillListgcashItemList() {
    return [
      ListgcashItemModel(
        gcash: "lbl_gcash".tr,
        twelve: "msg_2023_05_12_12_33_56".tr,
        price: "lbl_300_002".tr,
        inprogress: "lbl_in_progress".tr,
      ),
      ListgcashItemModel(
        gcash: "lbl_gcash".tr,
        twelve: "msg_2023_05_12_12_33_56".tr,
        price: "lbl_260_00".tr,
        inprogress: "lbl_rejected".tr,
      ),
    ];
  }
}

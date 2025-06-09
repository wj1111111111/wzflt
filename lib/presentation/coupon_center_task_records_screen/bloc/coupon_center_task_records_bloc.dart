import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/coupon_center_task_records_model.dart';
import '../models/listfirstdeposi_item_model.dart';
part 'coupon_center_task_records_event.dart';
part 'coupon_center_task_records_state.dart';

/// A bloc that manages the state of a CouponCenterTaskRecords according to the event that is dispatched to it.
class CouponCenterTaskRecordsBloc
    extends Bloc<CouponCenterTaskRecordsEvent, CouponCenterTaskRecordsState> {
  CouponCenterTaskRecordsBloc(CouponCenterTaskRecordsState initialState)
    : super(initialState) {
    on<CouponCenterTaskRecordsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CouponCenterTaskRecordsInitialEvent event,
    Emitter<CouponCenterTaskRecordsState> emit,
  ) async {
    emit(state.copyWith(calendaroneController: TextEditingController()));
    emit(
      state.copyWith(
        couponCenterTaskRecordsModelObj: state.couponCenterTaskRecordsModelObj
            ?.copyWith(
              dropdownItemList: fillDropdownItemList(),
              listfirstdeposiItemList: fillListfirstdeposiItemList(),
            ),
      ),
    );
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three"),
    ];
  }

  List<ListfirstdeposiItemModel> fillListfirstdeposiItemList() {
    return [
      ListfirstdeposiItemModel(
        firstdeposit: "msg_free_spins_a_chance3".tr,
        completeyour: "msg_time_2023_12_22".tr,
      ),
      ListfirstdeposiItemModel(),
      ListfirstdeposiItemModel(),
      ListfirstdeposiItemModel(),
    ];
  }
}

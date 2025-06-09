import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/coupon_center_task_records_one_model.dart';
part 'coupon_center_task_records_one_event.dart';
part 'coupon_center_task_records_one_state.dart';

/// A bloc that manages the state of a CouponCenterTaskRecordsOne according to the event that is dispatched to it.
class CouponCenterTaskRecordsOneBloc
    extends
        Bloc<CouponCenterTaskRecordsOneEvent, CouponCenterTaskRecordsOneState> {
  CouponCenterTaskRecordsOneBloc(CouponCenterTaskRecordsOneState initialState)
    : super(initialState) {
    on<CouponCenterTaskRecordsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CouponCenterTaskRecordsOneInitialEvent event,
    Emitter<CouponCenterTaskRecordsOneState> emit,
  ) async {
    emit(state.copyWith(calendaroneController: TextEditingController()));
    emit(
      state.copyWith(
        couponCenterTaskRecordsOneModelObj: state
            .couponCenterTaskRecordsOneModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList()),
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
}

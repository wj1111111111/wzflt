part of 'coupon_center_task_records_bloc.dart';

/// Represents the state of CouponCenterTaskRecords in the application.

// ignore_for_file: must_be_immutable
class CouponCenterTaskRecordsState extends Equatable {
  CouponCenterTaskRecordsState({
    this.calendaroneController,
    this.selectedDropDownValue,
    this.couponCenterTaskRecordsModelObj,
  });

  TextEditingController? calendaroneController;

  SelectionPopupModel? selectedDropDownValue;

  CouponCenterTaskRecordsModel? couponCenterTaskRecordsModelObj;

  @override
  List<Object?> get props => [
    calendaroneController,
    selectedDropDownValue,
    couponCenterTaskRecordsModelObj,
  ];
  CouponCenterTaskRecordsState copyWith({
    TextEditingController? calendaroneController,
    SelectionPopupModel? selectedDropDownValue,
    CouponCenterTaskRecordsModel? couponCenterTaskRecordsModelObj,
  }) {
    return CouponCenterTaskRecordsState(
      calendaroneController:
          calendaroneController ?? this.calendaroneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      couponCenterTaskRecordsModelObj:
          couponCenterTaskRecordsModelObj ??
          this.couponCenterTaskRecordsModelObj,
    );
  }
}

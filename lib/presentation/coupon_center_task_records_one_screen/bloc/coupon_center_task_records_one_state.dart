part of 'coupon_center_task_records_one_bloc.dart';

/// Represents the state of CouponCenterTaskRecordsOne in the application.

// ignore_for_file: must_be_immutable
class CouponCenterTaskRecordsOneState extends Equatable {
  CouponCenterTaskRecordsOneState({
    this.calendaroneController,
    this.selectedDropDownValue,
    this.couponCenterTaskRecordsOneModelObj,
  });

  TextEditingController? calendaroneController;

  SelectionPopupModel? selectedDropDownValue;

  CouponCenterTaskRecordsOneModel? couponCenterTaskRecordsOneModelObj;

  @override
  List<Object?> get props => [
    calendaroneController,
    selectedDropDownValue,
    couponCenterTaskRecordsOneModelObj,
  ];
  CouponCenterTaskRecordsOneState copyWith({
    TextEditingController? calendaroneController,
    SelectionPopupModel? selectedDropDownValue,
    CouponCenterTaskRecordsOneModel? couponCenterTaskRecordsOneModelObj,
  }) {
    return CouponCenterTaskRecordsOneState(
      calendaroneController:
          calendaroneController ?? this.calendaroneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      couponCenterTaskRecordsOneModelObj:
          couponCenterTaskRecordsOneModelObj ??
          this.couponCenterTaskRecordsOneModelObj,
    );
  }
}

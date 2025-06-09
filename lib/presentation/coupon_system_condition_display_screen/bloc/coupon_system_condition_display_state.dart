part of 'coupon_system_condition_display_bloc.dart';

/// Represents the state of CouponSystemConditionDisplay in the application.

// ignore_for_file: must_be_immutable
class CouponSystemConditionDisplayState extends Equatable {
  CouponSystemConditionDisplayState({
    this.couponSystemConditionDisplayModelObj,
  });

  CouponSystemConditionDisplayModel? couponSystemConditionDisplayModelObj;

  @override
  List<Object?> get props => [couponSystemConditionDisplayModelObj];
  CouponSystemConditionDisplayState copyWith({
    CouponSystemConditionDisplayModel? couponSystemConditionDisplayModelObj,
  }) {
    return CouponSystemConditionDisplayState(
      couponSystemConditionDisplayModelObj:
          couponSystemConditionDisplayModelObj ??
          this.couponSystemConditionDisplayModelObj,
    );
  }
}

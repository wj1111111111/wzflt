part of 'coupon_system_condition_display_one_bloc.dart';

/// Represents the state of CouponSystemConditionDisplayOne in the application.

// ignore_for_file: must_be_immutable
class CouponSystemConditionDisplayOneState extends Equatable {
  CouponSystemConditionDisplayOneState({
    this.couponSystemConditionDisplayOneModelObj,
  });

  CouponSystemConditionDisplayOneModel? couponSystemConditionDisplayOneModelObj;

  @override
  List<Object?> get props => [couponSystemConditionDisplayOneModelObj];
  CouponSystemConditionDisplayOneState copyWith({
    CouponSystemConditionDisplayOneModel?
    couponSystemConditionDisplayOneModelObj,
  }) {
    return CouponSystemConditionDisplayOneState(
      couponSystemConditionDisplayOneModelObj:
          couponSystemConditionDisplayOneModelObj ??
          this.couponSystemConditionDisplayOneModelObj,
    );
  }
}

part of 'coupon_center_my_vouchers_bloc.dart';

/// Represents the state of CouponCenterMyVouchers in the application.

// ignore_for_file: must_be_immutable
class CouponCenterMyVouchersState extends Equatable {
  CouponCenterMyVouchersState({this.couponCenterMyVouchersModelObj});

  CouponCenterMyVouchersModel? couponCenterMyVouchersModelObj;

  @override
  List<Object?> get props => [couponCenterMyVouchersModelObj];
  CouponCenterMyVouchersState copyWith({
    CouponCenterMyVouchersModel? couponCenterMyVouchersModelObj,
  }) {
    return CouponCenterMyVouchersState(
      couponCenterMyVouchersModelObj:
          couponCenterMyVouchersModelObj ?? this.couponCenterMyVouchersModelObj,
    );
  }
}

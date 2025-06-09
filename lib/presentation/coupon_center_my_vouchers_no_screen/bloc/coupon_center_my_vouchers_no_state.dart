part of 'coupon_center_my_vouchers_no_bloc.dart';

/// Represents the state of CouponCenterMyVouchersNo in the application.

// ignore_for_file: must_be_immutable
class CouponCenterMyVouchersNoState extends Equatable {
  CouponCenterMyVouchersNoState({
    this.couponcenterTab1ModelObj,
    this.couponCenterMyVouchersNoModelObj,
  });

  CouponCenterMyVouchersNoModel? couponCenterMyVouchersNoModelObj;

  CouponcenterTab1Model? couponcenterTab1ModelObj;

  @override
  List<Object?> get props => [
    couponcenterTab1ModelObj,
    couponCenterMyVouchersNoModelObj,
  ];
  CouponCenterMyVouchersNoState copyWith({
    CouponcenterTab1Model? couponcenterTab1ModelObj,
    CouponCenterMyVouchersNoModel? couponCenterMyVouchersNoModelObj,
  }) {
    return CouponCenterMyVouchersNoState(
      couponcenterTab1ModelObj:
          couponcenterTab1ModelObj ?? this.couponcenterTab1ModelObj,
      couponCenterMyVouchersNoModelObj:
          couponCenterMyVouchersNoModelObj ??
          this.couponCenterMyVouchersNoModelObj,
    );
  }
}

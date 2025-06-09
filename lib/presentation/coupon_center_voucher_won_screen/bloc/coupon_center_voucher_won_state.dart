part of 'coupon_center_voucher_won_bloc.dart';

/// Represents the state of CouponCenterVoucherWon in the application.

// ignore_for_file: must_be_immutable
class CouponCenterVoucherWonState extends Equatable {
  CouponCenterVoucherWonState({
    this.couponcenterTabModelObj,
    this.couponCenterVoucherWonModelObj,
  });

  CouponCenterVoucherWonModel? couponCenterVoucherWonModelObj;

  CouponcenterTabModel? couponcenterTabModelObj;

  @override
  List<Object?> get props => [
    couponcenterTabModelObj,
    couponCenterVoucherWonModelObj,
  ];
  CouponCenterVoucherWonState copyWith({
    CouponcenterTabModel? couponcenterTabModelObj,
    CouponCenterVoucherWonModel? couponCenterVoucherWonModelObj,
  }) {
    return CouponCenterVoucherWonState(
      couponcenterTabModelObj:
          couponcenterTabModelObj ?? this.couponcenterTabModelObj,
      couponCenterVoucherWonModelObj:
          couponCenterVoucherWonModelObj ?? this.couponCenterVoucherWonModelObj,
    );
  }
}

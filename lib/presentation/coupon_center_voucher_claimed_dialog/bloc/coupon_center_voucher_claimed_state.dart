part of 'coupon_center_voucher_claimed_bloc.dart';

/// Represents the state of CouponCenterVoucherClaimed in the application.

// ignore_for_file: must_be_immutable
class CouponCenterVoucherClaimedState extends Equatable {
  CouponCenterVoucherClaimedState({this.couponCenterVoucherClaimedModelObj});

  CouponCenterVoucherClaimedModel? couponCenterVoucherClaimedModelObj;

  @override
  List<Object?> get props => [couponCenterVoucherClaimedModelObj];
  CouponCenterVoucherClaimedState copyWith({
    CouponCenterVoucherClaimedModel? couponCenterVoucherClaimedModelObj,
  }) {
    return CouponCenterVoucherClaimedState(
      couponCenterVoucherClaimedModelObj:
          couponCenterVoucherClaimedModelObj ??
          this.couponCenterVoucherClaimedModelObj,
    );
  }
}

part of 'coupon_center_voucher_claimed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CouponCenterVoucherClaimed widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CouponCenterVoucherClaimedEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CouponCenterVoucherClaimed widget is first created.
class CouponCenterVoucherClaimedInitialEvent
    extends CouponCenterVoucherClaimedEvent {
  @override
  List<Object?> get props => [];
}

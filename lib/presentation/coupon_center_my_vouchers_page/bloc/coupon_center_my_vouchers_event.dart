part of 'coupon_center_my_vouchers_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CouponCenterMyVouchers widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CouponCenterMyVouchersEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CouponCenterMyVouchers widget is first created.
class CouponCenterMyVouchersInitialEvent extends CouponCenterMyVouchersEvent {
  @override
  List<Object?> get props => [];
}

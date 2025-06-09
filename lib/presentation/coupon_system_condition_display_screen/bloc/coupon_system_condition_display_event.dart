part of 'coupon_system_condition_display_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CouponSystemConditionDisplay widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CouponSystemConditionDisplayEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CouponSystemConditionDisplay widget is first created.
class CouponSystemConditionDisplayInitialEvent
    extends CouponSystemConditionDisplayEvent {
  @override
  List<Object?> get props => [];
}

part of 'coupon_center_task_records_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CouponCenterTaskRecords widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CouponCenterTaskRecordsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CouponCenterTaskRecords widget is first created.
class CouponCenterTaskRecordsInitialEvent extends CouponCenterTaskRecordsEvent {
  @override
  List<Object?> get props => [];
}

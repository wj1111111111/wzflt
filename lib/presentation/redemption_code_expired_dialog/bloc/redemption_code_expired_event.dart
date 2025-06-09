part of 'redemption_code_expired_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RedemptionCodeExpired widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class RedemptionCodeExpiredEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RedemptionCodeExpired widget is first created.
class RedemptionCodeExpiredInitialEvent extends RedemptionCodeExpiredEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends RedemptionCodeExpiredEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}

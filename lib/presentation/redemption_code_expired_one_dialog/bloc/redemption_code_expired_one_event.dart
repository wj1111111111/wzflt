part of 'redemption_code_expired_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RedemptionCodeExpiredOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class RedemptionCodeExpiredOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RedemptionCodeExpiredOne widget is first created.
class RedemptionCodeExpiredOneInitialEvent
    extends RedemptionCodeExpiredOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends RedemptionCodeExpiredOneEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}

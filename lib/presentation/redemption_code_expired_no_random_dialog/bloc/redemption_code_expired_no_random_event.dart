part of 'redemption_code_expired_no_random_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RedemptionCodeExpiredNoRandom widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class RedemptionCodeExpiredNoRandomEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RedemptionCodeExpiredNoRandom widget is first created.
class RedemptionCodeExpiredNoRandomInitialEvent
    extends RedemptionCodeExpiredNoRandomEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends RedemptionCodeExpiredNoRandomEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}

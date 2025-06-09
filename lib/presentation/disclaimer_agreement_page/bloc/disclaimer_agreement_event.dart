part of 'disclaimer_agreement_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DisclaimerAgreement widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class DisclaimerAgreementEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DisclaimerAgreement widget is first created.
class DisclaimerAgreementInitialEvent extends DisclaimerAgreementEvent {
  @override
  List<Object?> get props => [];
}

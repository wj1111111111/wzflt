part of 'referral_logged_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReferralLoggedIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ReferralLoggedInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ReferralLoggedIn widget is first created.
class ReferralLoggedInInitialEvent extends ReferralLoggedInEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing slider index

// ignore_for_file: must_be_immutable
class ChangeSliderIndexEvent extends ReferralLoggedInEvent {
  ChangeSliderIndexEvent({required this.value});

  int value;

  @override
  List<Object?> get props => [value];
}

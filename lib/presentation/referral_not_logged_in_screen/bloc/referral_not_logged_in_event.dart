part of 'referral_not_logged_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReferralNotLoggedIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ReferralNotLoggedInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ReferralNotLoggedIn widget is first created.
class ReferralNotLoggedInInitialEvent extends ReferralNotLoggedInEvent {
  @override
  List<Object?> get props => [];
}

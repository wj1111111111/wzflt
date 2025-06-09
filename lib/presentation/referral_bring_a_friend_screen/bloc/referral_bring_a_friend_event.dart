part of 'referral_bring_a_friend_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReferralBringAFriend widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ReferralBringAFriendEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ReferralBringAFriend widget is first created.
class ReferralBringAFriendInitialEvent extends ReferralBringAFriendEvent {
  @override
  List<Object?> get props => [];
}

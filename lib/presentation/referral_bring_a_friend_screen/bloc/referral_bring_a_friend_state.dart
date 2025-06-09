part of 'referral_bring_a_friend_bloc.dart';

/// Represents the state of ReferralBringAFriend in the application.

// ignore_for_file: must_be_immutable
class ReferralBringAFriendState extends Equatable {
  ReferralBringAFriendState({this.referralBringAFriendModelObj});

  ReferralBringAFriendModel? referralBringAFriendModelObj;

  @override
  List<Object?> get props => [referralBringAFriendModelObj];
  ReferralBringAFriendState copyWith({
    ReferralBringAFriendModel? referralBringAFriendModelObj,
  }) {
    return ReferralBringAFriendState(
      referralBringAFriendModelObj:
          referralBringAFriendModelObj ?? this.referralBringAFriendModelObj,
    );
  }
}

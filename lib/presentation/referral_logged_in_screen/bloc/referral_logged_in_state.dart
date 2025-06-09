part of 'referral_logged_in_bloc.dart';

/// Represents the state of ReferralLoggedIn in the application.

// ignore_for_file: must_be_immutable
class ReferralLoggedInState extends Equatable {
  ReferralLoggedInState({this.sliderIndex = 0, this.referralLoggedInModelObj});

  ReferralLoggedInModel? referralLoggedInModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [sliderIndex, referralLoggedInModelObj];
  ReferralLoggedInState copyWith({
    int? sliderIndex,
    ReferralLoggedInModel? referralLoggedInModelObj,
  }) {
    return ReferralLoggedInState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      referralLoggedInModelObj:
          referralLoggedInModelObj ?? this.referralLoggedInModelObj,
    );
  }
}

part of 'referral_not_logged_in_bloc.dart';

/// Represents the state of ReferralNotLoggedIn in the application.

// ignore_for_file: must_be_immutable
class ReferralNotLoggedInState extends Equatable {
  ReferralNotLoggedInState({
    this.junioragentiController,
    this.senioragentController,
    this.referralNotLoggedInModelObj,
  });

  TextEditingController? junioragentiController;

  TextEditingController? senioragentController;

  ReferralNotLoggedInModel? referralNotLoggedInModelObj;

  @override
  List<Object?> get props => [
    junioragentiController,
    senioragentController,
    referralNotLoggedInModelObj,
  ];
  ReferralNotLoggedInState copyWith({
    TextEditingController? junioragentiController,
    TextEditingController? senioragentController,
    ReferralNotLoggedInModel? referralNotLoggedInModelObj,
  }) {
    return ReferralNotLoggedInState(
      junioragentiController:
          junioragentiController ?? this.junioragentiController,
      senioragentController:
          senioragentController ?? this.senioragentController,
      referralNotLoggedInModelObj:
          referralNotLoggedInModelObj ?? this.referralNotLoggedInModelObj,
    );
  }
}

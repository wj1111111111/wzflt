part of 'home_claim_success_bloc.dart';

/// Represents the state of HomeClaimSuccess in the application.

// ignore_for_file: must_be_immutable
class HomeClaimSuccessState extends Equatable {
  HomeClaimSuccessState({this.homeClaimSuccessModelObj});

  HomeClaimSuccessModel? homeClaimSuccessModelObj;

  @override
  List<Object?> get props => [homeClaimSuccessModelObj];
  HomeClaimSuccessState copyWith({
    HomeClaimSuccessModel? homeClaimSuccessModelObj,
  }) {
    return HomeClaimSuccessState(
      homeClaimSuccessModelObj:
          homeClaimSuccessModelObj ?? this.homeClaimSuccessModelObj,
    );
  }
}

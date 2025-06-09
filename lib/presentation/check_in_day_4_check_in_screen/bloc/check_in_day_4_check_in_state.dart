part of 'check_in_day_4_check_in_bloc.dart';

/// Represents the state of CheckInDay4CheckIn in the application.

// ignore_for_file: must_be_immutable
class CheckInDay4CheckInState extends Equatable {
  CheckInDay4CheckInState({this.checkInDay4CheckInModelObj});

  CheckInDay4CheckInModel? checkInDay4CheckInModelObj;

  @override
  List<Object?> get props => [checkInDay4CheckInModelObj];
  CheckInDay4CheckInState copyWith({
    CheckInDay4CheckInModel? checkInDay4CheckInModelObj,
  }) {
    return CheckInDay4CheckInState(
      checkInDay4CheckInModelObj:
          checkInDay4CheckInModelObj ?? this.checkInDay4CheckInModelObj,
    );
  }
}

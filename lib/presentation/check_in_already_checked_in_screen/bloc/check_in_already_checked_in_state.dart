part of 'check_in_already_checked_in_bloc.dart';

/// Represents the state of CheckInAlreadyCheckedIn in the application.

// ignore_for_file: must_be_immutable
class CheckInAlreadyCheckedInState extends Equatable {
  CheckInAlreadyCheckedInState({this.checkInAlreadyCheckedInModelObj});

  CheckInAlreadyCheckedInModel? checkInAlreadyCheckedInModelObj;

  @override
  List<Object?> get props => [checkInAlreadyCheckedInModelObj];
  CheckInAlreadyCheckedInState copyWith({
    CheckInAlreadyCheckedInModel? checkInAlreadyCheckedInModelObj,
  }) {
    return CheckInAlreadyCheckedInState(
      checkInAlreadyCheckedInModelObj:
          checkInAlreadyCheckedInModelObj ??
          this.checkInAlreadyCheckedInModelObj,
    );
  }
}

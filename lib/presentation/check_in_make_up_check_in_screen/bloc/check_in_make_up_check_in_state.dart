part of 'check_in_make_up_check_in_bloc.dart';

/// Represents the state of CheckInMakeUpCheckIn in the application.

// ignore_for_file: must_be_immutable
class CheckInMakeUpCheckInState extends Equatable {
  CheckInMakeUpCheckInState({this.checkInMakeUpCheckInModelObj});

  CheckInMakeUpCheckInModel? checkInMakeUpCheckInModelObj;

  @override
  List<Object?> get props => [checkInMakeUpCheckInModelObj];
  CheckInMakeUpCheckInState copyWith({
    CheckInMakeUpCheckInModel? checkInMakeUpCheckInModelObj,
  }) {
    return CheckInMakeUpCheckInState(
      checkInMakeUpCheckInModelObj:
          checkInMakeUpCheckInModelObj ?? this.checkInMakeUpCheckInModelObj,
    );
  }
}

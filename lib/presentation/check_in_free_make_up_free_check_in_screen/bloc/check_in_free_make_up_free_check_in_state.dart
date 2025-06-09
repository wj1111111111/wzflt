part of 'check_in_free_make_up_free_check_in_bloc.dart';

/// Represents the state of CheckInFreeMakeUpFreeCheckIn in the application.

// ignore_for_file: must_be_immutable
class CheckInFreeMakeUpFreeCheckInState extends Equatable {
  CheckInFreeMakeUpFreeCheckInState({
    this.checkInFreeMakeUpFreeCheckInModelObj,
  });

  CheckInFreeMakeUpFreeCheckInModel? checkInFreeMakeUpFreeCheckInModelObj;

  @override
  List<Object?> get props => [checkInFreeMakeUpFreeCheckInModelObj];
  CheckInFreeMakeUpFreeCheckInState copyWith({
    CheckInFreeMakeUpFreeCheckInModel? checkInFreeMakeUpFreeCheckInModelObj,
  }) {
    return CheckInFreeMakeUpFreeCheckInState(
      checkInFreeMakeUpFreeCheckInModelObj:
          checkInFreeMakeUpFreeCheckInModelObj ??
          this.checkInFreeMakeUpFreeCheckInModelObj,
    );
  }
}

part of 'check_in_day_5_check_in_bloc.dart';

/// Represents the state of CheckInDay5CheckIn in the application.

// ignore_for_file: must_be_immutable
class CheckInDay5CheckInState extends Equatable {
  CheckInDay5CheckInState({this.checkInDay5CheckInModelObj});

  CheckInDay5CheckInModel? checkInDay5CheckInModelObj;

  @override
  List<Object?> get props => [checkInDay5CheckInModelObj];
  CheckInDay5CheckInState copyWith({
    CheckInDay5CheckInModel? checkInDay5CheckInModelObj,
  }) {
    return CheckInDay5CheckInState(
      checkInDay5CheckInModelObj:
          checkInDay5CheckInModelObj ?? this.checkInDay5CheckInModelObj,
    );
  }
}

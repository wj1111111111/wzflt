part of 'check_in_bloc.dart';

/// Represents the state of CheckIn in the application.

// ignore_for_file: must_be_immutable
class CheckInState extends Equatable {
  CheckInState({this.checkInModelObj});

  CheckInModel? checkInModelObj;

  @override
  List<Object?> get props => [checkInModelObj];
  CheckInState copyWith({CheckInModel? checkInModelObj}) {
    return CheckInState(
      checkInModelObj: checkInModelObj ?? this.checkInModelObj,
    );
  }
}

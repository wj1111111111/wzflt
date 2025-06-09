part of 'not_during_event_period_bloc.dart';

/// Represents the state of NotDuringEventPeriod in the application.

// ignore_for_file: must_be_immutable
class NotDuringEventPeriodState extends Equatable {
  NotDuringEventPeriodState({this.notDuringEventPeriodModelObj});

  NotDuringEventPeriodModel? notDuringEventPeriodModelObj;

  @override
  List<Object?> get props => [notDuringEventPeriodModelObj];
  NotDuringEventPeriodState copyWith({
    NotDuringEventPeriodModel? notDuringEventPeriodModelObj,
  }) {
    return NotDuringEventPeriodState(
      notDuringEventPeriodModelObj:
          notDuringEventPeriodModelObj ?? this.notDuringEventPeriodModelObj,
    );
  }
}

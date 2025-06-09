part of 'next_day_inform_people_needed_bloc.dart';

/// Represents the state of NextDayInformPeopleNeeded in the application.

// ignore_for_file: must_be_immutable
class NextDayInformPeopleNeededState extends Equatable {
  NextDayInformPeopleNeededState({this.nextDayInformPeopleNeededModelObj});

  NextDayInformPeopleNeededModel? nextDayInformPeopleNeededModelObj;

  @override
  List<Object?> get props => [nextDayInformPeopleNeededModelObj];
  NextDayInformPeopleNeededState copyWith({
    NextDayInformPeopleNeededModel? nextDayInformPeopleNeededModelObj,
  }) {
    return NextDayInformPeopleNeededState(
      nextDayInformPeopleNeededModelObj:
          nextDayInformPeopleNeededModelObj ??
          this.nextDayInformPeopleNeededModelObj,
    );
  }
}

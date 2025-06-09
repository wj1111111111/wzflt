part of 'next_day_inform_people_needed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NextDayInformPeopleNeeded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class NextDayInformPeopleNeededEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NextDayInformPeopleNeeded widget is first created.
class NextDayInformPeopleNeededInitialEvent
    extends NextDayInformPeopleNeededEvent {
  @override
  List<Object?> get props => [];
}

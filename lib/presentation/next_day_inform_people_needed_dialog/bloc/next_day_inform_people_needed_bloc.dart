import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/next_day_inform_people_needed_model.dart';
part 'next_day_inform_people_needed_event.dart';
part 'next_day_inform_people_needed_state.dart';

/// A bloc that manages the state of a NextDayInformPeopleNeeded according to the event that is dispatched to it.
class NextDayInformPeopleNeededBloc
    extends
        Bloc<NextDayInformPeopleNeededEvent, NextDayInformPeopleNeededState> {
  NextDayInformPeopleNeededBloc(NextDayInformPeopleNeededState initialState)
    : super(initialState) {
    on<NextDayInformPeopleNeededInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NextDayInformPeopleNeededInitialEvent event,
    Emitter<NextDayInformPeopleNeededState> emit,
  ) async {}
}

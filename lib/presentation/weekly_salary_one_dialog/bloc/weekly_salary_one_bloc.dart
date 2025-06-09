import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/weekly_salary_one_model.dart';
part 'weekly_salary_one_event.dart';
part 'weekly_salary_one_state.dart';

/// A bloc that manages the state of a WeeklySalaryOne according to the event that is dispatched to it.
class WeeklySalaryOneBloc
    extends Bloc<WeeklySalaryOneEvent, WeeklySalaryOneState> {
  WeeklySalaryOneBloc(WeeklySalaryOneState initialState) : super(initialState) {
    on<WeeklySalaryOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WeeklySalaryOneInitialEvent event,
    Emitter<WeeklySalaryOneState> emit,
  ) async {}
}

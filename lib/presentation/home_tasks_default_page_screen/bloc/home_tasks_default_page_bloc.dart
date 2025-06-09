import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_tasks_default_page_model.dart';
part 'home_tasks_default_page_event.dart';
part 'home_tasks_default_page_state.dart';

/// A bloc that manages the state of a HomeTasksDefaultPage according to the event that is dispatched to it.
class HomeTasksDefaultPageBloc
    extends Bloc<HomeTasksDefaultPageEvent, HomeTasksDefaultPageState> {
  HomeTasksDefaultPageBloc(HomeTasksDefaultPageState initialState)
    : super(initialState) {
    on<HomeTasksDefaultPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeTasksDefaultPageInitialEvent event,
    Emitter<HomeTasksDefaultPageState> emit,
  ) async {}
}

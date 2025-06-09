import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_seven_items_model.dart';
part 'home_seven_items_event.dart';
part 'home_seven_items_state.dart';

/// A bloc that manages the state of a HomeSevenItems according to the event that is dispatched to it.
class HomeSevenItemsBloc
    extends Bloc<HomeSevenItemsEvent, HomeSevenItemsState> {
  HomeSevenItemsBloc(HomeSevenItemsState initialState) : super(initialState) {
    on<HomeSevenItemsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeSevenItemsInitialEvent event,
    Emitter<HomeSevenItemsState> emit,
  ) async {}
}

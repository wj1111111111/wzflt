import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_popup_model.dart';
part 'home_popup_event.dart';
part 'home_popup_state.dart';

/// A bloc that manages the state of a HomePopup according to the event that is dispatched to it.
class HomePopupBloc extends Bloc<HomePopupEvent, HomePopupState> {
  HomePopupBloc(HomePopupState initialState) : super(initialState) {
    on<HomePopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePopupInitialEvent event,
    Emitter<HomePopupState> emit,
  ) async {}
}

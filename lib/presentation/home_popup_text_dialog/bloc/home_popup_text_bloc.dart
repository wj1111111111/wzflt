import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_popup_text_model.dart';
part 'home_popup_text_event.dart';
part 'home_popup_text_state.dart';

/// A bloc that manages the state of a HomePopupText according to the event that is dispatched to it.
class HomePopupTextBloc extends Bloc<HomePopupTextEvent, HomePopupTextState> {
  HomePopupTextBloc(HomePopupTextState initialState) : super(initialState) {
    on<HomePopupTextInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePopupTextInitialEvent event,
    Emitter<HomePopupTextState> emit,
  ) async {}
}

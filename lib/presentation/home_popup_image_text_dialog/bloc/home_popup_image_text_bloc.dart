import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_popup_image_text_model.dart';
part 'home_popup_image_text_event.dart';
part 'home_popup_image_text_state.dart';

/// A bloc that manages the state of a HomePopupImageText according to the event that is dispatched to it.
class HomePopupImageTextBloc
    extends Bloc<HomePopupImageTextEvent, HomePopupImageTextState> {
  HomePopupImageTextBloc(HomePopupImageTextState initialState)
    : super(initialState) {
    on<HomePopupImageTextInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePopupImageTextInitialEvent event,
    Emitter<HomePopupImageTextState> emit,
  ) async {}
}

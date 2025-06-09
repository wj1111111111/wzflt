import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_popup_image_model.dart';
part 'home_popup_image_event.dart';
part 'home_popup_image_state.dart';

/// A bloc that manages the state of a HomePopupImage according to the event that is dispatched to it.
class HomePopupImageBloc
    extends Bloc<HomePopupImageEvent, HomePopupImageState> {
  HomePopupImageBloc(HomePopupImageState initialState) : super(initialState) {
    on<HomePopupImageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomePopupImageInitialEvent event,
    Emitter<HomePopupImageState> emit,
  ) async {}
}

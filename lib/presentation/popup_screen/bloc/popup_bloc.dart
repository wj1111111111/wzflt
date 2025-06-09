import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/popup_model.dart';
part 'popup_event.dart';
part 'popup_state.dart';

/// A bloc that manages the state of a Popup according to the event that is dispatched to it.
class PopupBloc extends Bloc<PopupEvent, PopupState> {
  PopupBloc(PopupState initialState) : super(initialState) {
    on<PopupInitialEvent>(_onInitialize);
  }

  _onInitialize(PopupInitialEvent event, Emitter<PopupState> emit) async {}
}

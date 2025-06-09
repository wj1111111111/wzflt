import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_info_popup_simplified_text_model.dart';
part 'home_info_popup_simplified_text_event.dart';
part 'home_info_popup_simplified_text_state.dart';

/// A bloc that manages the state of a HomeInfoPopupSimplifiedText according to the event that is dispatched to it.
class HomeInfoPopupSimplifiedTextBloc
    extends
        Bloc<
          HomeInfoPopupSimplifiedTextEvent,
          HomeInfoPopupSimplifiedTextState
        > {
  HomeInfoPopupSimplifiedTextBloc(HomeInfoPopupSimplifiedTextState initialState)
    : super(initialState) {
    on<HomeInfoPopupSimplifiedTextInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInfoPopupSimplifiedTextInitialEvent event,
    Emitter<HomeInfoPopupSimplifiedTextState> emit,
  ) async {}
}

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/other_pages_enter_game_prompt_model.dart';
part 'other_pages_enter_game_prompt_event.dart';
part 'other_pages_enter_game_prompt_state.dart';

/// A bloc that manages the state of a OtherPagesEnterGamePrompt according to the event that is dispatched to it.
class OtherPagesEnterGamePromptBloc
    extends
        Bloc<OtherPagesEnterGamePromptEvent, OtherPagesEnterGamePromptState> {
  OtherPagesEnterGamePromptBloc(OtherPagesEnterGamePromptState initialState)
    : super(initialState) {
    on<OtherPagesEnterGamePromptInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OtherPagesEnterGamePromptInitialEvent event,
    Emitter<OtherPagesEnterGamePromptState> emit,
  ) async {}
}

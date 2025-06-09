import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/feedback_box_success_prompt_model.dart';
part 'feedback_box_success_prompt_event.dart';
part 'feedback_box_success_prompt_state.dart';

/// A bloc that manages the state of a FeedbackBoxSuccessPrompt according to the event that is dispatched to it.
class FeedbackBoxSuccessPromptBloc
    extends Bloc<FeedbackBoxSuccessPromptEvent, FeedbackBoxSuccessPromptState> {
  FeedbackBoxSuccessPromptBloc(FeedbackBoxSuccessPromptState initialState)
    : super(initialState) {
    on<FeedbackBoxSuccessPromptInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FeedbackBoxSuccessPromptInitialEvent event,
    Emitter<FeedbackBoxSuccessPromptState> emit,
  ) async {
    emit(state.copyWith(enterthegiftController: TextEditingController()));
  }
}

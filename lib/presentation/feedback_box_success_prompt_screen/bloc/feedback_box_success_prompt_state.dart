part of 'feedback_box_success_prompt_bloc.dart';

/// Represents the state of FeedbackBoxSuccessPrompt in the application.

// ignore_for_file: must_be_immutable
class FeedbackBoxSuccessPromptState extends Equatable {
  FeedbackBoxSuccessPromptState({
    this.enterthegiftController,
    this.feedbackBoxSuccessPromptModelObj,
  });

  TextEditingController? enterthegiftController;

  FeedbackBoxSuccessPromptModel? feedbackBoxSuccessPromptModelObj;

  @override
  List<Object?> get props => [
    enterthegiftController,
    feedbackBoxSuccessPromptModelObj,
  ];
  FeedbackBoxSuccessPromptState copyWith({
    TextEditingController? enterthegiftController,
    FeedbackBoxSuccessPromptModel? feedbackBoxSuccessPromptModelObj,
  }) {
    return FeedbackBoxSuccessPromptState(
      enterthegiftController:
          enterthegiftController ?? this.enterthegiftController,
      feedbackBoxSuccessPromptModelObj:
          feedbackBoxSuccessPromptModelObj ??
          this.feedbackBoxSuccessPromptModelObj,
    );
  }
}

part of 'feedback_box_limit_reached_bloc.dart';

/// Represents the state of FeedbackBoxLimitReached in the application.

// ignore_for_file: must_be_immutable
class FeedbackBoxLimitReachedState extends Equatable {
  FeedbackBoxLimitReachedState({
    this.pleaseenteroneController,
    this.selectedDropDownValue,
    this.feedbackBoxLimitReachedModelObj,
  });

  TextEditingController? pleaseenteroneController;

  SelectionPopupModel? selectedDropDownValue;

  FeedbackBoxLimitReachedModel? feedbackBoxLimitReachedModelObj;

  @override
  List<Object?> get props => [
    pleaseenteroneController,
    selectedDropDownValue,
    feedbackBoxLimitReachedModelObj,
  ];
  FeedbackBoxLimitReachedState copyWith({
    TextEditingController? pleaseenteroneController,
    SelectionPopupModel? selectedDropDownValue,
    FeedbackBoxLimitReachedModel? feedbackBoxLimitReachedModelObj,
  }) {
    return FeedbackBoxLimitReachedState(
      pleaseenteroneController:
          pleaseenteroneController ?? this.pleaseenteroneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      feedbackBoxLimitReachedModelObj:
          feedbackBoxLimitReachedModelObj ??
          this.feedbackBoxLimitReachedModelObj,
    );
  }
}

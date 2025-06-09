import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/feedback_box_limit_reached_model.dart';
part 'feedback_box_limit_reached_event.dart';
part 'feedback_box_limit_reached_state.dart';

/// A bloc that manages the state of a FeedbackBoxLimitReached according to the event that is dispatched to it.
class FeedbackBoxLimitReachedBloc
    extends Bloc<FeedbackBoxLimitReachedEvent, FeedbackBoxLimitReachedState> {
  FeedbackBoxLimitReachedBloc(FeedbackBoxLimitReachedState initialState)
    : super(initialState) {
    on<FeedbackBoxLimitReachedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FeedbackBoxLimitReachedInitialEvent event,
    Emitter<FeedbackBoxLimitReachedState> emit,
  ) async {
    emit(state.copyWith(pleaseenteroneController: TextEditingController()));
    emit(
      state.copyWith(
        feedbackBoxLimitReachedModelObj: state.feedbackBoxLimitReachedModelObj
            ?.copyWith(dropdownItemList: fillDropdownItemList()),
      ),
    );
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three"),
    ];
  }
}

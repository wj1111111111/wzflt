import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [feedback_box_limit_reached_dialog],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class FeedbackBoxLimitReachedModel extends Equatable {
  FeedbackBoxLimitReachedModel({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  FeedbackBoxLimitReachedModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
  }) {
    return FeedbackBoxLimitReachedModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}

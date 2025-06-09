import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'betting_history_item_model.dart';

/// This class defines the variables used in the [betting_history_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class BettingHistoryModel extends Equatable {
  BettingHistoryModel({
    this.dropdownItemList = const [],
    this.bettingHistoryItemList = const [],
  });

  List<SelectionPopupModel> dropdownItemList;

  List<BettingHistoryItemModel> bettingHistoryItemList;

  BettingHistoryModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<BettingHistoryItemModel>? bettingHistoryItemList,
  }) {
    return BettingHistoryModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      bettingHistoryItemList:
          bettingHistoryItemList ?? this.bettingHistoryItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, bettingHistoryItemList];
}

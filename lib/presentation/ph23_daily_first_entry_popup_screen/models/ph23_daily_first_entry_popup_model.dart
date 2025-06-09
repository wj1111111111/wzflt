import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listone_one_item_model.dart';

/// This class defines the variables used in the [ph23_daily_first_entry_popup_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class Ph23DailyFirstEntryPopupModel extends Equatable {
  Ph23DailyFirstEntryPopupModel({this.listoneOneItemList = const []});

  List<ListoneOneItemModel> listoneOneItemList;

  Ph23DailyFirstEntryPopupModel copyWith({
    List<ListoneOneItemModel>? listoneOneItemList,
  }) {
    return Ph23DailyFirstEntryPopupModel(
      listoneOneItemList: listoneOneItemList ?? this.listoneOneItemList,
    );
  }

  @override
  List<Object?> get props => [listoneOneItemList];
}

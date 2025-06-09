import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'listlevelcounte_item_model.dart';
import 'listtoday_item_model.dart';
import 'listtwo_item_model.dart';

/// This class is used in the [team_tab_page] screen.

// ignore_for_file: must_be_immutable
class TeamTabModel extends Equatable {
  TeamTabModel({
    this.listtodayItemList = const [],
    this.listlevelcounteItemList = const [],
    this.dropdownItemList = const [],
    this.listtwoItemList = const [],
  });

  List<ListtodayItemModel> listtodayItemList;

  List<ListlevelcounteItemModel> listlevelcounteItemList;

  List<SelectionPopupModel> dropdownItemList;

  List<ListtwoItemModel> listtwoItemList;

  TeamTabModel copyWith({
    List<ListtodayItemModel>? listtodayItemList,
    List<ListlevelcounteItemModel>? listlevelcounteItemList,
    List<SelectionPopupModel>? dropdownItemList,
    List<ListtwoItemModel>? listtwoItemList,
  }) {
    return TeamTabModel(
      listtodayItemList: listtodayItemList ?? this.listtodayItemList,
      listlevelcounteItemList:
          listlevelcounteItemList ?? this.listlevelcounteItemList,
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      listtwoItemList: listtwoItemList ?? this.listtwoItemList,
    );
  }

  @override
  List<Object?> get props => [
    listtodayItemList,
    listlevelcounteItemList,
    dropdownItemList,
    listtwoItemList,
  ];
}

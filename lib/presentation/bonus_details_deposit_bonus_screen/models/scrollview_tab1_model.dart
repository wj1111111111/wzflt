import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'listdate_item_model.dart';

/// This class is used in the [scrollview_tab1_page] screen.

// ignore_for_file: must_be_immutable
class ScrollviewTab1Model extends Equatable {
  ScrollviewTab1Model({
    this.dropdownItemList = const [],
    this.listdateItemList = const [],
  });

  List<SelectionPopupModel> dropdownItemList;

  List<ListdateItemModel> listdateItemList;

  ScrollviewTab1Model copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<ListdateItemModel>? listdateItemList,
  }) {
    return ScrollviewTab1Model(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      listdateItemList: listdateItemList ?? this.listdateItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, listdateItemList];
}

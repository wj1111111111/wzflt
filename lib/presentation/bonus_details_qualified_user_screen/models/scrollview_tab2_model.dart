import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'listdate_item_model.dart';

/// This class is used in the [scrollview_tab2_page] screen.

// ignore_for_file: must_be_immutable
class ScrollviewTab2Model extends Equatable {
  ScrollviewTab2Model({
    this.dropdownItemList = const [],
    this.listdateItemList = const [],
  });

  List<SelectionPopupModel> dropdownItemList;

  List<ListdateItemModel> listdateItemList;

  ScrollviewTab2Model copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<ListdateItemModel>? listdateItemList,
  }) {
    return ScrollviewTab2Model(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      listdateItemList: listdateItemList ?? this.listdateItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, listdateItemList];
}

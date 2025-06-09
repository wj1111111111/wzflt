import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class is used in the [scrollview_tab4_page] screen.

// ignore_for_file: must_be_immutable
class ScrollviewTab4Model extends Equatable {
  ScrollviewTab4Model({this.dropdownItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  ScrollviewTab4Model copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return ScrollviewTab4Model(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}

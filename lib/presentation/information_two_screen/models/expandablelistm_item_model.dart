import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [expandablelistm_item_widget] screen.

// ignore_for_file: must_be_immutable
class ExpandablelistmItemModel extends Equatable {
  ExpandablelistmItemModel({this.isSelected}) {
    isSelected = isSelected ?? false;
  }

  bool? isSelected;

  ExpandablelistmItemModel copyWith({bool? isSelected}) {
    return ExpandablelistmItemModel(isSelected: isSelected ?? this.isSelected);
  }

  @override
  List<Object?> get props => [isSelected];
}

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [expandablelisto_item_widget] screen.

// ignore_for_file: must_be_immutable
class ExpandablelistoItemModel extends Equatable {
  ExpandablelistoItemModel({this.isSelected}) {
    isSelected = isSelected ?? false;
  }

  bool? isSelected;

  ExpandablelistoItemModel copyWith({bool? isSelected}) {
    return ExpandablelistoItemModel(isSelected: isSelected ?? this.isSelected);
  }

  @override
  List<Object?> get props => [isSelected];
}

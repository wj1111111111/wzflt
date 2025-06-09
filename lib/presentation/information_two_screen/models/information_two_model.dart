import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'expandablelistm_item_model.dart';

/// This class defines the variables used in the [information_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class InformationTwoModel extends Equatable {
  InformationTwoModel({this.expandablelistmItemList = const []});

  List<ExpandablelistmItemModel> expandablelistmItemList;

  InformationTwoModel copyWith({
    List<ExpandablelistmItemModel>? expandablelistmItemList,
  }) {
    return InformationTwoModel(
      expandablelistmItemList:
          expandablelistmItemList ?? this.expandablelistmItemList,
    );
  }

  @override
  List<Object?> get props => [expandablelistmItemList];
}

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listhot_one_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListhotOneItemModel extends Equatable {
  ListhotOneItemModel({this.hotTwo, this.id}) {
    hotTwo = hotTwo ?? "lbl_hot".tr;
    id = id ?? "";
  }

  String? hotTwo;

  String? id;

  ListhotOneItemModel copyWith({String? hotTwo, String? id}) {
    return ListhotOneItemModel(
      hotTwo: hotTwo ?? this.hotTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [hotTwo, id];
}

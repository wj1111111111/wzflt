import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listone_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListoneItemModel extends Equatable {
  ListoneItemModel({this.one, this.id}) {
    one = one ?? "lbl_12".tr;
    id = id ?? "";
  }

  String? one;

  String? id;

  ListoneItemModel copyWith({String? one, String? id}) {
    return ListoneItemModel(one: one ?? this.one, id: id ?? this.id);
  }

  @override
  List<Object?> get props => [one, id];
}

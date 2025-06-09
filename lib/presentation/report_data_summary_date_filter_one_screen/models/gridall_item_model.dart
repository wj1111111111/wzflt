import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [gridall_item_widget] screen.

// ignore_for_file: must_be_immutable
class GridallItemModel extends Equatable {
  GridallItemModel({this.all, this.id}) {
    all = all ?? "lbl_all".tr;
    id = id ?? "";
  }

  String? all;

  String? id;

  GridallItemModel copyWith({String? all, String? id}) {
    return GridallItemModel(all: all ?? this.all, id: id ?? this.id);
  }

  @override
  List<Object?> get props => [all, id];
}

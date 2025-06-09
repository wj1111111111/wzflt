import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [list94bdf4d8739_item_widget] screen.

// ignore_for_file: must_be_immutable
class List94bdf4d8739ItemModel extends Equatable {
  List94bdf4d8739ItemModel({this.id}) {
    id = id ?? "";
  }

  String? id;

  List94bdf4d8739ItemModel copyWith({String? id}) {
    return List94bdf4d8739ItemModel(id: id ?? this.id);
  }

  @override
  List<Object?> get props => [id];
}

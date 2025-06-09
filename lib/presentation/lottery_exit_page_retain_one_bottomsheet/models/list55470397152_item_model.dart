import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [list55470397152_item_widget] screen.

// ignore_for_file: must_be_immutable
class List55470397152ItemModel extends Equatable {
  List55470397152ItemModel({this.tf, this.tf1, this.tf2, this.id}) {
    tf = tf ?? "lbl_5547039715226".tr;
    tf1 = tf1 ?? "lbl_5547039715226".tr;
    tf2 = tf2 ?? "lbl_5547039715226".tr;
    id = id ?? "";
  }

  String? tf;

  String? tf1;

  String? tf2;

  String? id;

  List55470397152ItemModel copyWith({
    String? tf,
    String? tf1,
    String? tf2,
    String? id,
  }) {
    return List55470397152ItemModel(
      tf: tf ?? this.tf,
      tf1: tf1 ?? this.tf1,
      tf2: tf2 ?? this.tf2,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [tf, tf1, tf2, id];
}

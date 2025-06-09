import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listjunior_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListjuniorItemModel extends Equatable {
  ListjuniorItemModel({this.seven, this.tf, this.one, this.two, this.id}) {
    seven = seven ?? "lbl_0_7".tr;
    tf = tf ?? "lbl5".tr;
    one = one ?? "lbl5".tr;
    two = two ?? "lbl5".tr;
    id = id ?? "";
  }

  String? seven;

  String? tf;

  String? one;

  String? two;

  String? id;

  ListjuniorItemModel copyWith({
    String? seven,
    String? tf,
    String? one,
    String? two,
    String? id,
  }) {
    return ListjuniorItemModel(
      seven: seven ?? this.seven,
      tf: tf ?? this.tf,
      one: one ?? this.one,
      two: two ?? this.two,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [seven, tf, one, two, id];
}

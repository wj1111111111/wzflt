import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listjunioragent_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListjunioragentItemModel extends Equatable {
  ListjunioragentItemModel({
    this.junioragenti,
    this.seven,
    this.tf,
    this.one,
    this.two,
    this.id,
  }) {
    junioragenti = junioragenti ?? "lbl_junior_agent_i".tr;
    seven = seven ?? "lbl_0_7".tr;
    tf = tf ?? "lbl5".tr;
    one = one ?? "lbl5".tr;
    two = two ?? "lbl5".tr;
    id = id ?? "";
  }

  String? junioragenti;

  String? seven;

  String? tf;

  String? one;

  String? two;

  String? id;

  ListjunioragentItemModel copyWith({
    String? junioragenti,
    String? seven,
    String? tf,
    String? one,
    String? two,
    String? id,
  }) {
    return ListjunioragentItemModel(
      junioragenti: junioragenti ?? this.junioragenti,
      seven: seven ?? this.seven,
      tf: tf ?? this.tf,
      one: one ?? this.one,
      two: two ?? this.two,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [junioragenti, seven, tf, one, two, id];
}

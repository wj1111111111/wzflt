import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [gridqualifiedbo_item_widget] screen.

// ignore_for_file: must_be_immutable
class GridqualifiedboItemModel extends Equatable {
  GridqualifiedboItemModel({this.qualifiedbonus, this.price, this.id}) {
    qualifiedbonus = qualifiedbonus ?? "lbl_qualified_bonus".tr;
    price = price ?? "lbl_168".tr;
    id = id ?? "";
  }

  String? qualifiedbonus;

  String? price;

  String? id;

  GridqualifiedboItemModel copyWith({
    String? qualifiedbonus,
    String? price,
    String? id,
  }) {
    return GridqualifiedboItemModel(
      qualifiedbonus: qualifiedbonus ?? this.qualifiedbonus,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [qualifiedbonus, price, id];
}
